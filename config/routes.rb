Issues::Application.routes.draw do
  resources :issues

  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/logout' => 'sessions#destroy', :as => :logout

  root :to => "issues#index"
end
