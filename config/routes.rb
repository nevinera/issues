Issues::Application.routes.draw do
  resources :users

  root :to => "Users#index"
end
