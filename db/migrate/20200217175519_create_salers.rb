class CreateSalers < ActiveRecord::Migration[5.1]
  def change
    create_table :salers do |t|
      t.string :name

      t.timestamps
    end
  end
end
