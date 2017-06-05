class CreateCurrencyTypes < ActiveRecord::Migration
  def change
    create_table :currency_types do |t|
      t.string :name
      t.boolean :marker, default: true

      t.timestamps null: false
    end
  end
end
