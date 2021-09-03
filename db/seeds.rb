require 'csv'

#create dummy decks
deck1 = Deck.create(:deck_type=>"States and Capitals")
deck2 = Deck.create(:deck_type=>"Basic Math")
deck3 = Deck.create(:deck_type=> "State Abbreviations")

card5 = Card.create(:front=>"2+2", :back=>"4")
card6 = Card.create(:front=>"2x2", :back=>"4")
card7 = Card.create(:front=>"PI", :back=>"3.14159265359")

deck2.cards=[card5, card6, card7]


csv = File.expand_path('./db/states.csv')

CSV.foreach(csv, {:headers => true}) do |row|
  deck3.cards << Card.create(:front=>row[0], :back=>row[1])
end 


