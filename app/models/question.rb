class Question < ApplicationRecord
  belongs_to :user
  has_many :answers

  validates :ask, :user, presence: true

  scope :accessible, -> { where(private: [false, nil]) }

  def as_json(options={})
    super(
          root: true,
          only: [:id, :ask, :answers],
          include: {
                     user: { only: :name },
                     answers: {
                                only: [:id, :response ],
                                include: { user: { only: :name } }
                              }
                  }
      )
  end
end
