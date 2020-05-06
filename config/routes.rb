Rails.application.routes.draw do
  resources :planes, only: %i[index show] do
    resources :start, only: %i[create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
