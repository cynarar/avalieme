class Service < ActiveRecord::Base
    enum legth: ["30 minutos", "1 hora", "2 horas", "Um turno"]
end
