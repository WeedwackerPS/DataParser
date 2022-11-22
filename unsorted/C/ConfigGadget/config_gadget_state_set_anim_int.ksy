types:
  config_gadget_state_set_anim_int:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: int_id
        type: aux_types::string
        if: has_field_int_id
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
      - id: sync_state
        type: u1
        if: has_field_sync_state
    instances:
      has_field_int_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_sync_state: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
