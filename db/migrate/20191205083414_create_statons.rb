class CreateStatons < ActiveRecord::Migration[5.0]
  def change
    create_table :statons do |t|
      t.string :name_of_railway_line
      t.string :statation_name
      t.string :how_many_minutes_walks
      t.references :my_property, foreign_key: true

      t.timestamps
    end
  end
end
