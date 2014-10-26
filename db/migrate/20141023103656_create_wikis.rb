class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string  :name
      t.integer :user_id
      t.boolean :public, default: true

      t.timestamps
    end
  end
end
