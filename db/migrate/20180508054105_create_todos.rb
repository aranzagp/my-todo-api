class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description

      t.timestamps
    end

    add_reference :todos, :user
  end
end
