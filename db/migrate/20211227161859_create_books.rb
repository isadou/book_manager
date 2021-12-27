class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.string :resume
      t.float :price

      t.timestamps
    end
  end
end
