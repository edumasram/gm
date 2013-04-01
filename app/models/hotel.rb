class Hotel < ActiveRecord::Base
  attr_accessible :cidade, :descricao, :nome
  has_many :avaliacao
end
