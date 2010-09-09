class Bug < ActiveRecord::Base
  
  #esto esta bien?
  belongs_to :ErrorType

  validates_presence_of :name
  validates_numericality_of :page

end
