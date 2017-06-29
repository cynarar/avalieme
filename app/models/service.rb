class Service < ActiveRecord::Base
    has_and_belongs_to_many :users
    enum legth: ["30 minutos", "1 hora", "2 horas", "Um turno"]
end
