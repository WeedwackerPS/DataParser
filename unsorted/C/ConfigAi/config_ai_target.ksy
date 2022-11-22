types:
  config_ai_target:
    seq:
      - id: bit_field
        type: u1
      - id: default_target_prioritys
        type: array_of__enum__ai_target_system_type__length_u
        if: has_field_default_target_prioritys
      - id: specification_target_prioritys
        type: dict_of__aux_types__vlq_base128_le_s_array_of__enum__ai_target_system_type__length_u
        if: has_field_specification_target_prioritys
    instances:
      has_field_default_target_prioritys: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_specification_target_prioritys: # Field №1
        value: (bit_field & 0b10) != 0
