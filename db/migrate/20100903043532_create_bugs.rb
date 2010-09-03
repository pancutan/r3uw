class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.boolean :accepted
      t.boolean :resolved
      t.string :name
      t.integer :version_id
      t.integer :page
      t.integer :type_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
