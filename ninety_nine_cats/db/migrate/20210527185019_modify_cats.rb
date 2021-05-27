class ModifyCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :age, :string, null: false
  end
end
