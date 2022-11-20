meta:
  id: reject_attack_mixin_v2
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../EnumType/enum__reject_event_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: attack_tags
    type: array_of__aux_types__string__length_u
    if: has_field_attack_tags
  - id: limit_time
    type: f4
    if: has_field_limit_time
  - id: type
    type: enum__reject_event_type
    if: has_field_type
  - id: is_white_list
    type: u1
    if: has_field_is_white_list
instances:
  has_field_attack_tags: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_limit_time: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_type: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_is_white_list: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
