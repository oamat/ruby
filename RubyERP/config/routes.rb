Rails.application.routes.draw do

  scope "(:locale)", :locale => /en|es|ca/ do
                       #:only => [:index, :new, :create, :update, :edit, :destroy, show] , :collection => { :signup => :get, :register => :post }
    resources :profiles, :only => [:index, :new, :create, :update, :destroy, :edit]
    resources :companies, :only => [:new, :create, :edit, :update]
    resources :images
    resources :lines
    resources :deliverynotes
    resources :orders
    resources :forecasts
    resources :invoices
    resources :products
    resources :contacts
    resources :taxes
    resources :discounts
    resources :accounts
    resources :addresses
    resources :clients


    get 'welcome/gestionus'
    get 'welcome/firstaftersignup'

    get 'welcome/index'
    get 'welcome/aftersignin'
    get 'welcome/aftersignout'
    get 'welcome/aftersignup'
    get 'welcome/afterressetingpass'
    get 'welcome/afterupdate'
    get 'welcome/afterinactivesignup'

    get 'welcome/index1'
    get 'welcome/estil'
    get 'welcome/dashboard'
    get 'welcome/edit'
    get 'welcome/factura'
    get 'welcome/linea'


  end

  #Change devise for redirects:
  #devise_for :users
  scope "(:locale)", :locale => /en|es|ca/ do
    devise_for :users, controllers: { registrations: 'users/registrations' , passwords: 'users/passwords'  }
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'welcome#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
