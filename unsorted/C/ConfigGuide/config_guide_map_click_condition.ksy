types:
  config_guide_map_click_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: mark_id
        type: aux_types::vlq_base128_le_u
        if: has_field_mark_id
      - id: only_single_click
        type: u1
        if: has_field_only_single_click
    instances:
      has_field_mark_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_only_single_click: # Field №1
        value: (bit_field & 0b10) != 0
