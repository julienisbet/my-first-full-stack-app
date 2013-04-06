enable :sessions

get '/' do
  erb :index
end


post '/sessions' do

  @user = User.find_by_email(params[:user][:email])

  if @user
    if @user.password == params[:user][:password]
      session[:id] = @user.id
      erb :profile  
    else
      @error = "Invalid email or password"
    end
  end

end

delete '/sessions' do
  session.clear

end





get '/signup' do
  erb :signup
end



post '/signup' do
  @user = User.create(params[:user])

  erb :profile
end





# post '/profile' do
#     @user = User.find(params[:id])
#     puts params.inspect
  
#   erb :profile
# end
