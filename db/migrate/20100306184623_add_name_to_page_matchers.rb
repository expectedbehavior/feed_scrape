class AddNameToPageMatchers < ActiveRecord::Migration
  def self.up
    add_column :page_matchers, :name, :string
  end

  def self.down
    remove_column :page_matchers, :name
  end
end
