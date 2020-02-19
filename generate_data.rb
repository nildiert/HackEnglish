require './config/environment'

#Create role
role_1 = Role.create(:title => "student")
role_2 = Role.create(:title => "admin")

#create levels
level_1 = Level.create(:title => "A1 - Elementary English Course", :description => "In this course you will: Learn how to form important verbs., Talk about daily routine.")

#create Achievemnets
Achievements_list = FactoryBot.create_list(:achievement, 5)



#Create main user
ferney = User.create(:email => "mail", :password => "p", :first_name => "Ferney",
                     :last_name => "Medina", :profile_pic => "https://avatars3.githubusercontent.com/u/23217833?s=460&v=4",
                     :description => "guasamayetear", :score => 20, :role_id => 1, :auth_token => "my_token")
#Other users
user_list = FactoryBot.create_list(:user, 4, role: role_1)


#Create projects
projects = FactoryBot.create_list(:project, 3, level: level_1)



#create concepts
concepts_project_1 = FactoryBot.create_list(:concept, 5, project: projects[0])
concepts_project_2 = FactoryBot.create_list(:concept, 5, project: projects[1])
concepts_project_3 = FactoryBot.create_list(:concept, 5, project: projects[2])



#create tasks
tasks_project_1 = FactoryBot.create_list(:task, 5, project: projects[0])
tasks_project_2 = FactoryBot.create_list(:task, 5, project: projects[1])
tasks_project_3 = FactoryBot.create_list(:task, 5, project: projects[2])

#create checks
tasks_project_1_checks_1 = FactoryBot.create_list(:check, 3, task: tasks_project_1[0])
tasks_project_1_checks_2 = FactoryBot.create_list(:check, 3, task: tasks_project_1[1])
tasks_project_1_checks_3 = FactoryBot.create_list(:check, 3, task: tasks_project_1[2])
tasks_project_1_checks_4 = FactoryBot.create_list(:check, 3, task: tasks_project_1[3])
tasks_project_1_checks_5 = FactoryBot.create_list(:check, 3, task: tasks_project_1[4])

tasks_project_2_checks_1 = FactoryBot.create_list(:check, 3, task: tasks_project_2[0])
tasks_project_2_checks_2 = FactoryBot.create_list(:check, 3, task: tasks_project_2[1])
tasks_project_2_checks_3 = FactoryBot.create_list(:check, 3, task: tasks_project_2[2])
tasks_project_2_checks_4 = FactoryBot.create_list(:check, 3, task: tasks_project_2[3])
tasks_project_2_checks_5 = FactoryBot.create_list(:check, 3, task: tasks_project_2[4])

tasks_project_3_checks_1 = FactoryBot.create_list(:check, 3, task: tasks_project_3[0])
tasks_project_3_checks_2 = FactoryBot.create_list(:check, 3, task: tasks_project_3[1])
tasks_project_3_checks_3 = FactoryBot.create_list(:check, 3, task: tasks_project_3[2])
tasks_project_3_checks_4 = FactoryBot.create_list(:check, 3, task: tasks_project_3[3])
tasks_project_3_checks_5 = FactoryBot.create_list(:check, 3, task: tasks_project_3[4])


#create userAchievement
user_ferney_Achievement_1 = FactoryBot.create(:userAchievement, user: ferney, achievement: Achievements_list[0])
user_ferney_Achievement_2 = FactoryBot.create(:userAchievement, user: ferney, achievement: Achievements_list[1])
user_ferney_Achievement_3 = FactoryBot.create(:userAchievement, user: ferney, achievement: Achievements_list[2])

user_1_Achievement_1 = FactoryBot.create(:userAchievement, user: user_list[0], achievement: Achievements_list[0])
user_1_Achievement_2 = FactoryBot.create(:userAchievement, user: user_list[0], achievement: Achievements_list[1])
#user_1_Achievement_3 = FactoryBot.create(:userAchievement, user: user_list[0], achievement: Achievements_list[2])

user_2_Achievement_1 = FactoryBot.create(:userAchievement, user: user_list[1], achievement: Achievements_list[0])
#user_2_Achievement_2 = FactoryBot.create(:userAchievement, user: user_list[0], achievement: Achievements_list[1])
#user_2_Achievement_3 = FactoryBot.create(:userAchievement, user: user_list[0], achievement: Achievements_list[2])

user_3_Achievement_1 = FactoryBot.create(:userAchievement, user: user_list[2], achievement: Achievements_list[0])
user_3_Achievement_2 = FactoryBot.create(:userAchievement, user: user_list[2], achievement: Achievements_list[1])
user_3_Achievement_3 = FactoryBot.create(:userAchievement, user: user_list[2], achievement: Achievements_list[2])

#user_4_Achievement_1 = FactoryBot.create(:userAchievement, user: user_list[3], achievement: Achievements_list[0])
#user_4_Achievement_2 = FactoryBot.create(:userAchievement, user: user_list[3], achievement: Achievements_list[1])
#user_4_Achievement_3 = FactoryBot.create(:userAchievement, user: user_list[3], achievement: Achievements_list[2])


#create UserProjects
user_ferney_project_1 = FactoryBot.create(:userProject, user: ferney, project: projects[0])
user_ferney_project_2 = FactoryBot.create(:userProject, user: ferney, project: projects[1])
user_ferney_project_3 = FactoryBot.create(:userProject, user: ferney, project: projects[2])

user_1_project_1 = FactoryBot.create(:userProject, user: user_list[0], project: projects[0])
user_1_project_2 = FactoryBot.create(:userProject, user: user_list[0], project: projects[1])
#user_1_project_3 = FactoryBot.create(:userProject, user: user_list[0], project: projects[2])

user_2_project_1 = FactoryBot.create(:userProject, user: user_list[1], project: projects[0])
#user_2_project_2 = FactoryBot.create(:userProject, user: user_list[1], project: projects[1])
#user_2_project_3 = FactoryBot.create(:userProject, user: user_list[1], project: projects[2])

user_3_project_1 = FactoryBot.create(:userProject, user: user_list[2], project: projects[0])
user_3_project_2 = FactoryBot.create(:userProject, user: user_list[2], project: projects[1])
user_3_project_3 = FactoryBot.create(:userProject, user: user_list[2], project: projects[2])

#user_4_project_1 = FactoryBot.create(:userProject, user: user_list[3], project: projects[0])
#user_4_project_2 = FactoryBot.create(:userProject, user: user_list[3], project: projects[1])
#user_4_project_3 = FactoryBot.create(:userProject, user: user_list[3], project: projects[2])


#create TaskAssignments
taskAssignments_userProject_1_tasks_1 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_1, task: tasks_project_1[0])
taskAssignments_userProject_1_tasks_2 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_1, task: tasks_project_1[1])
taskAssignments_userProject_1_tasks_3 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_1, task: tasks_project_1[2])
taskAssignments_userProject_1_tasks_4 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_1, task: tasks_project_1[3])
taskAssignments_userProject_1_tasks_5 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_1, task: tasks_project_1[4])

taskAssignments_userProject_2_tasks_1 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_2, task: tasks_project_2[0])
taskAssignments_userProject_2_tasks_2 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_2, task: tasks_project_2[1])
taskAssignments_userProject_2_tasks_3 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_2, task: tasks_project_2[2])
taskAssignments_userProject_2_tasks_4 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_2, task: tasks_project_2[3])
taskAssignments_userProject_2_tasks_5 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_2, task: tasks_project_2[4])

taskAssignments_userProject_2_tasks_1 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_3, task: tasks_project_3[0])
taskAssignments_userProject_2_tasks_2 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_3, task: tasks_project_3[1])
taskAssignments_userProject_2_tasks_3 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_3, task: tasks_project_3[2])
taskAssignments_userProject_2_tasks_4 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_3, task: tasks_project_3[3])
taskAssignments_userProject_2_tasks_5 = FactoryBot.create(:taskAssignment, user_project: user_ferney_project_3, task: tasks_project_3[4])

#create checkTaskAssignments
checkTaskAssignments_taskAssignments_1_checks_1 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_1, check: tasks_project_1_checks_1[0])
checkTaskAssignments_taskAssignments_1_checks_2 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_1, check: tasks_project_1_checks_1[1])
checkTaskAssignments_taskAssignments_1_checks_3 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_1, check: tasks_project_1_checks_1[2])

checkTaskAssignments_taskAssignments_2_checks_1 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_2, check: tasks_project_1_checks_2[0])
checkTaskAssignments_taskAssignments_2_checks_2 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_2, check: tasks_project_1_checks_2[1])
checkTaskAssignments_taskAssignments_2_checks_3 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_2, check: tasks_project_1_checks_2[2])

checkTaskAssignments_taskAssignments_3_checks_1 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_3, check: tasks_project_1_checks_3[0])
checkTaskAssignments_taskAssignments_3_checks_2 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_3, check: tasks_project_1_checks_3[1])
checkTaskAssignments_taskAssignments_3_checks_3 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_3, check: tasks_project_1_checks_3[2])

checkTaskAssignments_taskAssignments_4_checks_1 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_4, check: tasks_project_1_checks_4[0])
checkTaskAssignments_taskAssignments_4_checks_2 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_4, check: tasks_project_1_checks_4[1])
checkTaskAssignments_taskAssignments_4_checks_3 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_4, check: tasks_project_1_checks_4[2])

checkTaskAssignments_taskAssignments_5_checks_1 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_5, check: tasks_project_1_checks_5[0])
checkTaskAssignments_taskAssignments_5_checks_2 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_5, check: tasks_project_1_checks_5[1])
checkTaskAssignments_taskAssignments_5_checks_3 = FactoryBot.create(:checkTaskAssignment, task_assignment: taskAssignments_userProject_1_tasks_5, check: tasks_project_1_checks_5[2])





