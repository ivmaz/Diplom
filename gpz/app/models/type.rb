class Type < ActiveRecord::Base
has_many :actions

validates :name, :presence => true,
:uniqueness => true,
:length => {:in=>3...30}

end
