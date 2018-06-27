Rails.application.routes.draw do
  get 'cars/index'
  get 'cars/accelerate'
  get 'cars/status'
  get 'cars/create'
  get 'cars/brake'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
