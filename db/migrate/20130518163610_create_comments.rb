class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false, limit: 50000
      t.boolean :approved, default: false, null: false
      t.integer :post_id
      t.integer :author_id

      t.timestamps
    end
  end
end
