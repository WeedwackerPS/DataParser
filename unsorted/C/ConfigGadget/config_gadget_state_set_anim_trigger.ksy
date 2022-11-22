types:
  config_gadget_state_set_anim_trigger:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: trigger_id
        type: aux_types::string
        if: has_field_trigger_id
    instances:
      has_field_trigger_id: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
