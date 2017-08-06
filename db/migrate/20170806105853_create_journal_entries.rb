class CreateJournalEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :journal_entries do |t|
      t.integer :user_id, null: false
      t.array :entry, null: false
      t.timestamps
    end
    add_index :journal_entries, :user_id
  end
end
