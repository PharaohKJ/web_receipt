Rails.application.routes.draw do
  resources :batch_files
  resources :receipts
  get '/download/:uuid', to: 'download#uuid', as: 'download'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
