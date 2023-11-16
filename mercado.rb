require_relative 'estoque'
require_relative 'produto'

class Mercado
  def initialize
    @estoque = Estoque.new
    carregar_produtos
  end

  def carregar_produtos
    @estoque.adicionar_produto(Produto.new("Arroz", 20.00))
    @estoque.adicionar_produto(Produto.new("Feijão", 10.00))
  end

  def iniciar_compra
    puts "Produtos disponíveis:"
    @estoque.listar_produtos

    puts "\nEscolha um produto pelo nome:"
    nome_produto = gets.chomp
    produto_escolhido = @estoque.produtos.find { |produto| produto.nome == nome_produto }

    if produto_escolhido
      puts "Você escolheu: #{produto_escolhido.nome} que custa R$#{produto_escolhido.preco}"
    else
      puts "Produto não encontrado."
    end
  end
end

mercado = Mercado.new
mercado.iniciar_compra
