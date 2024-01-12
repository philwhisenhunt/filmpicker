class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.date :release_date

      t.timestamps
    end
  end
end
