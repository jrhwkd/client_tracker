class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :company
      t.references :client_type, null: false, foreign_key: true
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
