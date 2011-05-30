Rails.application.routes.draw do
  get '/manage' => 'manage/back#main'
end