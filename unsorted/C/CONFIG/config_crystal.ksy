types:
  config_crystal:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: gain_speed
        type: aux_types::vlq_base128_le_u
        if: has_field_gain_speed
      - id: drain_speed
        type: aux_types::vlq_base128_le_u
        if: has_field_drain_speed
      - id: resonate_levels
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_resonate_levels
      - id: burst_resonate
        type: aux_types::vlq_base128_le_u
        if: has_field_burst_resonate
      - id: burst_skill
        type: aux_types::string
        if: has_field_burst_skill
      - id: burst_time
        type: aux_types::vlq_base128_le_u
        if: has_field_burst_time
      - id: respawn_time
        type: aux_types::vlq_base128_le_u
        if: has_field_respawn_time
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_gain_speed: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_drain_speed: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_resonate_levels: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_burst_resonate: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_burst_skill: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_burst_time: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_respawn_time: # Field №7
        value: (bit_field & 0b10000000) != 0
