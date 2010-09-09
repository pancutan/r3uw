class Bug < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :page

end
