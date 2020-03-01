Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/fortune" => "pages#fortune_action"
    get "/lotto" => "pages#lotto"
    get "/99_bottles" => "pages#too_many_beers"
  end
end
