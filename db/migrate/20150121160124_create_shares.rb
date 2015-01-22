class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.references :bill_type, index: true
      t.references :grouping, index: true
      t.integer :percent

      t.timestamps
    end
  end
end
