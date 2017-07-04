class Transacao
  attr_reader :pedido

  def initialize(pedido:)
    @pedido = pedido
  end


end