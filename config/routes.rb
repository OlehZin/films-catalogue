Rails.application.routes.default_url_options[:host] = "XXX"
#!!!!!!!!for mailcather
Rails.application.routes.draw do
  root to: 'films#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
