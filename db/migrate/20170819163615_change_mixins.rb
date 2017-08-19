class ChangeMixins < ActiveRecord::Migration[5.1]
  def change
      rename_table('mixins', 'mix_ins')
  end
end
