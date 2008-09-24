ActionController::Routing::Routes.draw do |map|
  map.resources :gift_exchanges

  map.connect ':controller/service.wsdl', :action => 'wsdl'
  map.connect '', :controller => 'login', :action => 'login' 
  map.resources :view_gift_list, :collection => {:purchased => :put}
  # Install the default route as the lowest priority.
  map.connect ':controller/:action/:id'
end
