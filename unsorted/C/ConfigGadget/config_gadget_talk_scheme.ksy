types:
  config_gadget_talk_scheme:
    seq:
      - id: bit_field
        type: u1
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: talks
        type: array_of__config_talk_scheme__length_u
        if: has_field_talks
    instances:
      has_field_config_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_group_id: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_talks: # Field №2
        value: (bit_field & 0b100) != 0
