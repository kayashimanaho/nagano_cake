Rails.application.routes.draw do
  
# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
    scope module: :public do
      root to:"homes#top"
      get "/about" => "homes#about", as: "about"
      get 'customers/unsubscribe'
      get 'customers/withdraw'
      get '/customers/my_page' => 'customers#show'
      get 'orders/complete'
      get 'orders/comfirm'
      resources :items, only:[:index, :show]
      resources :customers, only:[:show, :edit, :update]
      resources :addresses, only:[:index, :edit, :create, :update, :destroy]
      resources :orders, only:[:new, :create, :index, :show]
    end
  
  namespace :admin do
    root to:"homes#top"
    get 'order_details/update'
    resources :orders, only:[:show, :update]
    resources :customers, only:[:index, :create, :edit, :update]
    resources :genres, only:[:index, :create, :edit, :update]
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
