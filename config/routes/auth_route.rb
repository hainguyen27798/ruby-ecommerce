scope :auth do
  post :login, to: "auth#login"
end
