fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

def sluggish_o(fish_arr)
    longest = 0
    fish_arr.each do |fish1|
        fish_arr.each do |fish2|
            if fish1.length > fish2.length
                longest = fish1
            end
        end
    end
    longest
end

#p sluggish_o(fish_arr)

def dominant_o(fish_arr)
    fish_arr.sort
    fish_arr.last
end

#p dominant_o(fish_arr)

def clever_o(fish_arr)
    longest = fish_arr[0]
    fish_arr.each do |fishy|
        if fishy.length > longest.length
            longest = fishy
        end
    end
    longest
end

#p clever_o(fish_arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile, tiles_array)
    tiles_array.each {|el| return tiles_array.index(el) if el == tile }
end

#p slow_dance("right-down", tiles_array)

def constant_dance(tile, tiles_array)
    tiles_array.index(tile)
end

#p constant_dance("up", tiles_array)