class CreateDiscos < ActiveRecord::Migration
  def change
    create_table :discos do |t|
      t.string :album
      t.string :artista
      t.integer :year

      t.timestamps
    end
  end
end
