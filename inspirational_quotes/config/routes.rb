Rails.application.routes.draw do
  resources :quotes
end

# ROUTES
#     Prefix Verb   URI Pattern                Controller#Action
#     quotes GET    /quotes(.:format)          quotes#index
#            POST   /quotes(.:format)          quotes#create
#  new_quote GET    /quotes/new(.:format)      quotes#new
# edit_quote GET    /quotes/:id/edit(.:format) quotes#edit
#      quote GET    /quotes/:id(.:format)      quotes#show
#            PATCH  /quotes/:id(.:format)      quotes#update
#            PUT    /quotes/:id(.:format)      quotes#update
#            DELETE /quotes/:id(.:format)      quotes#destroy
