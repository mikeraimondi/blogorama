class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false, limit: 50000
      t.boolean :approved, default: false, null: false

      t.timestamps
    end
  end
end
