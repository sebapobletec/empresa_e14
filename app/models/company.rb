class Company < ApplicationRecord
  has_many :employees, :dependent => :destroy
  validates_uniqueness_of :name
end
