Comicbin::Application.routes.draw do

  root "comics#index"

  resources :comics

end
