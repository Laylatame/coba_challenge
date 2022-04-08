class AddPriorityToOrders < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE priority AS ENUM ('low', 'medium', 'high', 'critical', 'none');
    SQL
    add_column :orders, :priority, :priority, default: 'none'
  end

  def down
    remove_column :orders, :approved_status
    execute <<-SQL
      DROP TYPE priority;
    SQL
  end
end
