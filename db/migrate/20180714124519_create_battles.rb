class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles, id: :uuid do |t|

      t.timestamps
    end
  end
end
