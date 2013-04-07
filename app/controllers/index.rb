get '/' do
  @hide = true
  # Look in app/views/index.erb
  erb :index
end
