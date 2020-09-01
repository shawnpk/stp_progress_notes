Rails.application.routes.draw do
  resources :progress_notes
  root 'progress_notes#index'
end
