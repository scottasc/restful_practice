class CreateLizards < ActiveRecord::Migration[5.2]
  def change
    create_table :lizards do |t|
      t.string :color
      t.integer :lifespan

      t.timestamps
    end
  end
end
