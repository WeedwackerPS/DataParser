types:
  config_guide_has_item_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: item_id_lists
        type: array_of__array_of__aux_types__vlq_base128_le_u__length_u__length_u
        if: has_field_item_id_lists
      - id: material_type_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_material_type_list
      - id: type
        type: enum__guide_item_type
        if: has_field_type
      - id: not_have
        type: u1
        if: has_field_not_have
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_item_id_lists: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_material_type_list: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_type: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_not_have: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_value: # Field №4
        value: (bit_field & 0b10000) != 0
