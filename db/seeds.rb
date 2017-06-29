#########################################
#Cidades
#########################################        
City.delete_all
Fortaleza = City.create(
        :name => "Fortaleza",
        :uf => "CE",
        :slug => "fortaleza")

#########################################
#Categorias
#########################################
Category.delete_all
saude = Category.create(
        :name => "Saúde",
        :slug => "saude",
        :enabled => true,
        :parent_id => nil)
fisioterapia = Category.create(
        :name => "Fisioterapia",
        :slug => "fisioterapia",
        :enabled => true,
        :parent_id => saude.id)

#########################################
#Serviços
#########################################        
Service.delete_all
Acupuntura = Service.create(
        :name => "Acupuntura",
        :slug => "acupuntura",
        :category_id => fisioterapia.id,
        :description => "",
        :legth => 1,
        :price => 70.0
        )