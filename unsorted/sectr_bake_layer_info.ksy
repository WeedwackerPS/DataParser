types:
  sectr_bake_layer_info:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: invisible_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_invisible_list
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_invisible_list: # Field №1
        value: (bit_field & 0b10) != 0
