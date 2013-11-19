class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :score, :integer
    add_column :users, :top_score, :integer
  end
end
