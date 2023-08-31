class CreateFeaturespets < ActiveRecord::Migration[7.0]
  def change
    create_table :featurespets do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
