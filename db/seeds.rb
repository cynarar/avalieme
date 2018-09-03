#########################################
#Limpar a base
######################################### 
Gallery.delete_all
Detail.delete_all
Product.delete_all
Brand.delete_all
Category.delete_all
City.delete_all

#########################################
#Cidades
#########################################        
Fortaleza = City.create(
        :name => "Fortaleza",
        :uf => "CE",
        :slug => "fortaleza")

#########################################
#Categorias
#########################################
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
motorola = Brand.create(
        :name => "Motorola",
        :slug => "motorola",
        :active => true)
        
#########################################
#Produtos
#########################################
motog6 = Product.create(
        :name => "Smartphone Motorola Moto G6",
        :slug => "smartphone-motorola-moto-g6",
        :model => "XT1926-8",
        :description => "Assista aos seus vídeos favoritos em uma tela Full HD+ de 5,7” e se encante pelo design com acabamento traseiro em vidro 3D que se encaixa perfeitamente nas suas mãos. Explore todos os recursos da câmera do seu jeito. Faça fotos incríveis com a câmera traseira dupla, selfies de 8 MP com flash LED e tenha reconhecimento inteligente de lugares e objetos em um toque. Passe o dia inteiro com uma bateria que não te deixa na mão. Quer uma carga extra? O carregador TurboPower™ garante horas de uso com alguns minutos de carga. ",
        :brand_id => motorola.id,
        :category_id => smartphone.id,
        :active => true)
#########################################
#Detalhes
#########################################
detalhe = Detail.create(
        :product_id => motog6.id,
        :so => "Android Oreo - 8.0",
        :ram => "3 GB ou 4 GB",
        :rom => "Para armazenamento total: 32 GB - Armazenamento disponível (aproximado): 25 GB. Para armazenamento total: 64 GB - Armazenamento disponível (aproximado): 56 GB. Armazenamento removível que suporta cartão microSD de até 256 GB",
        :height => "162,5g",
        :colors => "Indigo e Preto",
        :screen => "Full HD+ - 2160x1080 5.7\" - Max Vision (18:9) 424ppi 16 milhões de cores",
        :size => "Altura: 153,7mm Largura: 72,3mm Espessura: 8,3mm",
        :conectivity => "USB-C Entrada de fone de ouvido de 3.5 mm",
        :camera => "Frontal: 8MP Lente 80º Abertura f/2.2. Traseira: Dual Camera 12MP+5MP Lente 76º+79º Abertura f/1.8+ f/2.2.",
        :processor => "Qualcomm Snapdragon 450 (SDM450) 1.8 GHz Octa-Core Adreno 506",
        :batery => "3.000 mAh - Bateria que dura o dia todo* Carregador TurboPower™ 15 W incluído",
        :sensors => "Acelerômetro, Proximidade, Giroscópio, Magnetômetro, Luz Ambiente, Impressão Digital",
        :content => "01 TELEFONE - XT1925-3, 01 CAPA PROTETORA, 01 KIT DE MANUAIS, 01 CABO DE SINCRONIZAÇÃO, 01 FONE DE OUVIDO ESTEREO, 01 CARREGADOR DE PAREDE TURBOPOWER™ 15W, 01 FERRAMENTA DE REMOÇÃO DO SIM"
        )
#########################################
#Galeria
#########################################
Gallery.create(
        :product_id => motog6.id
        )