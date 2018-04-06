require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badge_batches = Array.new
  names.each do |name|
    badge_batches << badge_maker(name)
  end
  badge_batches
end

def assign_rooms(names)
  assignments = Array.new

  names.each do |name|
    room = names.index(name) + 1
    assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
  end
  assignments

  names.map.with_index do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
end

def printer(names)
  batch_badge_creator(names).each do |list|
    puts list
  end

  assign_rooms(names).each do |room|
    puts room
  end
end
