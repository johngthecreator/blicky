class CreateOpps < ActiveRecord::Migration[7.1]
  def change
    create_table :opps do |t|
      t.string :name
      t.text :opp_reason
      t.text :progress

      t.timestamps
    end
  end
end
