Rails.application.routes.draw do
  root to: 'chemical_element#index', to: redirect('/chemical_element')
  resources :chemical_element, :only => [:index, :show]
end
