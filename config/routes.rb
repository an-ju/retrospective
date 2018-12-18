Rails.application.routes.draw do
  resources :action_items
  resources :wastes do
    collection do
      get ':waste_type/reflect', to: 'wastes#reflect', as: 'reflect'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
