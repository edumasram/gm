class Restaurante < ActiveRecord::Base
  attr_accessible :Endereco, :Nome
  has_many :avaliacao
end
