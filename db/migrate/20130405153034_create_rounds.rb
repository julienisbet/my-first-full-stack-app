class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :deck, :user
      t.timestamps
    end
  end
end
