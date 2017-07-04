require_relative '../../classes/vo/../vo/pedido'
require_relative '../../classes/vo/cliente'
class ProcedimentoAssinatura

  attr_reader :pedido
  def initialize

  end

  def executar_procedimento(pedido:)
      @pedido = pedido
      criar_assinatura()
  end

  def criar_assinatura
      # Aqui se criaria o procedimento de criação de assinatura...

  end

end