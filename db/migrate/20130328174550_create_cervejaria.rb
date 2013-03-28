class CreateCervejaria < ActiveRecord::Migration
  def change
    create_table :cervejaria do |t|
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
