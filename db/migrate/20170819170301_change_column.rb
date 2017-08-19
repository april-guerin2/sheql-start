class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:orders, :eating_method, :string)
    add_column(:orders, :eating_method, :integer)

  end
end
