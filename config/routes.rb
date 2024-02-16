Rails.application.routes.draw do
 get("/",{:controller =>"users", :action =>"homepage"})
get("/users",{:controller =>"users", :action =>"index"})
get("/users/:path_username",{:controller =>"users", :action =>"show"})
post("/insert_user", {:controller => "users", :action =>"create"})
post("/modify_username/:path_id",{:controller =>"users", :action=>"update"})


get("/photos",{:controller =>"photos", :action =>"index"})
get("/photos/:photo_id",{:controller =>"photos", :action =>"show"})
get("/delete_photo/:toast_id",{:controller => "photos", :action => "destroy" })
post("/insert_photo", { :controller => "photos", :action => "create" })
post("/update_photo/:modify_id", { :controller => "photos", :action => "update" })

post("/add_comment",{:controller =>"photos", :action => "add_comment"})
end
