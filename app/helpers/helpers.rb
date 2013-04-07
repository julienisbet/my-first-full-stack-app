helpers do

  def current_user
    if not @user
      @user = User.find(session[:id])
    end 
      @user
  end
  
  def current_round
    if not @round
      @round = Round.find(session[:round])
    end 
      @round
  end


end
