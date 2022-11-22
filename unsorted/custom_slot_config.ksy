types:
  custom_slot_config:
    seq:
      - id: bit_field
        type: u1
      - id: slot_id
        type: aux_types::vlq_base128_le_u
        if: has_field_slot_id
      - id: optional_parts_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_optional_parts_id_list
      - id: is_necessary
        type: u1
        if: has_field_is_necessary
      - id: default_parts_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_default_parts_id_list
      - id: init_parts_id
        type: aux_types::vlq_base128_le_u
        if: has_field_init_parts_id
    instances:
      has_field_slot_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_optional_parts_id_list: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_is_necessary: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_default_parts_id_list: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_init_parts_id: # Field №4
        value: (bit_field & 0b10000) != 0
