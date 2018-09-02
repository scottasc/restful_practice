class CreateBirds < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :species
      t.string :color

      t.timestamps
    end
  end
end
