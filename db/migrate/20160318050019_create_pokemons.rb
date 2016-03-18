class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :level
      t.string :integer
      t.string :trainer_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
