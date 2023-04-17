class CreateInsults < ActiveRecord::Migration[6.0]
  def change
    create_table :insults do |t|
      t.string :insult_phrase
    end
  end
end
