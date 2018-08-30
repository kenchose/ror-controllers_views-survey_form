Rails.application.routes.draw do
  root "users#index"

  post 'results' => 'users#results'

end
