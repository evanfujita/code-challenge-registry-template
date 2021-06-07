class CreateCoordinators < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinators do |t|
      t.string :email
      t.string :name
      t.string :phone

      t.timestamps
    end

    add_index :coordinators, [:email], :unique => true
  end
end
