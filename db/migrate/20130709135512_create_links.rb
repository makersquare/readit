class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :user
      t.string :url
      t.timestamps
    end
  end
end
