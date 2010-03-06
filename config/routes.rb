ActionController::Routing::Routes.draw do |map|
  map.resources :page_matchers, :member => { :feed => :get }

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.signup "signup", :controller => "users", :action => "new"
 
  map.resources :user_sessions
  map.resources :users
 
  map.root :page_matchers
 
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
