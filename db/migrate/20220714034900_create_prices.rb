class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :instrument 
      t.integer :price
      
      t.timestamps
    end
  end
end
