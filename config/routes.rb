PomodoroApp::Application.routes.draw do
  root 'home#index'

  resources :activities, only: :create
end
