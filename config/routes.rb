Naturesoft::Newsletters::Engine.routes.draw do
  namespace :admin, module: "admin" do
    resources :newsletters
  end
end