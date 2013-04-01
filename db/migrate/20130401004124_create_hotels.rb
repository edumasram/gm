class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :nome
      t.text :descricao
      t.string :cidade

      t.timestamps
    end
  end
end
