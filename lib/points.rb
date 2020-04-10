# frozen_string_literal: true

require 'bundler/setup'
require 'pairs'

module Point
  def self.make(x, y)
    Pairs.cons(x, y)
  end

  def self.get_x(point)
    Pairs.car(point)
  end

  def self.get_y(point)
    Pairs.cdr(point)
  end

  def self.to_string(point)
    Pairs.to_string(point)
  end

  def self.get_quadrant(point)
    x = get_x(point)
    y = get_y(point)
    if x > 0 and y > 0
      1
    elsif x < 0 and y > 0
      2
    elsif x < 0 and y < 0
      3
    elsif x > 0 and y < 0
      4
    else
      nil
    end
  end
end
