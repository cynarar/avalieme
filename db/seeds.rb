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
celulares = Category.create(
        :name => "Celulares e Smartphones",
        :slug => "celulares_e_smartphones",
        :enabled => true,
        :parent_id => nil)
        
smartphone = Category.create(
        :name => "Smartphone",
        :slug => "smartphone",
        :enabled => true,
        :parent_id => celulares.id)
        
celularesBasicos = Category.create(
        :name => "Celulares básicos",
        :slug => "celulares_basicos",
        :enabled => true,
        :parent_id => celulares.id)
        
acessorios = Category.create(
        :name => "Acessórios para celular",
        :slug => "acessorios_para_celular",
        :enabled => true,
        :parent_id => celulares.id)
        
smartwatch = Category.create(
        :name => "Smartwatch",
        :slug => "smartwatch",
        :enabled => true,
        :parent_id => celulares.id)
        
#########################################
#Marcas
#########################################
Brand.delete_all
motorola = Brand.create(
        :name => "Motorola",
        :slug => "motorola",
        :active => true)
        
#########################################
#Produtos
#########################################
Product.delete_all
Product.create(
        :name => "Smartphone Motorola Moto G6 Plus Dual Chip Android Oreo - 8.0 Tela 5.9\" Octa-Core 2.2 GHz 64GB 4G Câmera 12 + 5MP (Dual Traseira) - Índigo",
        :slug => "smartphone-motorola-moto-g6-plus-dual-chip-android-oreo-8-0-tela-5-9-octa-core-2-2-ghz-64gb-4g-camera-12-5mp-dual-traseira-indigo",
        :model => "XT1926-8",
        :description => "Misturando inovação, modernidade e qualidade, o novo moto g6 plus chegou para deixar tudo o que você precisa na palma da sua mão, desbravando um mundo de novidades e experiências extremamente inesquecíveis. Com processador de 2,2 GHz, 4GB de RAM, bateria que dura o dia todo(1) e carregamento TurboPower™(2), você executa suas tarefas sem se preocupar. Além disso, sua deslumbrante Tela Max Vision permite com que você veja seus momentos em tela cheia, já que pode assistir a tudo em um incrível espaço Full HD+ de 5,9 polegadas. Pensa que acabou? Então prepare-se: este novo integrante da Família moto g6 possui design com acabamento traseiro em vidro 3D que se encaixa perfeitamente em suas mãos.E não para por aí! Agora você pode registrar todos os seus momentos em fotos incríveis, já que o moto g6 plus vem com câmera traseira dupla e câmera frontal de 8MP com flash LED. Ah, e ele tem Android Puro 8.0 Oreo, a última versão do sistema operacional mais utilizado em todo o mundo. O moto g6 plus é inteligente em todos os sentidos.",
        :brand_id => motorola.id,
        :category_id => smartphone.id,
        :active => true)