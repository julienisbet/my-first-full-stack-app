get '/cards/:id' do
  @card = Card.find(params[:id])
  @deck = @card.deck
  erb :'cards/show'
end

post '/cards/:id' do
  @card = Card.find(params[:id])
  @deck = @card.deck
  
  #store user guess
  @guess = Guess.create(:input=>params[:guess])
  @card.guesses << @guess
  @guess.input == @card.back ? @guess.correct = true : @guess.correct = false
  @guess.save
  
  #next card logic
  if @card == @deck.cards.last
    redirect 'rounds/1'
  else
    card_index = @deck.cards.index(@card)
    next_index = card_index + 1
    @next_card = @deck.cards[next_index].id
    erb :'cards/show'
  end
end

get '/rounds/:id' do
  erb :'rounds/show'
end


