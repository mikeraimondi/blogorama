class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false, limit: 100000
      t.integer :author_id

      t.timestamps
    end
  end
end
