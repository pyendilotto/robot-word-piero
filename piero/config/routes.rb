Rails.application.routes.draw do
  get '/makes_car', to: 'makes_car#makes'
  get '/detect_deffects', to: 'detect_deffects#detect'
end
