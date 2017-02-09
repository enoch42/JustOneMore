class CreateApiV1Draws < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_draws do |t|
      t.numeric :amount

      t.timestamps
    end
  end
end
