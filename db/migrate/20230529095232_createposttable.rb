class Createposttable < ActiveRecord::Migration[7.0]
  def up
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.boolean :is_blog_worthy, default: false
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
