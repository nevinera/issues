Issues::Application.routes.draw do
  resources :projects

  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/logout' => 'sessions#destroy', :as => :logout

  root :to => "projects#index"
end
