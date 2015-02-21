class AddAvatarToUsers < ActiveRecord::Migration
 def self.up
    change_table :users do |t|
      t.attachment :avatar
    end
    change_table :ingredients do |t|
      t.attachment :avatar
    end
    change_table :recipes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :users, :avatar
    drop_attached_file :ingredients, :avatar
    drop_attached_file :recipesx, :avatar
  end
end
