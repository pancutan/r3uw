class AddQuestionToBug < ActiveRecord::Migration
  def change
    add_column :bugs, :question, :string
  end
end
