Rails.application.routes.draw do
  resources :posts
  #get 'sessions/create'

  #get 'sessions/destory'
  resources :sessions, only: [:new, :create, :destory]
    
  get 'signup', to: 'userinfos#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'    
    
    
  resources :userinfos
  #resources :users
  #get 'sessions/new'

  #get 'sessions/create'

  #get 'applicants/new'

  #get 'applicants/create'

    #for create users
  #post 'applicants/create'

  #post 'sessions/create'
    
  #get 'welcome/index'

  resources :articles do
      resources :comments
  end
  
  
  root 'articles#index'	#show hello rail
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
