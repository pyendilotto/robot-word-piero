Rails.application.routes.draw do
  get '/makes_car', to: 'makes_car#makes'
  get '/detect_deffects', to: 'detect_deffects#detect'
  get '/move_cars', to: 'move_cars_to_store#move'
  get '/buy_car', to: 'buy_car#buy'
  get '/changes', to: 'generate_changes#changes'
  get '/report', to: 'generate_report#generate'
end
