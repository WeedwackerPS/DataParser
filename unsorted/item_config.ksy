types:
  item_config:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: name
        type: aux_types::vlq_base128_le_u
        if: has_field_name
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: item_type
        type: enum__item_type
        if: has_field_item_type
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
      - id: rank
        type: aux_types::vlq_base128_le_u
        if: has_field_rank
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: dropable
        type: u1
        if: has_field_dropable
      - id: use_level
        type: aux_types::vlq_base128_le_u
        if: has_field_use_level
      - id: global_item_limit
        type: aux_types::vlq_base128_le_u
        if: has_field_global_item_limit
    instances:
      has_field_id: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_name: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_desc: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_icon: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_item_type: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_weight: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_rank: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_gadget_id: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_dropable: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_use_level: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_global_item_limit: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
