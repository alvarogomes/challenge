require_relative '../../classes/vo/pedido'
require_relative '../../classes/pagamento/executar_pagamento'
class Venda

  attr_reader :cliente, :produtos, :pagamento
  def initialize(cliente:, produtos:, pagamento:)
    @cliente, @produtos, @pagamento  = cliente, produtos, pagamento

  end

  def executar()

    # criando novo pedido...
    p = Pedido.new(cliente: @cliente)

    # varrendo itens...
    @produtos.each do |produto|
      p.add_produto(produto)
    end

    #Efetuando transacao de pagamento...
    e = ExecutarPagamento.new(pedido:p, pagamento: @pagamento)
    e.go()

  end

end