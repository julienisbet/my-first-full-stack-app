class CreateGuesses < ActiveRecord::Migration[6.1]
  def change
    create_table :guesses do |t|
      t.boolean :correct
      t.string  :input
      t.references :card 
    end
  end
end
