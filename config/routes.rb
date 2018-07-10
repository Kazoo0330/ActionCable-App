Rails.application.routes.draw do
  root 'battle#index'
  resources :chat_rooms, only: %i[new create show]
  mount ActionCable.server => '/cable'
end
