class Group < ActiveRecord::Base
belongs_to :subject
has_and_belongs_to_many :actions
validates :number, :presence => true,
:uniqueness => true,
:length => {:in=>3...10}

end
