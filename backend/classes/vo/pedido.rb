
require_relative '../../classes/vo/pedido_item'

#Classe feito com base na Order...
class Pedido
  attr_reader :cliente, :items, :endereco,:email, :fechado_em

  def initialize(cliente:)
    @cliente = cliente
    @email = cliente.email
    @items = []

    @endereco = nil
  end

  def add_produto(produto)
    @items << PedidoItem.new(pedido: self, produto: produto)
  end

  def total_amount
    @items.map(&:total).inject(:+)
  end

  def close(fechado_em = Time.now)
    @fechado_em = fechado_em
  end
end