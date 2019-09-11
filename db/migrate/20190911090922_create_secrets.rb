class CreateSecrets < ActiveRecord::Migration[5.2]
  def change
    create_table :secrets do |t|
      t.string :message
      t.string :url
      t.timestamps
    end
  end
end
