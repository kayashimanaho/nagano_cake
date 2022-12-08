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
  
  namespace :admin do
    root to:"homes#top"
    get 'order_details/update'
    resources :orders, only:[:show, :update]
    resources :customers, only:[:index, :create, :edit, :update]
    resources :genres, only:[:index, :create, :edit, :update]
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
  end
  
  
    resources :addresses, only:[:index, :edit, :create, :update, :destroy]
    resources :orders, only:[:new, :create, :index, :show]
    get 'orders/comfirm'
    get 'orders/complete'
    resources :customers, only:[:show, :edit, :update]
    get 'customers/unsubscribe'
    get 'customers/withdraw'
    resources :items, only:[:index, :show]
    get 'homes/top'
    get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
