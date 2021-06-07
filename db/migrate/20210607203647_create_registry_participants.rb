class CreateRegistryParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :registry_participants do |t|
      t.integer :participant_id
      t.integer :registry_id
      t.string :coordinator_email
      t.date :enrollment_date
      t.text :remarks

      t.timestamps
    end

    add_index :registry_participants, [:participant_id, :registry_id], :unique => true 

  end
end
