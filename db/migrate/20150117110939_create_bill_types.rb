class CreateBillTypes < ActiveRecord::Migration
  def change
    create_table :bill_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
