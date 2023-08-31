class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :apodo
      t.string :fecha
      t.string :imagen
      t.string :descripcion
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
