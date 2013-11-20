class CreateUsersAndPostsAndCommentsAndScoresAndStars < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      # t.string :email
      t.text :image
      t.string :role, default: 'user'
      # t.string :password
      # t.string :password_confirmation
    end

    create_table :posts do |t|
      t.belongs_to :user
      t.string :content, :limit => 141
      t.text :image
      t.text :geostamp
      t.boolean :flag, default: false
      t.timestamps
    end

    create_table :comments do |t|
      t.belongs_to :post
      t.belongs_to :user
      t.string :content
      t.boolean :flag, default: false
      t.timestamps
    end

    create_table :scores do |t|
      t.belongs_to :user
      t.belongs_to :post
      t.integer :score
    end

    create_table :stars do |t|
      t.belongs_to :user
      t.belongs_to :post
    end

  end

end
