Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  # get '/lists', to: 'lists#index'
  # get '/lists/:id/edit', to: 'lists#edit'
  # patch '/lists/:id', to: 'lists#update'
  # delete '/lists/:id', to: 'lists#destroy'
  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create, :delete]
  end
end
