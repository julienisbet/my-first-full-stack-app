get '/decks/:id' do
  @card_id = Deck.find(params[:id]).cards.first.id
  redirect "cards/#{@card_id}"
end


