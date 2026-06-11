function can_do_fast_attack(knight_awake)
    !knight_awake        
end

function can_spy(knight_awake, archer_awake, prisoner_awake)
    knight_awake || archer_awake || prisoner_awake
end

function can_signal_prisoner(archer_awake, prisoner_awake)
    archer_awake =  Bool(archer_awake)
    prisoner_awake = Bool(prisoner_awake)
    !archer_awake && prisoner_awake
end

function can_free_prisoner(knight_awake, archer_awake, prisoner_awake, dog_present)
    # Case 1
    if (dog_present) && !(knight_awake && archer_awake && prisoner_awake)
        return true
    elseif (prisoner_awake) && !(knight_awake && archer_awake && dog_present)
        return true
    else
        return false
    end
end

# println(can_do_fast_attack(false))
# knight_awake = 0
# archer_awake = 0
# prisoner_awake = 1
# can_spy(knight_awake, archer_awake, prisoner_awake) == 1

# knight_awake = true
# archer_awake = true
# prisoner_awake = false
# println(can_spy(knight_awake, archer_awake, prisoner_awake))

# 0 0 0 0;
# 0 0 1 1;
# 0 1 0 1;
# 0 1 1 1;
# 1 0 0 1;
# 1 0 1 1;
# 1 1 1 1;
