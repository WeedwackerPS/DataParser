types:
  config_ai_buddy_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: buddy_config_i_ds
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_buddy_config_i_ds
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_buddy_config_i_ds: # Field №1
        value: (bit_field & 0b10) != 0
