class CreateRegistries < ActiveRecord::Migration[6.0]
  def change
    create_table :registries do |t|
      t.string :name
      t.string :location
      t.string :status, :default => 'Open'

      t.timestamps
    end

    add_index :registries, [:name, :location], :unique => true
  end
end
