class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.boolean :paid
      t.integer :billing
      t.integer :user_id

      t.timestamps
    end
  end
end
