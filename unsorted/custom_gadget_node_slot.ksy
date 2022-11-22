types:
  custom_gadget_node_slot:
    seq:
      - id: bit_field
        type: u1
      - id: named_transform
        type: aux_types::string
        if: has_field_named_transform
      - id: slot_type
        type: enum__custom_gadget_node_slot_type
        if: has_field_slot_type
      - id: slot_config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_slot_config_id
    instances:
      has_field_named_transform: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_slot_type: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_slot_config_id: # Field №2
        value: (bit_field & 0b100) != 0
