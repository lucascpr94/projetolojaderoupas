class ProdutosController < ApplicationController
  def index
    @produtos_por_nome = Produto.all.order(:nome).limit(15)
  end

  def create
    valores = params.require(:produto).permit :nome,:descricao,:preco,:quantidade
    produto = Produto.create valores
  end
end
