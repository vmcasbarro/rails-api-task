class RemoveUserFromConversation < ActiveRecord::Migration[5.2]
  def change
    remove_reference :conversations, :user, foreign_key: true
  end
end
