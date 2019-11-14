<a align="center" href="http://hackenglish.me/">
  <img width="850" height="600" src="https://github.com/nildiert/HackEnglish/blob/alejo/images/HackEnglish(1).png">
</a>

#  HackEnglish

## Description

Hack English is a platform that allows you to learn and reinforce your knowledge of English for level A1 of the common European framework.

HackEnglish takes gamification tools and project-based methodology to improve English learning, through challenges, exercises and support from its own community.

## Table Content
* [Landing Page](#Landing-Page)
* [Technologies](#Technologies)
* [Architecture](#Architecture)
* [Models](#Models)
* [Deployment](#Deployment)
* [Controllers and routes](#Controllers-/-routes)
* [Serializers](#Serializers)
* [Commands to install](#Commands-to-install)

### Landing Page
[HackEnglish](http://hackenglish.me/)

 <!--Image here-->
 
### Technologies
<p align="center">
  <img width="210" height="380" src="https://github.com/nildiert/HackEnglish/blob/alejo/images/Technologies_BackEnd.png">
</p>


### Architecture
  [Architecture](https://whimsical.com/XYLFeNrT4x4KFiwoh3jpjC)

### Models
<p align="center">
  <img width="400" height="380" src="https://github.com/nildiert/HackEnglish/blob/alejo/images/Models.jpg">
</p>

### Deployment
<p align="center">
  <img width="370" height="244" src="https://github.com/nildiert/HackEnglish/blob/alejo/images/Development.jpg">
</p>

### Controllers / Routes
File/Folder 	   | HTTP Verb       | Purpose
--------------- | --------------- | -------------
/achievements_controller.rb | GET, POST, PUT, DELETE |
/application_controller.rb | GET, POST, PUT, DELETE |
/check_task_assignments_controller.rb | GET, POST, PUT, DELETE |
/checks_controller.rb | GET, POST, PUT, DELETE |
/concepts_controller.rb | GET, POST, PUT, DELETE |
/health_controller.rb | GET, POST, PUT, DELETE |
/levels_controller.rb | GET, POST, PUT, DELETE |
/projects_controller.rb | GET, POST, PUT, DELETE |
/roles_controller.rb | GET, POST, PUT, DELETE |
/signin_controller.rb | GET, POST, PUT, DELETE |
/signup_controller.rb | GET, POST, PUT, DELETE |
/task_assignments_controller.rb | GET, POST, PUT, DELETE |
/tasks_controller.rb | GET, POST, PUT, DELETE |
/user_achievements_controller.rb | GET, POST, PUT, DELETE |
/user_info_controller.rb | GET, POST, PUT, DELETE |
/user_projects_controller.rb | GET, POST, PUT, DELETE |
/users_controller.rb | GET, POST, PUT, DELETE |


### Serializers
File/Folder 	   |  Purpose
--------------- | -------------
/check_task_assignment_serializer.rb |
/info_complete_user.rb |
/project_serializer.rb |
/task_assignment_serializer.rb |
/user_project_serializer.rb |


### Commands to install

    bundle install
    rails generate rspec:install
