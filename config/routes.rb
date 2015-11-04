PomodoroApp::Application.routes.draw do
  root 'activities#index'

  resources :activities, only: [:create, :destroy]
end
