class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :score, :integer
    add_column :posts, :upvoters, :string
    add_column :posts, :downvoters, :string
  end
end
