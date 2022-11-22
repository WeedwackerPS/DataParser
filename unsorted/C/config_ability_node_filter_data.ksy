types:
  config_ability_node_filter_data:
    seq:
      - id: bit_field
        type: u1
      - id: runtime_i_ds
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_runtime_i_ds
      - id: entity_types
        type: array_of__enum__entity_type__length_u
        if: has_field_entity_types
      - id: distance
        type: aux_types::vlq_base128_le_s
        if: has_field_distance
      - id: config_i_ds
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_config_i_ds
      - id: ability_names
        type: array_of__aux_types__string__length_u
        if: has_field_ability_names
      - id: modifier_names
        type: array_of__aux_types__string__length_u
        if: has_field_modifier_names
    instances:
      has_field_runtime_i_ds: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_entity_types: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_distance: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_config_i_ds: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_ability_names: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_modifier_names: # Field №5
        value: (bit_field & 0b100000) != 0
