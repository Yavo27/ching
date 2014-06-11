class AddAskToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :ask, :text
  end
end
