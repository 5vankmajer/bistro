class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name, null: false, unique: true
      t.string :address, null: false
      t.string :phone
      t.boolean :wifi, default: false
      t.boolean :plugs, default: false
      t.boolean :love, default: false # :'(

      t.timestamps
    end
  end
end
