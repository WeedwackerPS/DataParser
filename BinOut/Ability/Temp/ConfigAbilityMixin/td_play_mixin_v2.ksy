meta:
  id: td_play_mixin_v2
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__control_part_target_type
    - ../../../../EnumType/enum__td_play_tower_type
    - ../Common/array_of__disp__config_ability_action__length_u
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: tower_type
    type: enum__td_play_tower_type
    if: has_field_tower_type
  - id: base_cd
    type: f4
    if: has_field_base_cd
  - id: base_attack_range
    type: f4
    if: has_field_base_attack_range
  - id: on_fire_actions
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_fire_actions
  - id: bullet_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bullet_id
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: part_root_names
    type: array_of__aux_types__string__length_u
    if: has_field_part_root_names
  - id: target_type
    type: enum__control_part_target_type
    if: has_field_target_type
instances:
  has_field_tower_type: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_base_cd: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_base_attack_range: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_on_fire_actions: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_bullet_id: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_born: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_part_root_names: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_target_type: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
