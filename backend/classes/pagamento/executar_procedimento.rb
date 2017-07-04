class ExecutarProcedimento

  attr_reader :pedido, :tipo_produto

  def initialize(pedido:, tipo_produto:)
    @pedido = pedido
    @tipo_produto = tipo_produto

  end

  def executar
    # Aqui utilizo o metodo "Duck Typing" não importando quem é o tipo ou executor do tipo..
    # ele executa o metodo como se fosse um poliforfismo utilizando uma interface...
    @tipo_produto.executor.executar_procedimento(pedido: @pedido)

  end

end