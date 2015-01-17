class CreateProportions < ActiveRecord::Migration
  def change
    create_table :proportions do |t|
      t.decimal :percentage, :precision => 2
      t.references :grouping, index: true
      t.references :bill_type, index: true

      t.timestamps
    end
  end
end
