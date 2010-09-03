class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.string :name
      t.integer :id_version
      t.integer :page
      t.integer :id_type
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
