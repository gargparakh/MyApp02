class ChangeArticleText < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :articles do |t|
        dir.up   { t.change :text, :string }
        dir.down { t.change :text, :text }
      end
    end
  end
end