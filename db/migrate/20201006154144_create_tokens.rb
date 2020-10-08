class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.string :api_key
      t.string :pattern
      t.string :name

      t.timestamps
    end
  end
end
