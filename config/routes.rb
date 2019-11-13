Rails.application.routes.draw do
  resources :employees
  devise_for :admins, skip: [:registrations]
  as :admin do
    get "/sign_in" => "devise/sessions#new"
    get "admins/sign_up" => "devise/sessions#new", as: "new_admin_registration"
    get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
  end

  root to: "employees#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
