class CreateRegistryParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :registry_participants do |t|
      t.integer :participant_id, null: false
      t.integer :registry_id, null: false
      t.string :coordinator_email, null: false
      t.date :enrollment_date, null: false
      t.text :remarks, default: 'N/A'

      t.timestamps
    end

    add_index :registry_participants, [:participant_id, :registry_id], :unique => true 

  end
end
