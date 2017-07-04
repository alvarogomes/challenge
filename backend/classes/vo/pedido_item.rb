#Classe feita com base na OrderItem
class PedidoItem
  attr_reader :pedido, :produto

  def initialize(pedido:, produto:)
    @pedido = pedido
    @produto = produto
  end

  def total
    produto.valor
  end
end