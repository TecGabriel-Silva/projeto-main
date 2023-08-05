class Article < ApplicationRecord
    #validar dados que serao inseridos no new
    validates :name, presence: true #Torncando campos obrigatórios
    validates :description, presence: true 
    validates :price, presence: true, length: {minimum: 1} #informando que o valor minimo é 1 
end
