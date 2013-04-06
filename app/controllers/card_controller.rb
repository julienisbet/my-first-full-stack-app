get '/cards/:id' do
  @card = Card.find(params[:id])
  @deck = @card.deck
  erb :'cards/show'
end

post '/cards/:id' do
  @next_card = (params[:id].to_i + 1)
  @card = Card.find(params[:id])
  @deck = @card.deck
  @guess = Guess.create(:input=>params[:guess])
  @card.guesses << @guess
  @guess.input == @card.back ? @guess.correct = true : @guess.correct = false
  @guess.save
  erb :'cards/show'
end
