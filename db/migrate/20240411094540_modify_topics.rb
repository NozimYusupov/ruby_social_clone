class ModifyTopics < ActiveRecord::Migration[7.1]
  def change
    add_index :topics, :alias, unique: true
    Topic.create :alias => "cats", :title => "Котики"
    Topic.create :alias => "dogs", :title => "Собачки"
    Topic.create :alias => "hamster", :title => "Хомячки"
    Topic.create :alias => "rabbits", :title => "Кролики"
    Topic.create :alias => "turtles", :title => "Черепашки"
  end
end
