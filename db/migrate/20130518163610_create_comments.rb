class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
