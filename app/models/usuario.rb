class Usuario < ApplicationRecord
  validates :age, numericality: {
    greater_than_or_equal_to: 10,
    less_than_or_equal_to: 150
  }
  validates :first_name, :last_name, 
    :age, :email_address,
    presence: true
  validates :email_address, 
    uniqueness: true
end
