enable :sessions

get '/' do
  erb :profile
end

get '/sessions' do
  current_user
  erb :profile
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
  session[:id] = @user.id
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end
