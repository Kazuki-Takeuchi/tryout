Rails.application.routes.draw do
  resources :blogs do
    resources :entries, :except => [:index] do
      resources :comments, :except => [:index, :edit, :show, :update, :new] do
        post 'approve', :on => :member
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
