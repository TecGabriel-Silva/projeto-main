class CreateProducaos < ActiveRecord::Migration[7.0]
  def change
    create_table :producaos do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
