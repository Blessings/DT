class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :description
      t.integer :category

      t.timestamps
    end
  end
end
