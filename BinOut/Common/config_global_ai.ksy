meta:
  id: config_global_ai
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../ArrayType/array_of__enum__neuron_name__length_u
    - ../../EnumType/enum__config_weather_type
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: avatar_melee_slot_radius
    type: f4
    if: has_field_avatar_melee_slot_radius
  - id: avoidance_radius
    type: f4
    if: has_field_avoidance_radius
  - id: avoidance_force
    type: f4
    if: has_field_avoidance_force
  - id: lod0
    type: f4
    if: has_field_lod0
  - id: lod1
    type: f4
    if: has_field_lod1
  - id: lod2
    type: f4
    if: has_field_lod2
  - id: sensing_ignore_camp_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_sensing_ignore_camp_i_ds
  - id: public_c_ds
    type: dict_of__aux_types__string_config_public_ai_skill_cd
    if: has_field_public_c_ds
  - id: default_weather_neuron_mapping
    type: dict_of__enum__config_weather_type_array_of__enum__neuron_name__length_u
    if: has_field_default_weather_neuron_mapping
  - id: use_server_pathfinding
    type: u1
    if: has_field_use_server_pathfinding
instances:
  has_field_avatar_melee_slot_radius: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_avoidance_radius: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_avoidance_force: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_lod0: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_lod1: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_lod2: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_sensing_ignore_camp_i_ds: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_public_c_ds: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_default_weather_neuron_mapping: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_use_server_pathfinding: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
types:
  dict_of__aux_types__string_config_public_ai_skill_cd:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_public_ai_skill_cd
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_public_ai_skill_cd:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_public_ai_skill_cd
  config_public_ai_skill_cd:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: min_interval
        type: f4
        if: has_field_min_interval
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_min_interval: # Field №1
        value: (bit_field & 0b10) != 0
  dict_of__enum__config_weather_type_array_of__enum__neuron_name__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__config_weather_type_array_of__enum__neuron_name__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__config_weather_type_array_of__enum__neuron_name__length_u:
    seq:
      - id: key
        type: enum__config_weather_type
      - id: value
        type: array_of__enum__neuron_name__length_u
