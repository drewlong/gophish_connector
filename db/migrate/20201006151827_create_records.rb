class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :campaign
      t.string :email
      t.string :rid
      t.string :message
      t.string :details

      t.timestamps
    end
  end
end
