class Chair < ActiveRecord::Base
  belongs_to :faculty
  has_and_belongs_to_many :teachers


  validates :name, :presence => true,
  :length => {:in=>3...30}
  
  validates :number, :presence => true,
  :uniqueness => true,
  :length => {:in=>2...5}
end
