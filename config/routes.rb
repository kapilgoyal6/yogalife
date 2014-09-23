Yogalife::Application.routes.draw do


devise_for :yogas, :controllers => { :omniauth_callbacks => "yogas/omniauth_callbacks" }

get 'sort_by(/:id)', :controller => 'events',  :action => 'sort_by'
get 'category(/:id)', :controller => 'events',  :action => 'category'
  # get "events/sort_by"

#   get "log_out" => "sessions#destroy", :as => "log_out"
# get "log_in" => "sessions#new", :as => "log_in"
# get "sign_up" => "users#new", :as => "sign_up"

# get "log_out" => "sessions#destroy", :as => "log_out"
# get "admin/login" => "sessions#new", :as => "log_in"
# get "sign_up" => "users#new", :as => "sign_up"


get "log_out" => "sessions#destroy", :as => "log_out"
# get "admin/login" => "admin#new", :as => "log_in"

get 'admin/login', :controller => 'admin',  :action => 'show'
post '/admin', :controller => 'admin',  :action => 'admin'

# root :to => "users#new"
# resources :users
#resources :sessions


  # get "sessions/new"
  # get "users/new"
  # match '/controller_name(/:year(/:month))' => 'controller_name#index', :as => :controller_name, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  # mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :subscribers

  resources :manage_articles

  resources :cms

  mount Ckeditor::Engine => '/ckeditor'
  get "green/index"
  get "green/living_green"
  get "green/planet_earth"

  get "retreat/index"
  get "retreat/international"
  get "retreat/local"

  get "glow/index"
  get "glow/reviews"
  get "glow/haircare"
  get "glow/skincare"

  get "heal/index"
  get "heal/spirit"
  get "heal/mind"
  get "heal/body"

  get "nourish/index"
  get "nourish/restaurants_and_cafes"
  get "nourish/recipes"
  get "nourish/nutrition"

  get "pose/index"
  get "pose/pranayama"
  get "pose/community"
  get "pose/asanas_and_sequences"
  get "pose/pilates"
  get "pose/yoga"

  get "search_results/index"
  get "search_results/searchbox"

  # get '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  get "home/index"

  get "/mag" => 'home#mag'
  get "/contact" => 'home#contact'
  get "/events" => 'home#events'
  get "/directory" => 'home#directory'
  get "/horos" => 'home#horos'
  get "/news" => 'home#news'
  get "/viewnews/:id" => 'home#viewnews'
  get "/about" => 'home#about'
  get "/team" => 'home#team'
  get "/where_to_buy" => 'home#where_to_buy'
  get "/article" => 'home#article'

get 'viewnews(/:id)', :controller => 'home',  :action => 'viewnews'

get 'eventdetail(/:id)', :controller => 'home',  :action => 'eventdetail'
get 'events(/:id)', :controller => 'home',  :action => 'event'

get 'viewpose(/:id)', :controller => 'home',  :action => 'viewpose'
get 'viewnourish(/:id)', :controller => 'home',  :action => 'viewnourish'
get 'viewheal(/:id)', :controller => 'home',  :action => 'viewheal'
get 'viewglow(/:id)', :controller => 'home',  :action => 'viewglow'
get 'viewretreat(/:id)', :controller => 'home',  :action => 'viewretreat'
get 'viewgreen(/:id)', :controller => 'home',  :action => 'viewgreen'
get 'viewmagazine(/:id)', :controller => 'home',  :action => 'viewmagazine'
get 'viewarticle(/:id)', :controller => 'home',  :action => 'viewarticle'



  resources :magazines

  resources :manage_follow_us

  resources :manage_advertisements

  resources :manage_greens

  resources :manage_retreats

  resources :manage_glows

  resources :manage_nourishes

  resources :manage_heals

  resources :manage_directories

  resources :banners

  resources :manage_teams

  resources :manage_events

  resources :manage_poses

  resources :manage_news

  # resources :horoscopes, :defaults => {:format => :json}

  resources :horoscopes

  resources :cities

  resources :countries

  resources :wheretobuys

  resources :subcategories

  resources :admin

  resource :admin



  # get "admin" => "sessions#new", :as => "log_i"




  resources :home


  root "home#index"
  # get "admin/dashboard"

  # post "horoscopes/uploadFile"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  # get '*rest' => "home#routing"
end
