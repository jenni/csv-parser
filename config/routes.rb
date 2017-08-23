Rails.application.routes.draw do
  resources :parsers
  # setup a route so that Rails can pass the request from your form into your controller
  post 'parsers/upload' => 'parsers/upload'
end
