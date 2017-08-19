class ChangeTable < ActiveRecord::Migration[5.1]
  def change
    rename_table('icecream', 'ice_cream_flavors')
  end
end
