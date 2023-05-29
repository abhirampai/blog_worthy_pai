class Createposttable < ActiveRecord::Migration[7.0]
  def up
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description
      t.integer :upvotes
      t.integer :downvotes
      t.boolean :is_blog_worthy
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
