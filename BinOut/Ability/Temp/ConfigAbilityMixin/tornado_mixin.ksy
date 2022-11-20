meta:
  id: tornado_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../EnumType/enum__target_type
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_born_type
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: stage_zone
    type: array_of__config_tornado_zone__length_u
    if: has_field_stage_zone
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: target_type
    type: enum__target_type
    if: has_field_target_type
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: enviro_wind_strength
    type: aux_types::dynamic_float
    if: has_field_enviro_wind_strength
  - id: enviro_wind_radius
    type: aux_types::dynamic_float
    if: has_field_enviro_wind_radius
instances:
  has_field_stage_zone: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_predicates: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_target_type: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_born: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_enviro_wind_strength: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_enviro_wind_radius: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  array_of__config_tornado_zone__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_tornado_zone
        repeat: expr
        repeat-expr: length.value
  config_tornado_zone:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: shape_name
        type: aux_types::string
        if: has_field_shape_name
      - id: offset
        type: vector
        if: has_field_offset
      - id: dir
        type: vector
        if: has_field_dir
      - id: strength
        type: aux_types::dynamic_float
        if: has_field_strength
      - id: attenuation
        type: aux_types::dynamic_float
        if: has_field_attenuation
      - id: inner_radius
        type: aux_types::dynamic_float
        if: has_field_inner_radius
      - id: modifier_name
        type: aux_types::string
        if: has_field_modifier_name
      - id: max_num
        type: aux_types::vlq_base128_le_u
        if: has_field_max_num
      - id: force_growth
        type: f4
        if: has_field_force_growth
      - id: force_fallen
        type: f4
        if: has_field_force_fallen
      - id: duration
        type: f4
        if: has_field_duration
    instances:
      has_field_shape_name: # Field №0
        value: (bit_field.value & 0b00000000001) != 0
      has_field_offset: # Field №1
        value: (bit_field.value & 0b00000000010) != 0
      has_field_dir: # Field №2
        value: (bit_field.value & 0b00000000100) != 0
      has_field_strength: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_attenuation: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_inner_radius: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_modifier_name: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_max_num: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_force_growth: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_force_fallen: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_duration: # Field №10
        value: (bit_field.value & 0b10000000000) != 0