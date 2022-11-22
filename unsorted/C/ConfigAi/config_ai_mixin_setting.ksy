types:
  config_ai_mixin_setting:
    seq:
      - id: bit_field
        type: u1
      - id: set_controller_parameter_on_be_hit_by_entity_type
        type: array_of__config_ai_mixin_set_controller_condition__length_u
        if: has_field_set_controller_parameter_on_be_hit_by_entity_type
    instances:
      has_field_set_controller_parameter_on_be_hit_by_entity_type: # Field №0
        value: (bit_field & 0b1) != 0
