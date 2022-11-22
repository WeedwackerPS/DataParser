types:
  indicator_condition_gadget_state:
    seq:
      - id: base
        type: indicator_condition
      - id: bit_field
        type: u1
      - id: from_state
        type: aux_types::vlq_base128_le_s
        if: has_field_from_state
      - id: to_state
        type: aux_types::vlq_base128_le_s
        if: has_field_to_state
    instances:
      has_field_from_state: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_to_state: # Field №1
        value: (bit_field & 0b10) != 0
