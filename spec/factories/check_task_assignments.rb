FactoryBot.define do
  factory :checkTaskAssignment do
    finished_at { "2019-10-20 06:28:31" }
    finished { 1 }
    association :task_assignment
    check
  end
end
