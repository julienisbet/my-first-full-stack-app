class AddRoundIdToGuess < ActiveRecord::Migration[6.1]
  def change
    add_column :guesses, :round_id, :integer
  end
end
