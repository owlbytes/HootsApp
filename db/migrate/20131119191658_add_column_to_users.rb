class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :score, :integer
    add_column :users, :top_score, :integer
    add_column :users, :fav_users, :string, :default => '[]'
    add_column :users, :fav_posts, :string, :default => '[]'
    add_column :users, :user_favs, :string, :default => '[]'
  end
end
