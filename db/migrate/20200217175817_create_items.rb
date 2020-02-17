class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :saler, foreign_key: true
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
