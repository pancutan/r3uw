class Bug < ActiveRecord::Base
  has_one :version
  has_one :errortype
end
