FactoryBot.define do
  factory :taskAssignment do
    finished_at { "2019-10-20 06:28:20" }
    finished { 1 }
    user_project_id { rand(1...10) }
    task_id { rand(1...9) }
  end
end
