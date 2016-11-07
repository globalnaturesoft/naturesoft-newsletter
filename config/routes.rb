Naturesoft::Newsletters::Engine.routes.draw do
  namespace :backend, module: "backend", path: "backend/newsletters" do
    resources :newsletters do
      collection do
        delete 'delete'
      end
    end
  end
end