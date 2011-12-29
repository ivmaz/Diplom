class Action < ActiveRecord::Base
belongs_to :type
belongs_to :web
has_many :lectrooms
has_and_belongs_to_many :subjects
has_and_belongs_to_many :groups

validates :from, :presence => true
end
