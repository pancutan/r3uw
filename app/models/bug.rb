class Bug < ActiveRecord::Base
  
  #esto esta bien?
  belongs_to :error_type
  belongs_to :version

  validates_presence_of :name, :version_id, :error_type_id
  validates_numericality_of :page

end
