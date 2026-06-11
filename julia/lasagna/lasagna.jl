# Define the `expected_bake_time` constant`
const expected_bake_time = 60
# Define the `preparation_time(layers)` function.
function preparation_time(layers)
    MINS_PER_LAYER = 2
    layers * MINS_PER_LAYER
end
# Define the `remaining_time(time_in_oven)` function.
function remaining_time(time_in_oven)
    expected_bake_time - time_in_oven
end
# Define the `total_working_time(layers, time_in_oven)` function.
function total_working_time(layers, time_in_oven)
    total_preparation = preparation_time(layers)
    total_preparation + time_in_oven
end



