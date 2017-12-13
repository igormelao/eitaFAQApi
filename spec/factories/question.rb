FactoryBot.define do
  factory :question do
    ask     { FFaker::Lorem.sentence }
    user
  end
end
