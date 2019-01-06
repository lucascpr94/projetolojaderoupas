namespace :utils do
  desc "Popular tabela de roupas"
  task setup_roupas: :environment do
    3.times do |i|
      inome = Faker::Commerce.product_name
      idescricao = Faker::Commerce.material
      ipreco = Faker::Commerce.price
      iquantidade = Random.rand(11)
      product = "#{inome}"
      puts "Cadastrando o #{product}"
      Produto.create(nome: inome, descricao: idescricao, preco: ipreco, quantidade: iquantidade)
    end
  end

end
