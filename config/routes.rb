Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :articles do
    resources :comments
  end

end
