Dummy::Application.routes.draw do
  root :to => 'front_demo#show'
  
  namespace :manage do
    get  '/notifications_demo' => 'back_demo#notifications_demo'
    get  '/confirmation_demo'  => 'back_demo#confirmation_demo'
    post '/confirm_demo'       => 'back_demo#confirm_demo'
  end
end
