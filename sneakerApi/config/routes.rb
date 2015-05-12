<<<<<<< HEAD

  require 'api_constraints'

SneaKerApi::Application.routes.draw do


  # Api definition
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/'  do
    scope module: :v1 do

    end
  end
end


=======
Rails.application.routes.draw do
 
  namespace :api do 
    namespace :v1 do
      resources :sneakers
      resources :brands
      resources :stores
    end
  end
end
>>>>>>> 87c2e4f75f07e300166899ee2dd3da57ef99fe1b
