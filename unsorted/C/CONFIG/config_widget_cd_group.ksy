types:
  config_widget_cd_group:
    seq:
      - id: bit_field
        type: u1
      - id: is_under_time_scale
        type: u1
        if: has_field_is_under_time_scale
      - id: cool_down_success
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down_success
      - id: cool_down_fail
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down_fail
    instances:
      has_field_is_under_time_scale: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_cool_down_success: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_cool_down_fail: # Field №2
        value: (bit_field & 0b100) != 0
