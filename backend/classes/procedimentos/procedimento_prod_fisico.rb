require_relative '../../classes/vo/../vo/pedido'
require_relative '../../classes/vo/cliente'

require_relative '../../classes/util/send_mail'
require_relative '../../classes/util/send_shipp_label'
class ProcedimentoProdutoFisico

  attr_reader :pedido
  def initialize

  end

  def executar_procedimento(pedido:)
    @pedido = pedido

    SendShippLabel.new.send(message:Time.now.to_i)

  end


end