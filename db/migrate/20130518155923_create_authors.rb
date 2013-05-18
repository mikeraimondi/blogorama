class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
