class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :uuid
      t.string :description

      t.timestamps
    end
  end
end