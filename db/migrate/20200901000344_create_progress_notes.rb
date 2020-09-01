class CreateProgressNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :progress_notes do |t|

      t.timestamps
    end
  end
end
