FactoryBot.define do
  factory :taskAssignment do
    finished_at { "2019-10-20 06:28:20" }
    finished { 1 }
    association :user_project
    task
  end
end
