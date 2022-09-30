Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get('birds',to:"birds#index") #This follows the restful convention for routes for resources
  # get('birds/:id',to:"birds#show") #Show is the agreed upon controller action for displaying information about a single bird.Index is agreed for fetching all of the birds.
  #Since this is agreed upon convention for routing, Rails already has code written out for this and can be genrated using a macro for all the 5 basic routes

  resources(:birds,only: [:index, :show]) 
  #Resources is a macro that creates the restful routes for us in rails using the restfule conevention.
  #The macro takes in options and here it taking only with an array specifying controller actions for which we want the routes generated
  #For this case we just want an endpoint to just show all the birds and one bird and thus only get the two routes generated
  #A rule is that only routes that pour API is using should be generated
end
