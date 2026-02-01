-- Extend underground pipe reach by 1 tile
local pipe = data.raw["pipe-to-ground"]["pipe-to-ground"]

if pipe then
  -- Store original max_distance for reference
  local original_distance = pipe.fluid_box.pipe_connections[2].max_underground_distance
  
  -- Increase max_underground_distance by 1
  pipe.fluid_box.pipe_connections[2].max_underground_distance = original_distance + 1
  
  -- Log the change for debugging
  log("Extended underground pipe reach from " .. original_distance .. " to " .. (original_distance + 1))
else
  log("ERROR: pipe-to-ground entity not found!")
end
