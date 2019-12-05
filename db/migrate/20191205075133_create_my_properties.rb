class CreateMyProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :my_properties do |t|
      t.string :property
      t.integer :rent
      t.string :adress
      t.string :building_age
      t.string :remarks

      t.timestamps
    end
  end
end
