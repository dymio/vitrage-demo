Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  Vitrage.routes(self, controller: 'vitrage_pieces')

  resources :pages, only: [:index, :show, :edit, :create]

  root 'welcome#index'
end
