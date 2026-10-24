-- Extend underground pipe reach by 1 tile
---@type data.PipeToGroundPrototype?
local pipe = data.raw["pipe-to-ground"]["pipe-to-ground"]

if pipe then
  -- The base pipe's second connection is its underground connection.
  local connection = pipe.fluid_box.pipe_connections[2]
  ---@cast connection data.PipeConnectionDefinition

  -- The base pipe explicitly defines its underground distance.
  local original_distance = connection.max_underground_distance
  ---@cast original_distance uint8

  -- Increase max_underground_distance by 1
  local extended_distance = original_distance + 1
  ---@cast extended_distance uint8
  connection.max_underground_distance = extended_distance

  -- Log the change for debugging
  log("Extended underground pipe reach from " .. original_distance .. " to " .. extended_distance)
else
  log("ERROR: pipe-to-ground entity not found!")
end
