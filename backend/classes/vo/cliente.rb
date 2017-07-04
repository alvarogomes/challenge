require_relative '../../classes/vo/endereco'

class Cliente

  attr_reader :nome, :endereco, :email,:voucher
  def initialize(nome:, endereco:, email:)
    @nome, @endereco, @email = nome, endereco, email
  end

  def add_voucher(valor:)
    @voucher = valor
  end
end