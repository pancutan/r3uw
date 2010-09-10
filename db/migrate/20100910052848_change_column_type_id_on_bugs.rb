class ChangeColumnTypeIdOnBugs < ActiveRecord::Migration

  def self.up
    rename_column :bugs, :type_id, :errortype_id
  end

  def self.down
    rename_column :bugs, :errortype_id, :type_id
  end
end
