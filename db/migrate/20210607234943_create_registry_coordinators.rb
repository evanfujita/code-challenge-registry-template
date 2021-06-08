class CreateRegistryCoordinators < ActiveRecord::Migration[6.0]
  def change
    create_table :registry_coordinators do |t|
      t.integer :registry_id
      t.integer :coordinator_id

      t.timestamps
    end
  end
end
