class Lectroom < ActiveRecord::Base
belongs_to :actions

validates :number, :presence => true,
:uniqueness => true,
:length => {:in=>3...10}


end
