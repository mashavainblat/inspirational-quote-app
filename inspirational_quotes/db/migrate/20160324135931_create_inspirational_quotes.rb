class CreateInspirationalQuotes < ActiveRecord::Migration
  def change
    create_table :inspirational_quotes do |t|
    	t.string "quote"
    	t.text "image"
    	t.string "background_color"
    end
  end
end
