class CreateOpps < ActiveRecord::Migration[7.1]
  def change
    create_table :opps do |t|
      t.string :name
      t.text :opp_reason
      t.text :progress, array:true

      t.timestamps
    end
  end
end
