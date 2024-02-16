class UsersController < ApplicationController
  def create
   username_input = params.fetch("the_username")
    
    new_user = User.new

    new_user.username = username_input
    
    new_user.save

    redirect_to("/users/" + new_user.username)

  end 

  def index
    matching_users = User.all

    @list_of_users = matching_users.order({:username=>:asc})

    render({:template => "user_templates/index"})
  end 

  def show
    #Parameters: {"path_username"=>"anisa"}
    url_username = params.fetch("path_username")

    matching_usernames = User.where({:username => url_username})

    @the_user = matching_usernames.first

    redirect_to({:template=>"user_templates/show"})
  end
end
