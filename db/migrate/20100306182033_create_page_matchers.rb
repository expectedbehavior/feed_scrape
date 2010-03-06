class CreatePageMatchers < ActiveRecord::Migration
  def self.up
    create_table :page_matchers do |t|
      t.text :url
      t.text :item_regexp

      t.timestamps
    end
  end

  def self.down
    drop_table :page_matchers
  end
end
