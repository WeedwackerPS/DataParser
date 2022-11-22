types:
  config_gadget_state_fire_ai_sound:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: volume
        type: f4
        if: has_field_volume
    instances:
      has_field_volume: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
