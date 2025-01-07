class CreateLaughs < ActiveRecord::Migration[8.0]
  def change
    create_table :laughs do |t|
      t.references :type, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
