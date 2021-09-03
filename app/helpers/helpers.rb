helpers do

  
  def current_user
    if !session[:id].nil?
      @user = User.find(session[:id])
    end 
      @user
  end

  def logged_in?
    !current_user.nil?
  end
  
  def current_round
    if not @round
      @round = Round.find(session[:round])
    end 
      @round
  end


end
