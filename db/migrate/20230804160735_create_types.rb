class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.string :nombre
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
