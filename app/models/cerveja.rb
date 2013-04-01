class Cerveja < ActiveRecord::Base
  attr_accessible :descricao, :nome
  has_meny :avaliacaos
end
