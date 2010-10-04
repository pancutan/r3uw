class RenameColumErrorTypeOnBugToErrorTypes < ActiveRecord::Migration
  def self.up
    rename_column :bugs, :errortype_id, :error_type_id 
  end

  def self.down
    rename_column :bugs, :error_type_id, :errortype_id
  end
end
