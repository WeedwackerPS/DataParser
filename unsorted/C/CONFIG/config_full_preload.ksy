types:
  config_full_preload:
    seq:
      - id: bit_field
        type: u1
      - id: platform_preload_mapping
        type: config_platform_preload_mapping
        if: has_field_platform_preload_mapping
      - id: common_preload
        type: config_preload
        if: has_field_common_preload
      - id: entities_preload
        type: dict_of__aux_types__vlq_base128_le_u_config_preload
        if: has_field_entities_preload
    instances:
      has_field_platform_preload_mapping: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_common_preload: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_entities_preload: # Field №2
        value: (bit_field & 0b100) != 0
