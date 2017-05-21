Rails.application.routes.draw do
  root 'welcome#index'

  scope module: :api do
    resources :tacos, only: [:index, :create, :destroy]
  end

end
