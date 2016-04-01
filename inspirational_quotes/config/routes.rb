Rails.application.routes.draw do
  resources :quotes

  resource :quotes do
  	get :json, on: :member
  end
  root "quotes#index"

  get "new_quote" => "quotes#new_quote"
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
#       root GET    /                          quotes#index
#   newQuote GET    /newQuote(.:format)        quotes#newQuote

