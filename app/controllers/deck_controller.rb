get '/rounds/new/' do
  @deck = Deck.find(params[:deck])
  @card_id = @deck.cards.first.id
  current_user
  @round = Round.create()
  @round.user_id = @user.id
  @round.deck_id = @deck.id
  @round.save
  session[:round] = @round.id
  redirect "cards/#{@card_id}"
end

# get '/decks/:id' do
#   @card_id = Deck.find(params[:id]).cards.first.id
#   current_user
#   @round = Round.create()
#   @round.user_id = @user.id
# end


