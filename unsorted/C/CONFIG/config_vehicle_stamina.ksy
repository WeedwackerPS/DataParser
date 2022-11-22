types:
  config_vehicle_stamina:
    seq:
      - id: bit_field
        type: u1
      - id: stamina_upper_limit
        type: f4
        if: has_field_stamina_upper_limit
      - id: stamina_recover_speed
        type: f4
        if: has_field_stamina_recover_speed
      - id: stamina_recover_wait_time
        type: f4
        if: has_field_stamina_recover_wait_time
      - id: extra_stamina_upper_limit
        type: f4
        if: has_field_extra_stamina_upper_limit
      - id: sprint_stamina_cost
        type: f4
        if: has_field_sprint_stamina_cost
      - id: dash_stamina_cost
        type: f4
        if: has_field_dash_stamina_cost
    instances:
      has_field_stamina_upper_limit: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_stamina_recover_speed: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_stamina_recover_wait_time: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_extra_stamina_upper_limit: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_sprint_stamina_cost: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_dash_stamina_cost: # Field №5
        value: (bit_field & 0b100000) != 0
