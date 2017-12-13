FactoryBot.define do
  factory :answer do
    response     { FFaker::Lorem.sentence }
    question
    user
  end
end
