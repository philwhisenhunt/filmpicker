class CreateViewings < ActiveRecord::Migration[7.1]
  def change
    create_table :viewings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
