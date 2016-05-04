class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.integer :year
      t.integer :pages
      t.string :publishing_house

      t.timestamps null: false
    end
  end
end
