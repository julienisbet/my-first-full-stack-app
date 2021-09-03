class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :front
      t.string :back
      t.references :deck
    end
  end
end
