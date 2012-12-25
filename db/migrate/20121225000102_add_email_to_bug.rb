class AddEmailToBug < ActiveRecord::Migration
  def self.up
    add_column :bugs, :email, :string
  end

  def self.down
    remove_column :bugs, :email
  end
end
