require_relative 'produto'

class Estoque
  attr_accessor :produtos

  def initialize
    @produtos = []
  end

  def adicionar_produto(produto)
    @produtos << produto
  end

  def listar_produtos
    @produtos.each { |produto| puts "Produto: #{produto.nome}, Preço: #{produto.preco}" }
  end
end
