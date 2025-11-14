class Customer < ApplicationRecord
  validates :birthday, presence: true
  validates :name, length: { minimum: 3, maximum: 80 }, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
end
