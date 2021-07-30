class Book < ApplicationRecord
    enum status: %w[Prestado Estante]

    validates :title, :author, :status, presence: true
    validates :loan_date, :return_date, absence: true, if: :available?
    validates :loan_date, :return_date, presence: true, if: :isLoan?
    validate :valid_dates

    def available?
        self.status == "Estante"
    end

    def isLoan?
        self.status == "Prestado"
    end

    def valid_dates
        if self.loan_date != nil and self.return_date != nil and self.loan_date > self.return_date
            self.errors.add :return_date, "must be after loan date"
        end
    end
end