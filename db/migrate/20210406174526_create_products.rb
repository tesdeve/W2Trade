class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :valor_usd
      t.decimal :valor_cop
      t.decimal :impuesto
      t.decimal :seguro
      t.decimal :flete
      t.decimal :aduana
      t.decimal :total_envio_usd
      t.decimal :total_envio_cop
      t.string :action
      t.boolean :bought
      t.decimal :valor_maximo_cop
      t.float :peso
      t.decimal :total_cost
      t.float :exchange_rate

      t.timestamps
    end
  end
end
