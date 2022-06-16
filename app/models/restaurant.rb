class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true

  def full_name
    "#{self.name}, in #{self.city}"
  end
end
