types:
  config_dialog_group:
    seq:
      - id: bit_field
        type: u1
      - id: talk_id
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_id
      - id: type
        type: enum__dialog_group_scheme_type
        if: has_field_type
      - id: dialog_list
        type: array_of__config_dialog_scheme__length_u
        if: has_field_dialog_list
    instances:
      has_field_talk_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_type: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_dialog_list: # Field №2
        value: (bit_field & 0b100) != 0
