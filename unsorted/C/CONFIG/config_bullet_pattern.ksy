types:
  config_bullet_pattern:
    seq:
      - id: base
        type: config_gadget_pattern
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: trigger_actions
        type: array_of__disp__config_base_gadget_trigger_action__length_u
        if: has_field_trigger_actions
      - id: trigger_life_over_actions
        type: array_of__disp__config_base_gadget_trigger_action__length_u
        if: has_field_trigger_life_over_actions
      - id: kill_by_other
        type: u1
        if: has_field_kill_by_other
      - id: die_delay_time
        type: f4
        if: has_field_die_delay_time
      - id: check_grass
        type: u1
        if: has_field_check_grass
      - id: check_water
        type: u1
        if: has_field_check_water
      - id: check_interval
        type: f4
        if: has_field_check_interval
      - id: need_create_gw
        type: u1
        if: has_field_need_create_gw
      - id: fire_ai_sound_event
        type: u1
        if: has_field_fire_ai_sound_event
      - id: max_auto_kill_dist
        type: f4
        if: has_field_max_auto_kill_dist
      - id: enable_collision_delay
        type: f4
        if: has_field_enable_collision_delay
    instances:
      has_field_trigger_actions: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_trigger_life_over_actions: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_kill_by_other: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_die_delay_time: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_check_grass: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_check_water: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_check_interval: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_need_create_gw: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_fire_ai_sound_event: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_max_auto_kill_dist: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_enable_collision_delay: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
      # Base class fields
      collision:
        value: base.collision
