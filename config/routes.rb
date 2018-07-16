Rails.application.routes.draw do
  root 'battle#index'
  post 'result', to: 'battle#result'

  resources :top, only: %i[index]
  resource :chat_rooms, only: %i[new create show]

  mount ActionCable.server => '/cable'
end
