Rails.application.routes.draw do
  get 'tf/create'
  get 'stopword/index'
  get 'citation_source/index'
  get 'tfidf_text/index'
  get 'tfidf_text/create'
  
  devise_for :users
	resources :first_document
	resources :home, only: [:index, :faq]
	
	get "/faq", to: 'home#faq'
	resources :second_document
	resources :profiles
	
	resources :first_document, only: [:index, :new, :create, :destroy]
	
	resources :citation

	resources :citation_source
	
	resources :stopword
	
	resources :tf, only: [:new, :create]
	
	resources :tfidf_text do
		member do
			get 'analysis'
		end

	end
	root to: 'tfidf_text#index'

	post '/tfidf_text', to: 'tfidf_text#create', as: 'tfidf_texts'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
