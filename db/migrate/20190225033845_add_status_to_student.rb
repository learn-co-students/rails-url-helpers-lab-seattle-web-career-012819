class AddStatusToStudent < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :null => false, :default => 0
  end
end

# add_column :tweet, :retweets_count, :integer, :null => false, :default => 0