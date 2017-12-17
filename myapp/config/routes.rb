Rails.application.routes.draw do
  resources :comments, except: [:index, :show, :edit]
  resources :entries , except: [:index, :show, :edit] do
    resources :comments
  end
  resources :blogs do
    resources :entries do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
