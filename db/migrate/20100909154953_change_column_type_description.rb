class ChangeColumnTypeDescription < ActiveRecord::Migration
  def self.up
	change_column(:bugs, :description, :text)
  end

  def self.down
	change_column(:bugs, :description, :string)
  end
end
