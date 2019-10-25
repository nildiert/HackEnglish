FactoryBot.define do
  factory :checkTaskAssignment do
    finished_at { "2019-10-20 06:28:31" }
    finished { 1 }
    task_assignment_id { rand(1...50) }
    check_id { rand(1...200) }
  end
end
