module Ardm
  module PropertyFixtures
      class TShirt < ActiveRecord::Base
        self.table_name = "tshirts"

        property :id,          Serial
        property :writing,     String
        property :has_picture, Boolean, :default => false
        property :picture,     Enum[:octocat, :fork_you, :git_down]

        property :color, Enum[:white, :black, :red, :orange, :yellow, :green, :cyan, :blue, :purple]
        property :size,  Flag[:xs, :small, :medium, :large, :xl, :xxl], :default => :xs
      end # Shirt
    end # PropertyFixtures
end # Ardm
