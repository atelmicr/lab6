Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'
  get 'main/destroy_db'
  get 'main/output'
  get 'main/output_xml'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
