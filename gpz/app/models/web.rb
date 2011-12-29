class Web < ActiveRecord::Base
has_many :actions

validates :begintime, :presence => true

validates :lenght, :presence => true,
:length => {:in=>2..3}

validates :pairno,
:length => 1

validates :day,
:length => 1

end
