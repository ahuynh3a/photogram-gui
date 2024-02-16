class UsersController < ApplicationController

  def update
    user_id = params.fetch("path_id")
    new_username = params.fetch("username_input")

    matching_user = User.where(:id => user_id)

    the_user = matching_user.at(0)

    the_user.username = new_username

    the_user.save

    redirect_to("/users/" + the_user.username)
  end

  
  def create
    username_input = params.fetch("the_username")

    new_user = User.new

    new_user.username = username_input

    new_user.save

    redirect_to("/users/"+ new_user.username)
  end


  def index
    matching_users = User.all

    @list_of_users = matching_users.order({:username=>:asc})

    render({:template => "user_templates/index"})
  end 

  def homepage
    matching_users = User.all

    @list_of_users = matching_users.order({:username=>:asc})
    
    render({:template => "user_templates/index"})
  end

  def show
    #Parameters: {"path_username"=>"anisa"}
    url_username = params.fetch("path_username")

    matching_usernames = User.where({:username => url_username})

    @the_user = matching_usernames.first

    render({:template=>"user_templates/show"})
  end
end
