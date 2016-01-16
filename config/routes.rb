Rails.application.routes.draw do

  root 'application#index'
  match '/templates/:template', to: 'application#template', via: [ :get ]
  match '/*path', to: 'application#index', via: [ :get, :post ]

end
