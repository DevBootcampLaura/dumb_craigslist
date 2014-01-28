class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.string :email
      t.string :admin

      t.timestamps
    end
  end
end
