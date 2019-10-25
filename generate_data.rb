require './config/environment'

#Create role
rol_1 = Role.create(:title => "student")
rol_2 = Role.create(:title => "admin")

#create levels
level_1 = Level.create(:title => "A1", :description => "Elementary English Course")

#create Achievemnets
Achievements_list = FactoryBot.create_list(:achievement, 10)

#Create user test
ferney = User.create(:email => "mail", :password => "p", :first_name => "Ferney",
                     :last_name => "Medina", :profile_pic => "https://avatars3.githubusercontent.com/u/23217833?s=460&v=4",
                     :description => "guasamayetear", :score => 20, :role_id => 1)
#Other users
user_list = FactoryBot.create_list(:user, 4)

#Create projects
projects = FactoryBot.create_list(:project, 3)

#create concepts
concepts = FactoryBot.create_list(:concept, 15)

#create tasks
tasks = FactoryBot.create_list(:task, 9)

#create checks
checks = FactoryBot.create_list(:check, 45)



#create userAchievement
userAchievements = FactoryBot.create_list(:userAchievement, 20)

#create UserProjects
userProjects = FactoryBot.create_list(:userProject, 10)

#create TaskAssignments
taskAssignments = FactoryBot.create_list(:taskAssignment, 50)

#create checkTaskAssignments
checkTaskAssignments = FactoryBot.create_list(:checkTaskAssignment, 200)
#create 


