class CreatePostsCommentsUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end

    create_table :comments do |t|
      t.text :body
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
