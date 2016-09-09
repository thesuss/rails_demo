Rails.application.routes.draw do
  get 'article/index'

  root controller: :landing, action: :index
  resources :articles do
    resources :comments
  end

end
