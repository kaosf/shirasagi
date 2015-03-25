SS::Application.routes.draw do
  gws "schedule" do
    resources :plans do
      get :delete, on: :member
    end
  end

  # WIP
  #gws "reservation" do
  #  resources :plans
  #end

  gws "board" do
    resources :topics do
      resources :comments, only: [:index, :new, :create]
    end
    resources :comments, only: [:show, :edit, :destroy]
  end

  gws "share" do
    resources :files do
      get :view, on: :member
      get :thumb, on: :member
      get :download, on: :member
      get :delete, on: :member
    end
  end
end
