Rails.application.routes.draw do
  get '/amount_seg', to: 'home#amount_seg', as: 'amount_seg'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
