types:
  config_random_talk_scheme:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: free_style_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_free_style_list
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_free_style_list: # Field №1
        value: (bit_field & 0b10) != 0
