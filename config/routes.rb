Rails.application.routes.draw do

  devise_for :admins
  resources :users do
    resources :reference_contacts
    resources :offers do
      resources :processors
    end
  end

  get 'cardworks_merrick/:processor_id', to: 'pdf_generator#cardworks_merrick', as: 'cardworks_merrick_form'
  get 'choice_merrick/:processor_id', to: 'pdf_generator#choice_merrick', as: 'choice_merrick_form'
  get 'dps_merchant/:processor_id', to: 'pdf_generator#dps_merchant', as: 'dps_merchant_form'
  get 'emerchant_broker/:processor_id', to: 'pdf_generator#emerchant_broker', as: 'emerchant_broker_form'
  get 'ems_harris/:processor_id', to: 'pdf_generator#ems_harris', as: 'ems_harris_form'
  get 'ems_merchant/:processor_id', to: 'pdf_generator#ems_merchant', as: 'ems_merchant_form'
  get 'ems_merrick/:processor_id', to: 'pdf_generator#ems_merrick', as: 'ems_merrick_form'
  get 'global_merrick/:processor_id', to: 'pdf_generator#global_merrick', as: 'global_merrick_form'
  get 'humbolt_harris/:processor_id', to: 'pdf_generator#humbolt_harris', as: 'humbolt_harris_form'
  get 'll_merchant/:processor_id', to: 'pdf_generator#ll_merchant', as: 'll_merchant_form'
  get 'meritus_woodforest/:processor_id', to: 'pdf_generator#meritus_woodforest', as: 'meritus_woodforest_form'
  get 'national_merchant_association_harris_bank/:processor_id', to: 'pdf_generator#national_merchant_association_harris_bank', as: 'national_merchant_association_harris_bank_form'
  get 'merchant_esolutions/:processor_id', to: 'pdf_generator#merchant_esolutions', as: 'merchant_esolutions_form'
  get 'nmc/:processor_id', to: 'pdf_generator#nmc', as: 'nmc_form'
  get 'paymentworld_esquire/:processor_id', to: 'pdf_generator#paymentworld_esquire', as: 'paymentworld_esquire_form'
  get 'paymentworld_merrick/:processor_id', to: 'pdf_generator#paymentworld_merrick', as: 'paymentworld_merrick_form'
  get 'powerpay/:processor_id', to: 'pdf_generator#powerpay', as: 'powerpay_form'
  get 'vantage_humbolt/:processor_id', to: 'pdf_generator#vantage_humbolt', as: 'vantage_humbolt_form'
  get 'vps_merchant/:processor_id', to: 'pdf_generator#vps_merchant', as: 'vps_merchant_form'
  get 'chesapeake_merrick/:processor_id', to: 'pdf_generator#chesapeake_merrick', as: 'chesapeake_merrick_form'

  root 'users#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
