class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :name
    	t.string :author
    	t.integer :int
    	t.string :string
      t.timestamps null: false
    end
  end
end
