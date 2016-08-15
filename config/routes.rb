Naturesoft::Newsletters::Engine.routes.draw do
  namespace :admin, module: "admin", path: "admin/newsletters" do
    resources :newsletters do
      collection do
        delete 'delete'
      end
    end
  end
end