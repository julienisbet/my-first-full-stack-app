get '/cards/:id' do
  @card = Card.find(params[:id])
  @deck = @card.deck
  erb :'cards/show'
end

post '/cards/:id' do
  @card = Card.find(params[:id])
  @deck = @card.deck
  
  #store user guess
  @guess = Guess.create(:input=>params[:guess].upcase)
  @card.guesses << @guess
  @guess.input == @card.back ? @guess.correct = true : @guess.correct = false
  @guess.round_id = session[:round]
  @guess.save
  
  #next card logic
  if @card == @deck.cards.last
    @last = true
  else
    card_index = @deck.cards.index(@card)
    next_index = card_index + 1
    @next_card = @deck.cards[next_index].id
  end 
  current_round
  erb :'cards/show'
end


