DIM puzzle, x, y, d, turn, steps, round, past, coordinate, count

puzzle = "L5, R1, L5, L1, R5, R1, R1, L4, L1, L3, R2, R4, L4, L1, L1, R2, R4, R3, L1, R4, L4, L5, L4, R4, L5, R1, R5, L2, R1, R3, L2, L4, L4, R1, L192, R5, R1, R4, L5, L4, R5, L1, L1, R48, R5, R5, L2, R4, R4, R1, R3, L1, L4, L5, R1, L4, L2, L5, R5, L2, R74, R4, L1, R188, R5, L4, L2, R5, R2, L4, R4, R3, R3, R2, R1, L3, L2, L5, L5, L2, L1, R1, R5, R4, L3, R5, L1, L3, R4, L1, L3, L2, R1, R3, R2, R5, L3, L1, L1, R5, L4, L5, R5, R2, L5, R2, L1, L5, L3, L5, L5, L1, R1, L4, L3, L1, R2, R5, L1, L3, R4, R5, L4, L1, R5, L1, R5, R5, R5, R2, R1, R2, L5, L5, L5, R4, L5, L4, L4, R5, L2, R1, R5, L1, L5, R4, L3, R4, L2, R3, R3, R3, L2, L2, L2, L1, L4, R3, L4, L2, R2, R5, L1, R2"
puzzle = SPLIT(puzzle, ", ")
past = ""

FOR EACH round IN puzzle
    turn = MID(round, 1, 1) 
    steps = CINT(MID(round, 2))
    IF turn = "L" THEN
        d = (d + 3) Mod 4
    ELSE
        d = (d + 1) Mod 4
    END IF
    IF d = 0 THEN
        count = 0
        DO WHILE count < steps
            y = y + 1
            coordinate = "(" + CSTR(x) + "," + CSTR(y) + ")"
            IF INSTR(past, coordinate) > 0 THEN
                WSCRIPT.ECHO "Found a match!"
                EXIT FOR
            END IF
            past = past + coordinate
            count = count + 1
        LOOP
    ELSEIF d = 1 THEN
        count = 0
        DO WHILE count < steps
            x = x + 1
            coordinate = "(" + CSTR(x) + "," + CSTR(y) + ")"
            IF INSTR(past, coordinate) > 0 THEN
                WSCRIPT.ECHO "Found a match!"
                EXIT FOR
            END IF
            past = past + coordinate
            count = count + 1
        LOOP
    ELSEIF d = 2 THEN
        count = 0
        DO WHILE count < steps
            y = y - 1
            coordinate = "(" + CSTR(x) + "," + CSTR(y) + ")"
            IF INSTR(past, coordinate) > 0 THEN
                WSCRIPT.ECHO "Found a match!"
                EXIT FOR
            END IF
            past = past + coordinate
            count = count + 1
        LOOP
    ELSE
        count = 0
        DO WHILE count < steps
            x = x - 1
            coordinate = "(" + CSTR(x) + "," + CSTR(y) + ")"
            IF INSTR(past, coordinate) > 0 THEN
                WSCRIPT.ECHO "Found a match!"
                EXIT FOR
            END IF
            past = past + coordinate
            count = count + 1
        LOOP
    END IF
NEXT


distance = ABS(x) + ABS(y)
WSCRIPT.ECHO distance
' Answer is 79