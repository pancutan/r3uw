class EraseQuestionFromBug < ActiveRecord::Migration
  def up
        remove_column :bugs, :question

  end

  def down
  end
end
