class CreatePulls < ActiveRecord::Migration[5.0]
  def change
    create_table :pulls do |t|
      t.numeric :amount
      t.references :keg, foreign_key: true

      t.timestamps
    end
  end
end
