class CreateKegs < ActiveRecord::Migration[5.0]
  def change
    create_table :kegs do |t|
      t.string :brand
      t.string :name
      t.numeric :amount

      t.timestamps
    end
  end
end
