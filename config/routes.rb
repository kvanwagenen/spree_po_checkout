Spree::Core::Engine.routes.draw do
  namespace :admin do
    # Using :only here so it doesn't redraw those routes
    resources :orders, :only => [] do
      resources :payments, :only => [] do
        member do
          put 'po_paid'
        end
      end
    end
  end
end
