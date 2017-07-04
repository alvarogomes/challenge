require_relative 'classes/vo/cliente'
require_relative 'classes/vo/endereco'
require_relative 'classes/vo/produto'
require_relative 'classes/tipos/produto/assinatura'
require_relative 'classes/tipos/produto/produto_fisico'
require_relative 'classes/tipos/produto/midia_digital'
require_relative 'classes/tipos/produto/livro'

require_relative 'classes/tipos/pagamento/cartao_credito'
require_relative 'classes/servico/venda'


#dados do cliente...
clienteOnline = Cliente.new(nome:"Fulano da silva",
                            endereco:Endereco.new(endereco:"RUA X",
                                                  complemento:"",
                                                  bairro:"CENTRO",
                                                  cep:"6500000"),
                            email:"fulano@gmail.com")


#Criando lista de pedidos...

listaProdutos = []
listaProdutos << Produto.new(nome: "Assinatura Mundo Java", tipo: Assinatura.new , valor:40.0)
listaProdutos << Produto.new(nome: "Cracking the Interview",tipo: Livro.new,valor:100.0)
listaProdutos << Produto.new(nome: "Pendrive 8Gb",tipo: ProdutoFisico.new,valor:15.0)
listaProdutos << Produto.new(nome: "Despacito - Musica",tipo: MidiaDigital.new,valor:2.5)

#metodo de pagamento...

metodoPagamento = CartaoDeCredito.new

#Executando a venda...
v = Venda.new(cliente: clienteOnline , produtos: listaProdutos, pagamento: metodoPagamento)
v.executar()