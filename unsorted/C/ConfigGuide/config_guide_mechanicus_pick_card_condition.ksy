types:
  config_guide_mechanicus_pick_card_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
      - id: is_select
        type: u1
        if: has_field_is_select
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_select: # Field №1
        value: (bit_field & 0b10) != 0
