class CreateSeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :seeks, id: :uuid do |t|

      t.timestamps
    end
  end
end
