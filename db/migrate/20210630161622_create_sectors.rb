class CreateSectors < ActiveRecord::Migration[6.1]
  def change
    create_table :sectors do |t|
      t.string :client_type

      t.timestamps
    end
  end
end
