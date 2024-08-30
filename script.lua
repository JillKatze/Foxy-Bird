FOXY_VERSION = "1.1c"

TILE_SIZE = 16 --px
INPUTS = { Left = 1, Right = 2, Up = 4, Down = 8, Main = 16, Alt = 32, Special = 64, Back = 128, Start = 256 }
STATES = { Start = 0, Playing = 1, Paused = 2, Dead = 3, Exiting = 4, TailsScreen = 5 }
PIPE_TILE_IDS = { MainLeft = 128, MainRight = 129, UpLeft = 112, UpRight = 113, DownLeft = 144, DownRight = 145 }
WORLD_SHEET_WIDTH = 32 --tiles
GROUND_TILE_ID = 1
BIG_GREEN_TREE_WIDTH = 8 --tiles
BIG_GREEN_TREE_HEIGHT = 8 --tiles
BIG_GREEN_TREE_TILE_IDS = {}
add(BIG_GREEN_TREE_TILE_IDS, 352)
add(BIG_GREEN_TREE_TILE_IDS, 608)
BIG_PINK_TREE_WIDTH = 9 --tiles
BIG_PINK_TREE_HEIGHT = 8 --tiles
BIG_PINK_TREE_TILE_IDS = {}
add(BIG_PINK_TREE_TILE_IDS, 360)
add(BIG_PINK_TREE_TILE_IDS, 616)
BIG_TREE_COUNT = 10
BIG_TREE_MIN_SPACING = 5*TILE_SIZE
BIG_TREE_MAX_SPACING = 32*TILE_SIZE
SMALL_TREE_WIDTH = 5 --tiles
SMALL_TREE_HEIGHT = 5 --tiles
SMALL_TREE_TILE_IDS = {}
add(SMALL_TREE_TILE_IDS, 338)
add(SMALL_TREE_TILE_IDS, 498)
add(SMALL_TREE_TILE_IDS, 658)
add(SMALL_TREE_TILE_IDS, 663)
SMALL_TREE_COUNT = 20
SMALL_TREE_MIN_SPACING = 3*TILE_SIZE
SMALL_TREE_MAX_SPACING = 16*TILE_SIZE
BUSH_WIDTH = 3 --tiles
BUSH_HEIGHT = 2 --tiles
BUSH_TILE_IDS = {}
add(BUSH_TILE_IDS, 818)
add(BUSH_TILE_IDS, 822)
BUSH_COUNT = 30
BUSH_MIN_SPACING = TILE_SIZE
BUSH_MAX_SPACING = 6*TILE_SIZE
BUTTON_DEBOUNCE_FRAMES = 5
EXIT_FRAMES = 60
TERMINAL_VELOCITY = 4.0
MAX_UPWARD_VELOCITY = -4.0
SCROLL_SPEEDS = { }
add(SCROLL_SPEEDS, 2)
add(SCROLL_SPEEDS, 2.5)
add(SCROLL_SPEEDS, 3)
add(SCROLL_SPEEDS, 4)
GRAVITY = 0.1
FLAP_POWER = 2.0
HITBOX_WIDTH = 12
HITBOX_HEIGHT = 16
HITBOX_OFFSET_X = 5
HITBOX_OFFSET_Y = -6
JUMP_ANIM_FRAMES = 20
BG_WIDTH = 110*TILE_SIZE
BG_MOVE_FACTOR = 0.1
SMALL_TREE_MOVE_FACTOR = 0.4
BIG_TREE_MOVE_FACTOR = 0.6
BUSH_MOVE_FACTOR = 0.9
HOLE_MIN_SIZE = 48 --px
HOLE_MAX_SIZES = {}
add(HOLE_MAX_SIZES, 128) --px
add(HOLE_MAX_SIZES, 112) --px
add(HOLE_MAX_SIZES, 96) --px
add(HOLE_MAX_SIZES, 80) --px
HOLE_SPACINGS = {}
add(HOLE_SPACINGS, 250) --px
add(HOLE_SPACINGS, 225) --px
UPPER_DEATH_PLANE = 0
LOWER_DEATH_PLANE = getheight() - TILE_SIZE
MAX_ROTATION = 0.75 -- radians
YUZU_ANIM_SPEED = 0.2
ENEMY_ANIM_SPEED = 0.15

H_SPACING_TAILS_MAX = 1
V_SPACING_TAILS_MAX = 3
SPEED_TAILS_MAX = 3
ENEMY_TAILS_MAX = 2

NEW_BEST_STRING = "WOW! IT'S A NEW RECORD!!"
DEATH_STRINGS = {}
add(DEATH_STRINGS, "OOF")
add(DEATH_STRINGS, "NOOOOOOOO")
add(DEATH_STRINGS, "RIP QUEEN :(")
add(DEATH_STRINGS, "BETTER LUCK NEXT TIME")
add(DEATH_STRINGS, "SO CLOSE")
add(DEATH_STRINGS, "OUCH")

TAILS_LEVEL_NAMES = {}
TAILS_LEVEL_NAMES[0] = "JUST A KIT"
add(TAILS_LEVEL_NAMES, "LITTLE FOX") -- 1
add(TAILS_LEVEL_NAMES, "TRUSTY SIDEKICK") -- 2
add(TAILS_LEVEL_NAMES, "BUSHY-TAILED UPSTART") -- 3
add(TAILS_LEVEL_NAMES, "CONFIDENT CANINE") -- 4
add(TAILS_LEVEL_NAMES, "FLYING FOX") -- 5
add(TAILS_LEVEL_NAMES, "VULPINE CHALLENGER") -- 6
add(TAILS_LEVEL_NAMES, "ROOKIE KITSUNE") -- 7
add(TAILS_LEVEL_NAMES, "VETERAN KITSUNE") -- 8
add(TAILS_LEVEL_NAMES, "NINE-TAILED KITSUNE") -- 9

TAILS_LEVEL_COLORS = {}
TAILS_LEVEL_COLORS[0] = 68
add(TAILS_LEVEL_COLORS, 58) -- 1
add(TAILS_LEVEL_COLORS, 48) -- 2
add(TAILS_LEVEL_COLORS, 42) -- 3
add(TAILS_LEVEL_COLORS, 34) -- 4
add(TAILS_LEVEL_COLORS, 31) -- 5
add(TAILS_LEVEL_COLORS, 26) -- 6
add(TAILS_LEVEL_COLORS, 18) -- 7
add(TAILS_LEVEL_COLORS, 13) -- 8
add(TAILS_LEVEL_COLORS, 11) -- 9

TAILS_LEVEL_OUTLINE_COLORS = {}
TAILS_LEVEL_OUTLINE_COLORS[0] = 69
add(TAILS_LEVEL_OUTLINE_COLORS, 66) -- 1
add(TAILS_LEVEL_OUTLINE_COLORS, 47) -- 2
add(TAILS_LEVEL_OUTLINE_COLORS, 41) -- 3
add(TAILS_LEVEL_OUTLINE_COLORS, 38) -- 4
add(TAILS_LEVEL_OUTLINE_COLORS, 30) -- 5
add(TAILS_LEVEL_OUTLINE_COLORS, 17) -- 6
add(TAILS_LEVEL_OUTLINE_COLORS, 17) -- 7
add(TAILS_LEVEL_OUTLINE_COLORS,  9) -- 8
add(TAILS_LEVEL_OUTLINE_COLORS,  1) -- 9

DEBUG_MODE = false

function init()
    state = STATES.Start
    button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
    exit_frames_remaining = EXIT_FRAMES

    last_best_score = 0
    best_score = 0
    h_spacing_tails = 0
    v_spacing_tails = 0
    speed_tails = 0
    enemy_tails = 0
    reset_game_state(true)

    playmus(title_music)
end

function reset_game_state(regenerate_trees)
    player_x = getwidth()/4
    player_y = TILE_SIZE/2 + getheight()/2
    player_x_vel = SCROLL_SPEEDS[1 + speed_tails]
    player_y_vel = 0
    player_x_accel = 0
    player_y_accel = GRAVITY

    world_scroll = 0

    hole_locations = {}
    for i=1,10 do -- this should be more than enough for any reasonable amount of hole spacing - i doubt you'll see 10 on screen at once
        generate_hole()
    end

    if regenerate_trees then
        big_green_trees = {}
        big_pink_trees = {}
        small_trees = {}
        bushes = {}
        generate_bg_elements()
    end

    frames_since_last_jump = 9999
    was_touching_gap = false
    score = 0
    last_best_score = best_score
    death_string = ""

    menu_choice = 0
end

function loadresources()
    yuzu = sprite("YuzuBird")
    enemy = sprite("Rokurokubi")
    background_tiles = loadbuiltin("bg-test.json", "tilemap")
    world_blocks = loadbuiltin("introworld-b.png", "image")
    func_blocks = loadbuiltin("function_blocks.png", "image")
    title_music = loadbuiltin("title.ogg", "music")
    game_music = loadbuiltin("stage_air.ogg", "music")
    jump_sfx = loadbuiltin("jump.ogg", "sound")
    pause_sfx = loadbuiltin("pause.ogg", "sound")
    start_sfx = loadbuiltin("powerup.ogg", "sound")
    score_sfx = loadbuiltin("coin.ogg", "sound")
    hit_sfx = loadbuiltin("hit2.ogg", "sound")
    menu_change_sfx = loadbuiltin("menu1.ogg", "sound")
    menu_execute_sfx = loadbuiltin("menu3.ogg", "sound")
    stamps_image = loadbuiltin("stamp-icons.png", "image")
end

function update()
    button_debounce_frames_remaining = button_debounce_frames_remaining - 1

    if state == STATES.Start then
        if button_debounce_frames_remaining <= 0 then
            if input_just_pressed(INPUTS.Down) then
                menu_choice = (menu_choice + 1) % 3
                playsfx(menu_change_sfx)
            elseif input_just_pressed(INPUTS.Up) then
                menu_choice = (menu_choice - 1) % 3
                playsfx(menu_change_sfx)
            elseif input_just_pressed(INPUTS.Main) then
                if menu_choice == 0 then
                    state = STATES.Playing
                    reset_game_state(false)
                    button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
                    playmus(game_music)
                    playsfx(start_sfx, 175) -- powerup sound is mixed quiet in the file
                elseif menu_choice == 1 then
                    state = STATES.TailsScreen
                    menu_choice = 0
                    playsfx(menu_execute_sfx)
                elseif menu_choice == 2 then
                    state = STATES.Exiting
                    playsfx(menu_execute_sfx)
                end

                menu_choice = 0 -- reset for pause menu
            end
        end
    elseif state == STATES.Playing then
        main_game_logic()
    elseif state == STATES.Paused then
        do_pause_menu_input(false)
    elseif state == STATES.Dead then
        do_pause_menu_input(true)
    elseif state == STATES.TailsScreen then
        if button_debounce_frames_remaining <= 0 then
            if input_just_pressed(INPUTS.Down) then
                if menu_choice == 4 then
                    menu_choice = 0
                elseif menu_choice > 1 then
                    menu_choice = 4
                else
                    menu_choice = menu_choice + 2
                end
                playsfx(menu_change_sfx)
                button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
            elseif input_just_pressed(INPUTS.Up) then
                if menu_choice == 4 then
                    menu_choice = 2
                elseif menu_choice < 2 then
                    menu_choice = 4
                else
                    menu_choice = menu_choice - 2
                end
                playsfx(menu_change_sfx)
                button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
            end
            if input_just_pressed(INPUTS.Left) or input_just_pressed(INPUTS.Right) then
                if menu_choice ~= 4 then
                    if menu_choice == 0 then
                        menu_choice = 1
                    elseif menu_choice == 1 then
                        menu_choice = 0
                    elseif menu_choice == 2 then
                        menu_choice = 3
                    elseif menu_choice == 3 then
                        menu_choice = 2
                    end
                    playsfx(menu_change_sfx)
                    button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
                end
            end

            if input_just_pressed(INPUTS.Main) then
                if menu_choice == 0 then
                    h_spacing_tails = (h_spacing_tails + 1) % (H_SPACING_TAILS_MAX + 1)
                elseif menu_choice == 1 then
                    v_spacing_tails = (v_spacing_tails + 1) % (V_SPACING_TAILS_MAX + 1)
                elseif menu_choice == 2 then
                    speed_tails = (speed_tails + 1) % (SPEED_TAILS_MAX + 1)
                elseif menu_choice == 3 then
                    enemy_tails = (enemy_tails + 1) % (ENEMY_TAILS_MAX + 1)
                elseif menu_choice == 4 then
                    state = STATES.Start
                    menu_choice = 0
                end
                playsfx(menu_execute_sfx)
                button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
            end
        end
    elseif state == STATES.Exiting then
        exit_frames_remaining = exit_frames_remaining - 1

        if exit_frames_remaining <= 0 then
            exit()
        end
    end
end

function input_just_pressed(btn)
    return not lastinput(btn) and input(btn)
end

function main_game_logic()
    if input_just_pressed(INPUTS.Start) then
        state = STATES.Paused
        pausemus()
        playsfx(pause_sfx)
    end

    frames_since_last_jump = frames_since_last_jump + 1

    if input_just_pressed(INPUTS.Main) then -- jump button
        if player_y_vel > 0 then
            player_y_vel = 0
        end
        player_y_vel = player_y_vel - FLAP_POWER
        frames_since_last_jump = 0
        playsfx(jump_sfx)
    end

    player_x_vel = player_x_vel + player_x_accel
    player_y_vel = player_y_vel + player_y_accel
    if player_y_vel > TERMINAL_VELOCITY then
        player_y_vel = TERMINAL_VELOCITY
    elseif player_y_vel < MAX_UPWARD_VELOCITY then
        player_y_vel = MAX_UPWARD_VELOCITY
    end
    -- here's the secret: the player doesn't move by its x velocity, the world does
    world_scroll = world_scroll + player_x_vel
    player_y = player_y + player_y_vel

    player_hitbox = get_player_hitbox_in_worldspace()

    touching_gap = false
    dead = false
    holes_to_remove = {}
    for i=1,#hole_locations do
        if hole_locations[i].x + TILE_SIZE*2 < world_scroll then
            add(holes_to_remove, i)
            generate_hole()
        else
            touching_this_gap = player_hitbox.x + player_hitbox.width >= hole_locations[i].x and player_hitbox.x <= hole_locations[i].x + TILE_SIZE*2
            touching_gap = touching_gap or touching_this_gap
            dead = dead or (touching_this_gap and (player_hitbox.y <= hole_locations[i].y or player_hitbox.y + player_hitbox.height >= hole_locations[i].y + hole_locations[i].size))
        end
    end
    for i=1,#holes_to_remove do
        del(hole_locations, holes_to_remove[i])
    end

    dead = dead or player_hitbox.y <= UPPER_DEATH_PLANE or player_hitbox.y + player_hitbox.height >= LOWER_DEATH_PLANE

    if dead then
        state = STATES.Dead
        button_debounce_frames_remaining = 3*BUTTON_DEBOUNCE_FRAMES -- so you don't accidentally mash through it
        pausemus()
        playsfx(hit_sfx)
        if best_score > last_best_score then
            death_string = NEW_BEST_STRING
        else
            death_string = DEATH_STRINGS[randint(1, #DEATH_STRINGS + 1)]
        end
        death_string = death_string.."\nSCORE: "..score
    elseif was_touching_gap and not touching_gap then
        score = score + int(100 * (1 + 0.25*(enemy_tails + v_spacing_tails)))
        playsfx(score_sfx)
        if score > best_score then
            best_score = score
        end
    end
    was_touching_gap = touching_gap
end

function get_player_hitbox_in_screenspace()
    return { x = player_x - HITBOX_WIDTH + HITBOX_OFFSET_X, y = player_y - HITBOX_HEIGHT + HITBOX_OFFSET_Y, width = HITBOX_WIDTH, height = HITBOX_HEIGHT}
end

function get_player_hitbox_in_worldspace()
    result = get_player_hitbox_in_screenspace()
    result.x = result.x + world_scroll
    return result
end

-- x,y coord points to top-left of the pipe. height is in 16px tiles
function draw_pipe(x, y, height, top_has_enemy, bottom_has_enemy)
    -- "top" and "bottom" here are flipped from where these are actually called, because "top" here refers to the top of the pipe, but only the top of the bottom pipe is visible!
    pipe_height = height
    top_location = y
    if top_has_enemy then
        top_location = top_location + 1.5*TILE_SIZE
    end
    if bottom_has_enemy then
        pipe_height = pipe_height - 1
        top_location = top_location - 0.5*TILE_SIZE
    end

    distance_to_player = x - player_x -- x is already in screen space coords
    if distance_to_player > 80 then
        enemy_emergence = 0.2
    elseif distance_to_player > 25 then
        enemy_emergence = 1.0 - (distance_to_player - 25.0)/45.0
        enemy_emergence = 0.2 + 0.8*enemy_emergence*enemy_emergence
    else
        enemy_emergence = 1.0
    end
    
    if top_has_enemy then
        drawsprite(enemy, x + TILE_SIZE, top_location + 2*TILE_SIZE*(1.0-enemy_emergence))
    end
    if bottom_has_enemy then
        drawsprite(enemy, x + TILE_SIZE, y + TILE_SIZE*(height+1.5) - 2*TILE_SIZE*(1.0-enemy_emergence), 3.14159)
    end

    drawtile(func_blocks, PIPE_TILE_IDS.UpLeft, x, top_location)
    drawtile(func_blocks, PIPE_TILE_IDS.UpRight, x+TILE_SIZE, top_location)
    for i=1,pipe_height-2 do
        drawtile(func_blocks, PIPE_TILE_IDS.MainLeft, x, top_location+(TILE_SIZE*i))
        drawtile(func_blocks, PIPE_TILE_IDS.MainRight, x+TILE_SIZE, top_location+(TILE_SIZE*i))
    end
    drawtile(func_blocks, PIPE_TILE_IDS.DownLeft, x, top_location+(TILE_SIZE*(pipe_height-1)))
    drawtile(func_blocks, PIPE_TILE_IDS.DownRight, x+TILE_SIZE, top_location+(TILE_SIZE*(pipe_height-1)))
end

function draw_ground()
    offset = -TILE_SIZE - (world_scroll % TILE_SIZE)
    while offset < getwidth() do
        drawtile(world_blocks, GROUND_TILE_ID, offset, getheight()-TILE_SIZE)
        offset = offset + TILE_SIZE
    end
end

function draw_pause_menu(extra_y_offset)
    drawcursor(getwidth()/2 - 2*TILE_SIZE, extra_y_offset + getheight()/2 + (0.9 + menu_choice)*TILE_SIZE)
    drawtext("CONTINUE", 0, extra_y_offset + getheight()/2 + TILE_SIZE, 35, 41, getwidth(), TILE_SIZE, 1, 1)
    drawtext("MAIN MENU", 0, extra_y_offset + getheight()/2 + 2*TILE_SIZE, 31, 27, getwidth(), TILE_SIZE, 1, 1)
    drawtext("EXIT", 0, extra_y_offset + getheight()/2 + 3*TILE_SIZE, 11, 1, getwidth(), TILE_SIZE, 1, 1)
end

function do_pause_menu_input(for_death_screen)
    if button_debounce_frames_remaining <= 0 then
        if input_just_pressed(INPUTS.Down) then
            menu_choice = (menu_choice + 1) % 3
            playsfx(menu_change_sfx)
            button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
        elseif input_just_pressed(INPUTS.Up) then
            menu_choice = (menu_choice - 1) % 3
            playsfx(menu_change_sfx)
            button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
        end

        if input_just_pressed(INPUTS.Start) or (input_just_pressed(INPUTS.Main) and menu_choice == 0) then
            if for_death_screen then
                reset_game_state(true)
                playsfx(start_sfx, 175)
            else
                playsfx(pause_sfx)
            end
            state = STATES.Playing
            pausemus(true)
            button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
        elseif input_just_pressed(INPUTS.Main) and menu_choice == 1 then
            state = STATES.Start
            playmus(title_music)
            reset_game_state(true)
            menu_choice = 0 -- reset for main menu
            button_debounce_frames_remaining = BUTTON_DEBOUNCE_FRAMES
            playsfx(menu_execute_sfx)
        elseif input_just_pressed(INPUTS.Main) and menu_choice == 2 then
            playsfx(menu_execute_sfx)
            state = STATES.Exiting
        end
    end
end

function draw_bg_element(x, y, start_tile_id, width, height)
    for x_offset=0,width-1 do
        for y_offset=0,height-1 do
            drawtile(world_blocks, start_tile_id + y_offset*WORLD_SHEET_WIDTH + x_offset, x + x_offset*TILE_SIZE, y + y_offset*TILE_SIZE)
        end
    end
end

function generate_hole()
    if #hole_locations == 0 then
        ecks = 2*HOLE_SPACINGS[1]
    else
        ecks = hole_locations[#hole_locations].x + HOLE_SPACINGS[1 + h_spacing_tails]
    end

    hole_size = randint(HOLE_MIN_SIZE, HOLE_MAX_SIZES[1 + v_spacing_tails])
    why = randint(3*TILE_SIZE, getheight() - hole_size - 3*TILE_SIZE)
    has_enemy = 0
    if (enemy_tails == 1 and randint(0, 5) == 0) or (enemy_tails == 2 and randint(0, 3) <= 1) then
        has_enemy = randint(1, 4)
    end
    add(hole_locations, { x = ecks, y = why, size = hole_size, has_enemy = has_enemy })
end

function generate_bg_elements()
    generate_big_trees()
    generate_small_trees()
    generate_bushes()
end

function generate_big_trees()
    if #big_green_trees == 0 and #big_pink_trees == 0 then
        cur_x = -4*TILE_SIZE
    elseif #big_green_trees == 0 then
        cur_x = big_pink_trees[#big_pink_trees].x
    elseif #big_pink_trees == 0 then
        cur_x = big_green_trees[#big_green_trees].x
    else
        cur_x = max(big_green_trees[#big_green_trees].x, big_pink_trees[#big_pink_trees].x)
    end

    while #big_green_trees + #big_pink_trees < BIG_TREE_COUNT do
        cur_x = cur_x + randint(BIG_TREE_MIN_SPACING, BIG_TREE_MAX_SPACING)
        elem_type = randint(1, 20)
        if elem_type == 1 then
            add(big_pink_trees, { variant = randint(1, 3), x = cur_x, y = 128 })
        else
            add(big_green_trees, { variant = randint(1, 3), x = cur_x, y = 128 })
        end
    end
end

function generate_small_trees()
    if #small_trees == 0 then
        cur_x = -4*TILE_SIZE
    else
        cur_x = small_trees[#small_trees].x
    end

    while #small_trees < SMALL_TREE_COUNT do
        cur_x = cur_x + randint(SMALL_TREE_MIN_SPACING, SMALL_TREE_MAX_SPACING)
        elem_type = randint(1, 20)
        if elem_type == 1 then
            add(small_trees, { variant = randint(3, 5), x = cur_x, y = 176 })
        else
            add(small_trees, { variant = randint(1, 3), x = cur_x, y = 176 })
        end
    end
end

function generate_bushes()
    if #bushes == 0 then
        cur_x = -4*TILE_SIZE
    else
        cur_x = bushes[#bushes].x
    end

    while #bushes < BUSH_COUNT do
        cur_x = cur_x + randint(BUSH_MIN_SPACING, BUSH_MAX_SPACING)
        add(bushes, { variant = randint(1,3), x = cur_x, y = 224 })
    end
end

function draw_bg_elements()
    small_trees_to_delete = {}
    for i=1,#small_trees do
        elem = small_trees[i]
        ecks = elem.x -(SMALL_TREE_MOVE_FACTOR * world_scroll)
        if ecks < -getwidth()/2 then
            add(small_trees_to_delete, i)
        else
            draw_bg_element(ecks, elem.y, SMALL_TREE_TILE_IDS[elem.variant], SMALL_TREE_WIDTH, SMALL_TREE_HEIGHT)
        end
    end
    green_trees_to_delete = {}
    for i=1,#big_green_trees do
        elem = big_green_trees[i]
        ecks = elem.x -(BIG_TREE_MOVE_FACTOR * world_scroll)
        if ecks < -getwidth()/2 then
            add(green_trees_to_delete, i)
        else
            draw_bg_element(ecks, elem.y, BIG_GREEN_TREE_TILE_IDS[elem.variant], BIG_GREEN_TREE_WIDTH, BIG_GREEN_TREE_HEIGHT)
        end
    end
    pink_trees_to_delete = {}
    for i=1,#big_pink_trees do
        elem = big_pink_trees[i]
        ecks = elem.x -(BIG_TREE_MOVE_FACTOR * world_scroll)
        if ecks < -getwidth()/2 then
            add(pink_trees_to_delete, i)
        else
            draw_bg_element(ecks, elem.y, BIG_PINK_TREE_TILE_IDS[elem.variant], BIG_PINK_TREE_WIDTH, BIG_PINK_TREE_HEIGHT)
        end
    end
    bushes_to_delete = {}
    for i=1,#bushes do
        elem = bushes[i]
        ecks = elem.x -(BUSH_MOVE_FACTOR * world_scroll)
        if ecks < -getwidth()/2 then
            add(bushes_to_delete, i)
        else
            draw_bg_element(ecks, elem.y, BUSH_TILE_IDS[elem.variant], BUSH_WIDTH, BUSH_HEIGHT)
        end
    end

    for i=1,#small_trees_to_delete do
        del(small_trees, small_trees_to_delete[i])
    end
    for i=1,#green_trees_to_delete do
        del(big_green_trees, green_trees_to_delete[i])
    end
    for i=1,#pink_trees_to_delete do
        del(big_pink_trees, pink_trees_to_delete[i])
    end
    for i=1,#bushes_to_delete do
        del(bushes, bushes_to_delete[i])
    end

    -- these will only add new ones if they're needed so no need to check here
    generate_small_trees()
    generate_big_trees()
    generate_bushes()
end

function draw_tails_counter()
    -- use some rects to hack in a white tip to the tail lol
    drawrect(11, 10, 10, 6)
    drawrect(15, 3, 3, 7)
    drawrect(18, 6, 3, 5)
    tails_level = h_spacing_tails + v_spacing_tails + speed_tails + enemy_tails
    color(25)
    drawimg(stamps_image, 0, 0, 0, 24, 23, 23)
    color()
    drawtext("x"..tostr(tails_level), TILE_SIZE*1.5, TILE_SIZE*0.25, TAILS_LEVEL_COLORS[tails_level], TAILS_LEVEL_OUTLINE_COLORS[tails_level], TILE_SIZE*2, TILE_SIZE, 0, 1)
end

function render()
    drawmap(background_tiles, -(BG_MOVE_FACTOR * world_scroll % BG_WIDTH), 0)
    drawmap(background_tiles, -(BG_MOVE_FACTOR * world_scroll % BG_WIDTH) + BG_WIDTH, 0)

    draw_bg_elements()
    draw_ground()

    if DEBUG_MODE then
        drawtext(tostr(player_x + world_scroll)..","..tostr(player_y), 0, 0, 8, 1)
        next_guy = hole_locations[1]
        drawtext(tostr(next_guy.x)..","..tostr(next_guy.y)..","..tostr(next_guy.size), 0, TILE_SIZE, 8, 1)
    end

    if state == STATES.Start then
        drawtext("Foxy Bird", 0, -TILE_SIZE, 18, 32, getwidth(), getheight(), 1, 1)
        drawtext("by Jill Katze", 0, getheight()-TILE_SIZE, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        drawtext("Version "..FOXY_VERSION, 0, getheight()-TILE_SIZE, 8, 1, getwidth(), TILE_SIZE, 0, 1)
        animate(yuzu, YUZU_ANIM_SPEED, "Gliding")
        drawsprite(yuzu, player_x, player_y)

        drawcursor(getwidth()/2 - 2.5*TILE_SIZE, getheight()/2 + (0.9 + menu_choice)*TILE_SIZE - TILE_SIZE)
        drawtext("START", 0, getheight()/2, 35, 41, getwidth(), TILE_SIZE, 1, 1)
        drawtext("DIFFICULTY", 0, getheight()/2 + TILE_SIZE, 31, 27, getwidth(), TILE_SIZE, 1, 1)
        drawtext("EXIT", 0, getheight()/2 + 2*TILE_SIZE, 11, 1, getwidth(), TILE_SIZE, 1, 1)
        draw_tails_counter()
    elseif state == STATES.Playing or state == STATES.Paused or state == STATES.Dead then
        if state == STATES.Playing then
            if frames_since_last_jump < JUMP_ANIM_FRAMES then
                animate(yuzu, 2*YUZU_ANIM_SPEED, "DoubleJump")
            else
                animate(yuzu, YUZU_ANIM_SPEED, "Gliding")
            end
            animate(enemy, ENEMY_ANIM_SPEED, "Idle")
        end

        for i=1,#hole_locations do
            hole_top = hole_locations[i].y
            hole_bottom = hole_locations[i].y + hole_locations[i].size
            length_top = 2 + int(hole_top/TILE_SIZE)
            length_bottom = 2 + int((getheight() - hole_bottom)/TILE_SIZE)
            top_offset = -(2*TILE_SIZE - (hole_top % TILE_SIZE)) -- move it up by a whole tile to hide the top of pipe graphics, then move it more to counteract the tile grid misalignment (math here looks funny bc i simplified it down from something that made more intuitive sense)
            top_has_enemy = hole_locations[i].has_enemy == 1 or hole_locations[i].has_enemy == 3
            bottom_has_enemy = hole_locations[i].has_enemy == 2 or hole_locations[i].has_enemy == 3
            draw_pipe(hole_locations[i].x - world_scroll, top_offset, length_top, false, top_has_enemy)
            draw_pipe(hole_locations[i].x - world_scroll, hole_bottom, length_bottom, bottom_has_enemy, false)
            if DEBUG_MODE then
                drawrect(hole_locations[i].x - world_scroll, 0, TILE_SIZE*2, hole_locations[i].y, "0x990000FF")
                drawrect(hole_locations[i].x - world_scroll, hole_locations[i].y, TILE_SIZE*2, hole_locations[i].size, "0x99FF0000")
                drawrect(hole_locations[i].x - world_scroll, hole_locations[i].y + hole_locations[i].size, TILE_SIZE*2, getheight() - (hole_locations[i].y + hole_locations[i].size), "0x990000FF")
            end
        end

        rot = MAX_ROTATION * player_y_vel / TERMINAL_VELOCITY
        drawsprite(yuzu, player_x, player_y, rot)
        if DEBUG_MODE then
            player_hitbox = get_player_hitbox_in_screenspace()
            drawrect(player_hitbox.x, player_hitbox.y, player_hitbox.width, player_hitbox.height, "0x9900FF00")
        end

        drawtext("SCORE", 0, 0, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        drawtext(tostr(score), 0, TILE_SIZE, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        drawtext("BEST", 13*TILE_SIZE, 0, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        drawtext(tostr(best_score), 13*TILE_SIZE, TILE_SIZE, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        draw_tails_counter()

        if state == STATES.Paused then
            drawrect(0, 0, getwidth(), getheight(), "0x88000000")
            drawtext("PAUSE", 0, 0, 8, 1, getwidth(), getheight() - TILE_SIZE*2, 1, 1)

            draw_pause_menu(-TILE_SIZE)
        elseif state == STATES.Dead then
            drawrect(0, 0, getwidth(), getheight(), "0x880000FF")
            drawtext(death_string, 0, 0, 8, 1, getwidth(), getheight() - TILE_SIZE*3, 1, 1)

            draw_pause_menu(-TILE_SIZE)
        end
    elseif state == STATES.TailsScreen then
        tails_level = h_spacing_tails + v_spacing_tails + speed_tails + enemy_tails
        drawtext("CURRENT LEVEL:", 0, 0, 8, 1, getwidth(), TILE_SIZE, 1, 1)
        drawtext(TAILS_LEVEL_NAMES[tails_level], 0, TILE_SIZE, TAILS_LEVEL_COLORS[tails_level], TAILS_LEVEL_OUTLINE_COLORS[tails_level], getwidth(), TILE_SIZE, 1, 1)
        drawrect(TILE_SIZE*9, TILE_SIZE*2, TILE_SIZE*12, TILE_SIZE*12, "0xFFBBBBBB")
        if menu_choice ~= 4 then
            hlite_x = TILE_SIZE*9
            hlite_y = TILE_SIZE*2
            if menu_choice == 1 or menu_choice == 3 then
                hlite_x = hlite_x + TILE_SIZE*6
            end
            if menu_choice == 2 or menu_choice == 3 then
                hlite_y = hlite_y + TILE_SIZE*6
            end
            drawrect(hlite_x, hlite_y, TILE_SIZE*6, TILE_SIZE*6, "0xFF00FFFF")
            drawrect(hlite_x + 4, hlite_y + 4, TILE_SIZE*6 - 8, TILE_SIZE*6 - 8, "0xFFFFFFFF")
        end
        drawtext("PIPE FREQ", TILE_SIZE*9, TILE_SIZE*2.5, 8, 1, TILE_SIZE*6, TILE_SIZE, 1, 1)
        if h_spacing_tails == 1 then
            color(25)
        else
            color(4)
        end
        drawimg(stamps_image, TILE_SIZE*11.25, TILE_SIZE*3.75, 0, 24, 23, 23)
        color()
        drawtext("MORE PIPES\nMORE SCORES", TILE_SIZE*9, TILE_SIZE*5, 8, 1, TILE_SIZE*6, TILE_SIZE*3, 1, 1)
        
        drawtext("GAP SIZE", TILE_SIZE*15, TILE_SIZE*2.5, 8, 1, TILE_SIZE*6, TILE_SIZE, 1, 1)
        color(25)
        for i=0,v_spacing_tails-1 do
            drawimg(stamps_image, TILE_SIZE*15.75 + TILE_SIZE*1.5*i, TILE_SIZE*3.75, 0, 24, 23, 23)
        end
        color(4)
        for i=v_spacing_tails,V_SPACING_TAILS_MAX-1 do
            drawimg(stamps_image, TILE_SIZE*15.75 + TILE_SIZE*1.5*i, TILE_SIZE*3.75, 0, 24, 23, 23)
        end
        color()
        drawtext("+"..tostr(0.25*v_spacing_tails).."X\nSCORE MULT", TILE_SIZE*15, TILE_SIZE*5, 8, 1, TILE_SIZE*6, TILE_SIZE*3, 1, 1)
        
        drawtext("H. SPEED", TILE_SIZE*9, TILE_SIZE*8.5, 8, 1, TILE_SIZE*6, TILE_SIZE, 1, 1)
        color(25)
        for i=0,speed_tails-1 do
            drawimg(stamps_image, TILE_SIZE*9.75 + TILE_SIZE*1.5*i, TILE_SIZE*9.75, 0, 24, 23, 23)
        end
        color(4)
        for i=speed_tails,SPEED_TAILS_MAX-1 do
            drawimg(stamps_image, TILE_SIZE*9.75 + TILE_SIZE*1.5*i, TILE_SIZE*9.75, 0, 24, 23, 23)
        end
        color()
        drawtext("MORE SPEED\nSCORE FASTER", TILE_SIZE*9, TILE_SIZE*11, 8, 1, TILE_SIZE*6, TILE_SIZE*3, 1, 1)
        
        drawtext("ENEMY FREQ", TILE_SIZE*15, TILE_SIZE*8.5, 8, 1, TILE_SIZE*6, TILE_SIZE, 1, 1)
        color(25)
        for i=0,enemy_tails-1 do
            drawimg(stamps_image, TILE_SIZE*16.5 + TILE_SIZE*1.5*i, TILE_SIZE*9.75, 0, 24, 23, 23)
        end
        color(4)
        for i=enemy_tails,ENEMY_TAILS_MAX-1 do
            drawimg(stamps_image, TILE_SIZE*16.5 + TILE_SIZE*1.5*i, TILE_SIZE*9.75, 0, 24, 23, 23)
        end
        color()
        drawtext("+"..tostr(0.25*enemy_tails).."X\nSCORE MULT", TILE_SIZE*15, TILE_SIZE*11, 8, 1, TILE_SIZE*6, TILE_SIZE*3, 1, 1)
        
        drawtext("DONE", 0, getheight()-2.5*TILE_SIZE, 35, 41, getwidth(), TILE_SIZE, 1, 1)

        if menu_choice ~= 4 then
            drawcursor(hlite_x + TILE_SIZE, hlite_y + TILE_SIZE*1.9) -- these were defined above. yay namespace leakage lol
        else
            drawcursor(getwidth()/2 - 2*TILE_SIZE, getheight()-2.5*TILE_SIZE)
        end
    elseif state == STATES.Exiting then
        -- drawtext("bye", 0, 0, 18, 32, getwidth(), getheight(), 1, 1)
        -- this looks silly but this lua subset doesn't have string formatting and as far as i can tell you can ONLY do opacity by supplying colors as hex strings
        -- and i don't feel like dealing with rolling my own hex conversion so i'll just layer multiples to do the fade lmao whatever
        for i=0,EXIT_FRAMES-exit_frames_remaining do
            drawrect(0, 0, getwidth(), getheight(), "0x11000000")
        end
    end
end