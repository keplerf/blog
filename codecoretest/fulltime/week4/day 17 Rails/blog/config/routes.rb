Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/home" => "home#index"
  # get "/admin/questions" => "admin/questions#index"
  get "/about" => "home#about", as: :about

  namespace :admin do
    resources :questions

  end

end
