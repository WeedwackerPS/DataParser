types:
  config_guide_show_tutorial_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: tutorial_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tutorial_id
    instances:
      has_field_tutorial_id: # Field №0
        value: (bit_field & 0b1) != 0
