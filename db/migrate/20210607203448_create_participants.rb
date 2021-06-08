class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :name, null: false
      t.date :dob, null: false
      t.string :gender, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :contact_method, null: false

      t.timestamps
    end
    
  end
end
