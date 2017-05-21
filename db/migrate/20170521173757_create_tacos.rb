class CreateTacos < ActiveRecord::Migration[5.0]
  def change
    create_table :tacos do |t|
      t.integer :meat
      t.boolean :rice, default: false
      t.boolean :salsa, default: false
      t.text :notes

      t.timestamps
    end
  end
end
