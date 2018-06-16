class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :description
      t.string :string
      t.boolean :completed

      t.timestamps
    end
  end
end
