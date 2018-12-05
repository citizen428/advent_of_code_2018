# frozen_string_literal: true

polymer = File.read('input.txt').chomp

def react(polymer)
  stack = []
  polymer.each_char do |current|
    last = stack.last
    last && current == last.swapcase ? stack.pop : stack.append(current)
  end
  stack
end

puts react(polymer).size

puts (?a..?z).map { |l| react(polymer.gsub(/#{l}/i, "")).size }.min
