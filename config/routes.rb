ApplicationName::Application.routes.draw do
	devise_for :users
	
	resources :sign_in_as
end
