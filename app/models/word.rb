class Word < ActiveRecord::Base
  has_many :results
  has_many :lessons, through: :results
  belongs_to :category
end
