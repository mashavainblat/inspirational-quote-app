class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :inspirational_quotes, :quotes
  end
end
