class Employee < ApplicationRecord
    validates :email, uniqueness: true
    validates :firstname, format: { with: /\A[a-zA-Z]+\z/, message: "should only contain letters"}
    validates :lastname, format: { with: /\A[a-zA-Z]+\z/, message: "should only contain letters"}
end
