class CreateKings < ActiveRecord::Migration[7.0]
  def change
    create_table :kings do |t|

      t.timestamps
    end
  end
end
