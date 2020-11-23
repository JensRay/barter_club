class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :my_item, foreign_key: { to_table: :items }
      t.references :original_item, foreign_key: { to_table: :items }
      t.timestamps
    end
  end
end
