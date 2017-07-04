require_relative '../../classes/vo/transacao'
require_relative '../../classes/tipos/produto/assinatura'
require_relative '../../classes/tipos/produto/livro'
require_relative '../../classes/tipos/produto/midia_digital'
require_relative '../../classes/tipos/produto/produto_fisico'
require_relative '../../classes/pagamento/executar_procedimento'

# Fiz essa classe com base na classe Payment...

class ExecutarPagamento

  attr_reader :pedido, :pagamento, :transacao

  def initialize(pedido:, pagamento:)

    @pedido = pedido
    @pagamento = pagamento

  end

  def go(paid_at = Time.now)
    @authorization_number = Time.now.to_i
    @transacao = Transacao.new(pedido:@pedido)
    @paid_at = paid_at

    #Executar operacoes para: Livros, assinaturas, midia e produtos fisicos ...
    @transacao.pedido.items.each do |item|

      ExecutarProcedimento.new(pedido:@pedido, tipo_produto: item.produto.tipo).executar()


    end


    pedido.close(@paid_at)

  end

  def paid?
    !paid_at.nil?
  end
end