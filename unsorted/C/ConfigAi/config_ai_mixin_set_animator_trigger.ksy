types:
  config_ai_mixin_set_animator_trigger:
    seq:
      - id: bit_field
        type: u1
      - id: trigger_id
        type: aux_types::string
        if: has_field_trigger_id
    instances:
      has_field_trigger_id: # Field №0
        value: (bit_field & 0b1) != 0
