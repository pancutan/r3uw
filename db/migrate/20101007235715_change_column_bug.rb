class ChangeColumnBug < ActiveRecord::Migration
  def self.up
    change_column_default :bugs, :page, 0
  end

  def self.down
  end
end
