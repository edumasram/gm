class Cervejaria < ActiveRecord::Base
  attr_accessible :endereco, :nome
  has_many :cerjas
end
