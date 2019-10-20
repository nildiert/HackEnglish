#!/bin/bash

rails g model role title:string status:integer
rails g model achievement project_id:integer status:integer name:string description:string achievement_pic:string points:integer
rails g model level status:integer title description

rails g model project status:integer name description position:integer level:references
rails g model task status:integer title description exercise position:integer project:references
rails g model check status:integer title answer position:integer task:references
rails g model user status:integer email password first_name last_name profile_pic description score:integer auth_token role:references

rails g model concept status:integer title link position:integer project:references
rails g model user_achievement user:references achievement:references
rails g model user_project finished_at:datetime finished:integer user:references project:references
rails g model task_assignment finished_at:datetime finished:integer user_project:references task:references
rails g model check_task_assignment finished_at:datetime finished:integer task_assignment:references check:references
