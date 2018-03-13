class CreateHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :horses do |t|
      t.integer :ranking
      t.string :name
      t.string :breed
      t.integer :age
      t.string :rider
      t.string :country
      t.integer :score

      t.timestamps
    end
  end
end
