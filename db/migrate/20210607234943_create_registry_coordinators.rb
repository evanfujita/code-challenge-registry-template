class CreateRegistryCoordinators < ActiveRecord::Migration[6.0]
  def change
    create_table :registry_coordinators do |t|
      t.integer :registry_id, null: false
      t.integer :coordinator_id, null: false

      t.timestamps
    end
  end
end
