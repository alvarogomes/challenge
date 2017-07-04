class Produto
  attr_reader :nome, :tipo, :valor

  def initialize(nome:, tipo:, valor:)
    @nome, @tipo, @valor = nome, tipo, valor
  end

end