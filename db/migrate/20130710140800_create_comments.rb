class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.references :user
      t.references :link

      t.timestamps
    end
  end
end
