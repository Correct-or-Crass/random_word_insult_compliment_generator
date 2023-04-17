class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :insults, :insult, :insult_phrase
  end
end
