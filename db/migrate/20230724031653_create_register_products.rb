class CreateRegisterProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :register_products do |t|
      t.string :titulo
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
