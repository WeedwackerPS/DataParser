types:
  config_ai_mixin_set_controller_parameter:
    seq:
      - id: bit_field
        type: u1
      - id: entity_types
        type: array_of__enum__entity_type__length_u
        if: has_field_entity_types
      - id: on_success
        type: config_ai_mixin_actions
        if: has_field_on_success
      - id: on_fail
        type: config_ai_mixin_actions
        if: has_field_on_fail
    instances:
      has_field_entity_types: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_on_success: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_on_fail: # Field №2
        value: (bit_field & 0b100) != 0
