require_relative '../../classes/vo/../vo/pedido'
require_relative '../../classes/vo/cliente'
require_relative '../../classes/util/send_shipp_label'
class ProcedimentoLivro

  attr_reader :pedido
  def initialize

  end

  def executar_procedimento(pedido:)
    @pedido = pedido

    SendShippLabel.new.send(message:"item isento de impostos conforme disposto na Constituição Art. 150, VI, d")

  end

end