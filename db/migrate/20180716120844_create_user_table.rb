class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
    end
  end
end
