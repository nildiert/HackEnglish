require './config/environment'

#Create role
rol_1 = Role.create(:title => "student")

#Create user

ferney = User.create(:email => "ferney_email", :password => "p", :first_name => "Ferney",
    :last_name => "Jimenez", :profile_pic => "", :description => "guasamayetear", :score => 20, :role_id => 1)

