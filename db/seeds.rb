#create dummy decks
deck1 = Deck.create(:deck_type=>"States and Capitals")
deck2 = Deck.create(:deck_type=>"Basic Math")

card1 = Card.create(:front=>"California", :back=>"Sacramento")
card2 = Card.create(:front=>"North Carolina", :back=>"Raleigh")
card3 = Card.create(:front=>"New York", :back=>"Albany")
card4 = Card.create(:front=>"Texas", :back=>"Austin")
card5 = Card.create(:front=>"2+2", :back=>"4")
card6 = Card.create(:front=>"2x2", :back=>"4")
card7 = Card.create(:front=>"PI", :back=>"3.14159265359")

deck1.cards=[card1, card2, card3, card4]
deck2.cards=[card5, card6, card7]
