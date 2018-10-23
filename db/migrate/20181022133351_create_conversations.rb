class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :conversation_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
