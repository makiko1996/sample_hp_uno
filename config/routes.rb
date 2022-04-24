Rails.application.routes.draw do
  devise_for :admins,skip:[:registrations, :passwords] ,controllers: {
    sessions:"admin/sessions"
  }
  devise_for :customers,skip:[:passwords,], controllers: {
    registrations:"public/registrations",
    sessions:'public/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'homes#top'
  get 'top' => 'homes#top'
end
