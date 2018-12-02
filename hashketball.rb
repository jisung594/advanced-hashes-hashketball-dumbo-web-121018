require "pry"

def game_hash
  hash = {
    :home => {:team_name => "Brooklyn Nets",
              :colors => ["Black","White"], 
              :players => {"Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
                },
              "Reggie Evans" => {
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
                },
              "Brook Lopez" => {
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
                },
              "Mason Plumlee" => {
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 12,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
                },
              "Jason Terry" => {
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1
                }
              }
            },
              
    :away => {:team_name => "Charlotte Hornets",
              :colors => ["Turquoise","Purple"], 
              :players => {"Jeff Adrien" => {
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2
                },
              "Bismak Biyombo" => {
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 7,
                :blocks => 15,
                :slam_dunks => 10
                },
              "DeSagna Diop" => {
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5
                },
              "Ben Gordon" => {
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0
                },
              "Brendan Haywood" => {
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 22,
                :blocks => 5,
                :slam_dunks => 12
                }
              }
            }
          }
end



def num_points_scored(player)
  hash.each do |location, team_data|
    # first level location -> gives :home, :away
     binding.pry
    team_data.each do |attribute, data1|
      # 2nd level attribute -> :team_name, :colors, :players
       binding.pry
      if attribute.to_s == "players"
        data1.each do |name, data2|
          # 3rd level name -> gives "Alan Anderson"
           binding.pry
          if name.to_s == player
            data2.each do |statistic, value|
              # 4th level stat -> gives :number, :shoe...
               binding.pry
              if statistic.to_s == "points"
                return value
              end
            end
          end
        end
      end
    end
  end
end

num_points_scored


=begin

def shoe_size(name)
end

def team_colors
end

def team_names
end

def player_numbers
end

def player_stats
end

def big_shoe_rebounds
end

=end






