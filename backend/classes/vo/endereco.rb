class Endereco

  attr_reader :endereco, :complemento, :bairro, :cep
  def initialize(endereco:, complemento:, bairro:, cep:)
    @rua, @complemento, @bairro, @cep = endereco, complemento, bairro, cep
  end

end