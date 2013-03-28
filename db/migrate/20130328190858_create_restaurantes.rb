class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :Nome
      t.string :Endereco

      t.timestamps
    end
  end
end
