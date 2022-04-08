class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :province
      t.string :region
      t.string :segment


      t.timestamps
    end
  end
end
