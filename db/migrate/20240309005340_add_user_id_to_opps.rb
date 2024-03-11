class AddUserIdToOpps < ActiveRecord::Migration[7.1]
  def change
    add_column :opps, :user_id, :integer
    add_index :opps, :user_id
  end
end
