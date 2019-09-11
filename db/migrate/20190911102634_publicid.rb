class Publicid < ActiveRecord::Migration[5.2]
  def change
    add_column :secrets, :public_uid, :string
    add_index  :secrets, :public_uid
  end
end
