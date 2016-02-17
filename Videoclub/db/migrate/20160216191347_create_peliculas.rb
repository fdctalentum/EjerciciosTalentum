class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.string :genero
      t.integer :year

      t.timestamps null: false
    end
  end
end
