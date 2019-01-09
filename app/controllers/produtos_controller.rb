class ProdutosController < ApplicationController
  def index
    @produtos_por_nome = Produto.all.order(:nome).limit(15)
  end

  def create
    valores = params.require(:produto).permit :nome,:descricao,:preco,:quantidade
    produto = Produto.create valores
    redirect_to root_url
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to root_url
  end

end
