class AddForeignKeyToStatistics2 < ActiveRecord::Migration[6.1]
  def change
    add_column :statistics, :user_id, :integer
  end
end
