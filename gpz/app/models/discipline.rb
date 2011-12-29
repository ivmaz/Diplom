class Discipline < ActiveRecord::Base
has_many:subjects


validates :name, :presence => true,
:uniqueness => true

validates :reductname, :presence => true,
:uniqueness => true
end
