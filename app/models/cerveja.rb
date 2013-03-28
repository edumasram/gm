class Cerveja < ActiveRecord::Base
  attr_accessible :descricao, :nome
  belongs_to :cervejaria
end
