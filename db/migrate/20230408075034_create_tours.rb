class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|

      t.timestamps
    end
  end
end
