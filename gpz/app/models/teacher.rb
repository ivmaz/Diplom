class Teacher < ActiveRecord::Base
has_and_belongs_to_many :chairs


validates :name, :presence => true,
:length => {:in=>3...30}

validates :surname, :presence => true,
:length => {:in=>3...30}

validates :pathname, :presence => true,
:length => {:in=>3...30}

end
