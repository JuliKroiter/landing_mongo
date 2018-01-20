Rails.application.routes.draw do
  devise_for :admins, :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  match '/uploads/grid/*other/:id/:filename'=> 'gridfs#serve', via: :get
end
