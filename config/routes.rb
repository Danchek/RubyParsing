Rails.application.routes.draw do
  get '/' => 'parsings#index', :as => :index_root
end
