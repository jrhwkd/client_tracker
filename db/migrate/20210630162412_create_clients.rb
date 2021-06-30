class CreateClients < ActiveRecord::Migration[6.1]
  def change
    drop_table :clients

    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :company
      t.references :sector, null: false, foreign_key: true
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
