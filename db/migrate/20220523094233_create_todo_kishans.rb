class CreateTodoKishans < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_kishans do |t|
      t.string :title

      t.timestamps
    end
  end
end
