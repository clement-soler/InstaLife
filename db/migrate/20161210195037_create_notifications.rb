class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.references :subscribed_user, foreign_key: true
      t.references :post, foreign_key: true
      t.integer :identifier
      t.string :type
      t.boolean :read

      t.timestamps
    end
  end
end
