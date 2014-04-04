class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.text :about_exam
      t.string :results_link

      t.timestamps
    end
  end
end
