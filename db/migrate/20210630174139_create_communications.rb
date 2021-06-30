class CreateCommunications < ActiveRecord::Migration[6.1]
  def change
    create_table :communications do |t|
      t.string :comment
      t.string :manager
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
