class ChangeBooKsToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_table :boo_ks, :books
  end
end
