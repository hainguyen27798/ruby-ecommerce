namespace :api do
  namespace :v1 do
    resources :categories, only: [ :index, :show, :create, :update, :destroy ]
    resources :products, only: [ :index, :show, :create, :update, :destroy ]
  end
end
