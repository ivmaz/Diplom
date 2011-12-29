class Faculty < ActiveRecord::Base
  has_many :chairs
  
  validates :name, :presence => true, :uniqueness => true
end
