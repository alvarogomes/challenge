require_relative '../../classes/vo/pedido'
require_relative '../../classes/vo/cliente'
require_relative '../../classes/util/send_mail'

class ProcedimentoMidia

  attr_reader :pedido
  def initialize

  end

  def executar_procedimento(pedido:)

    SendMail.new.send(para:pedido.email,
                      mensagem:"Itenes: #{pedido.items.count}
                                Quantidade: #{pedido.total_amount}" )

    pedido.cliente.add_voucher(valor: 10)

  end

end