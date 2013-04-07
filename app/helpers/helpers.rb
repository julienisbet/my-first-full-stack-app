helpers do

  def current_user
    if not @user
      @user = User.find(session[:id])
    end 
      @user
  end

end
