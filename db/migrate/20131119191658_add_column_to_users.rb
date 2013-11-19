class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :score, :integer
    add_column :users, :top_score, :integer
    add_column :users, :fav_users, :string
    add_column :users, :fav_posts, :string
  end
end
