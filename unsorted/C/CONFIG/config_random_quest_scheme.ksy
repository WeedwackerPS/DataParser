types:
  config_random_quest_scheme:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: free_style_dic
        type: dict_of__aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_free_style_dic
      - id: random_free_style_dic
        type: dict_of__aux_types__string_array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_random_free_style_dic
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_free_style_dic: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_random_free_style_dic: # Field №2
        value: (bit_field & 0b100) != 0
