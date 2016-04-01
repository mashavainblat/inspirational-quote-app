Rails.application.routes.draw do
  resources :quotes

  #resources asks for quotes/:id/json when member was made
  #singular resource allows quotes/json
  resource :quotes do
  	get :json, on: :member
  end
  root "quotes#index"

  get "new_quote" => "quotes#new_quote"
end

# ROUTES
#      Prefix Verb   URI Pattern                Controller#Action
#      quotes GET    /quotes(.:format)          quotes#index
#             POST   /quotes(.:format)          quotes#create
#   new_quote GET    /quotes/new(.:format)      quotes#new
#  edit_quote GET    /quotes/:id/edit(.:format) quotes#edit
#       quote GET    /quotes/:id(.:format)      quotes#show
#             PATCH  /quotes/:id(.:format)      quotes#update
#             PUT    /quotes/:id(.:format)      quotes#update
#             DELETE /quotes/:id(.:format)      quotes#destroy
# json_quotes GET    /quotes/json(.:format)     quotes#json
#             POST   /quotes(.:format)          quotes#create
#  new_quotes GET    /quotes/new(.:format)      quotes#new
# edit_quotes GET    /quotes/edit(.:format)     quotes#edit
#             GET    /quotes(.:format)          quotes#show
#             PATCH  /quotes(.:format)          quotes#update
#             PUT    /quotes(.:format)          quotes#update
#             DELETE /quotes(.:format)          quotes#destroy
#        root GET    /                          quotes#index
#             GET    /new_quote(.:format)       quotes#new_quote