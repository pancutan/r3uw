class CreateErrorTypes < ActiveRecord::Migration
  def self.up
    create_table :error_types do |t|
      t.string :errortype

      t.timestamps
    end
  end

  def self.down
    drop_table :error_types
  end
end
