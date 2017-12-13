class Question < ApplicationRecord
  belongs_to :user

  validates :ask, :user, presence: true

  scope :accessible, -> { where(private: [false, nil]) }

  def as_json(options={})
    super(
          root: true,
          only: [:id, :ask],
          include: {
                     user: { only: :name }
                  }
      )
  end
end
