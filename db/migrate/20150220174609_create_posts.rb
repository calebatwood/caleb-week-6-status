class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :status
      t.string :user
      t.integer :likes
    end
  end
end
