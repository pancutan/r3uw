class Bug < ActiveRecord::Base
  
  #esto esta bien?
  belongs_to :error_type
  belongs_to :version

  validates_presence_of :name
  validates_numericality_of :page

end
