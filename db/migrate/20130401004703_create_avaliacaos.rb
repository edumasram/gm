class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.text :avaliacao

      t.timestamps
    end
  end
end
