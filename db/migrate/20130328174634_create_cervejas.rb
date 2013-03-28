class CreateCervejas < ActiveRecord::Migration
  def change
    create_table :cervejas do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
