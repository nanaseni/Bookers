class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string:title
      t.string:
      t.timestamps
    end
  end
end
