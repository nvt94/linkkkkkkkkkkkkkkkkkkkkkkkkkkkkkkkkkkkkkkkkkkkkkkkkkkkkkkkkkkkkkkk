class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.text :url
      t.text :origin
      t.timestamps
    end
  end
end
