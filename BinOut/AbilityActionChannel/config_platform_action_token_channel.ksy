meta:
  id: config_platform_action_token_channel
  endian: le
  license: GPLv2
  imports:
    - ../../ArrayType/array_of__enum__entity_type__length_u
    - ../Common/config_ability_action_token
    - ../../EnumType/enum__entity_token_action_type
    - ../../EnumType/enum__action_token_source_type
    - ../Common/config_action_token_channel
seq:
  - id: bit_field
    type: u1
  - id: high_entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_high_entity_types
  - id: low_entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_low_entity_types
  - id: entity_type_token
    type: dict_of__enum__entity_token_action_type_config_entity_action_token_group
    if: has_field_entity_type_token
  - id: default_cfg
    type: config_action_token_channel_group_info
    if: has_field_default_cfg
  - id: platform_cfg
    type: dict_of__aux_types__string_config_action_token_channel_group_info
    if: has_field_platform_cfg
instances:
  has_field_high_entity_types: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_low_entity_types: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_entity_type_token: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_default_cfg: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_platform_cfg: # Field №4
    value: (bit_field & 0b10000) != 0
types:
  config_action_token_channel_group_info:
    seq:
      - id: bit_field
        type: u1
      - id: low_level_dist
        type: f4
        if: has_field_low_level_dist
      - id: low_level_dist_token
        type: dict_of__enum__entity_token_action_type_config_entity_action_token_group
        if: has_field_low_level_dist_token
      - id: action_source_token
        type: dict_of__enum__action_token_source_type_dict_of__enum__entity_token_action_type_config_entity_action_token_group
        if: has_field_action_source_token
      - id: cfg
        type: dict_of__aux_types__vlq_base128_le_s_config_action_token_channel
        if: has_field_cfg
    instances:
      has_field_low_level_dist: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_low_level_dist_token: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_action_source_token: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_cfg: # Field №3
        value: (bit_field & 0b1000) != 0
  config_entity_action_token_group:
    seq:
      - id: bit_field
        type: u1
      - id: low_entity_token
        type: config_ability_action_token
        if: has_field_low_entity_token
      - id: other_entity_token
        type: config_ability_action_token
        if: has_field_other_entity_token
      - id: use_high_entity_types
        type: u1
        if: has_field_use_high_entity_types
    instances:
      has_field_low_entity_token: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_other_entity_token: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_use_high_entity_types: # Field №2
        value: (bit_field & 0b100) != 0
  dict_of__enum__entity_token_action_type_config_entity_action_token_group:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__entity_token_action_type_config_entity_action_token_group
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__entity_token_action_type_config_entity_action_token_group:
    seq:
      - id: key
        type: enum__entity_token_action_type
      - id: value
        type: config_entity_action_token_group
  dict_of__aux_types__vlq_base128_le_s_config_action_token_channel:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_config_action_token_channel
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_config_action_token_channel:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: config_action_token_channel
  dict_of__enum__action_token_source_type_dict_of__enum__entity_token_action_type_config_entity_action_token_group:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__action_token_source_type_dict_of__enum__entity_token_action_type_config_entity_action_token_group
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__action_token_source_type_dict_of__enum__entity_token_action_type_config_entity_action_token_group:
    seq:
      - id: key
        type: enum__action_token_source_type
      - id: value
        type: dict_of__enum__entity_token_action_type_config_entity_action_token_group
  dict_of__aux_types__string_config_action_token_channel_group_info:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_action_token_channel_group_info
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_action_token_channel_group_info:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_action_token_channel_group_info
