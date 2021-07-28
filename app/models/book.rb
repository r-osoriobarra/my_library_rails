class Book < ApplicationRecord
    enum status: ['Prestado', 'En Estante']
end
