types:
  config_effect_path:
    seq:
      - id: bit_field
        type: u1
      - id: effect_paths
        type: dict_of__aux_types__string_aux_types__vlq_base128_le_u
        if: has_field_effect_paths
    instances:
      has_field_effect_paths: # Field №0
        value: (bit_field & 0b1) != 0
