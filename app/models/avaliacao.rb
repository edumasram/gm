class Avaliacao < ActiveRecord::Base
  attr_accessible :avaliacao.text
  belongs_to :hotel , :cerveja , :restaurante
end
