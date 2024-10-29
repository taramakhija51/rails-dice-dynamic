Rails.application.routes.draw do
  get("/dice/:number_of_dice/:how_many_sides", {:controller => "zebra", :action => "roll"})

    
  get("/", {:controller => "zebra", :action => "homepage"})
  
end
