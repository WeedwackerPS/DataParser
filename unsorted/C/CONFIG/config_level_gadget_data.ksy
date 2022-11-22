types:
  config_level_gadget_data:
    seq:
      - id: bit_field
        type: u1
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: gadgets
        type: array_of__level_gadget__length_u
        if: has_field_gadgets
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_gadgets: # Field №1
        value: (bit_field & 0b10) != 0
