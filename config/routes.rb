Rails.application.routes.draw do

get("/users",{:controller =>"users", :action =>"index"})
get("/users/:path_username",{:controller =>"users", :action =>"show"})
post("/insert_user", { :controller => "users", :action => "create" })

get("/photos",{:controller =>"photos", :action =>"index"})
end
