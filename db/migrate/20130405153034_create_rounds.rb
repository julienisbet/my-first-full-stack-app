class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.references :deck, :user
      t.timestamps
    end
  end
end
