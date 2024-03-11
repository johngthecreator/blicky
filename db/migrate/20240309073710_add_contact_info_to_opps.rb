class AddContactInfoToOpps < ActiveRecord::Migration[7.1]
  def change
    add_column :opps, :contact_info, :string
  end
end
