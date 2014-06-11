class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.text :question

      t.timestamps
    end
  end
end
