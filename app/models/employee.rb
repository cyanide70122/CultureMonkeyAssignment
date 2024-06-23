class Employee < ApplicationRecord
  belongs_to :department

  has_many :bills

  validates :first_name, :last_name, :email, :designation, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
