class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string  :category
      t.string  :subcategory
      t.string  :name
      t.string  :container
      t.decimal :base_margin
      t.decimal :unit_price

      t.timestamps
    end
  end
end
