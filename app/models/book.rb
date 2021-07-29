class Book < ApplicationRecord
    enum status: %w[Prestado Estante]
end
