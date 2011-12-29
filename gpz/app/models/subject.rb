class Subject < ActiveRecord::Base
belongs_to :teacher
belongs_to :chair
belongs_to :discipline
belongs_to :group
has_and_belongs_to_many :actions

end
