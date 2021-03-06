class Present < ApplicationRecord
  validates :label, presence: true

  attr_accessor :pure_description

  has_and_belongs_to_many :holidays
  has_many :present_stores, dependent: :destroy
end
