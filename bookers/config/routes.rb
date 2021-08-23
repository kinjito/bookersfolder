Rails.application.routes.draw do
  resources :books
  root to: 'homes#top'
  # get '/', to: 'homes#top'
  
end
