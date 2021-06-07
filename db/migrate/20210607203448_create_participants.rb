class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :email
      t.string :phone
      t.string :contact_method

      t.timestamps
    end
    
  end
end
