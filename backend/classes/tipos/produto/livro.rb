require_relative '../../../classes/procedimentos/procedimento_livro'
class Livro

  def initialize

  end

  # Aqui é monde mora o "pulo do gato"...
  # Cada tipo tem seu "executor" onde irá realizar os procedimentos necessarios (shipp label, email, etc.)
  # não precisando mais de "if" para cada novo tipo que surgir.
  # Este metodo é utilizado na classe ExecutarProcedimentos
  def executor
    return ProcedimentoLivro.new
  end
end