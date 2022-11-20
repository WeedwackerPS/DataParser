meta:
  id: td_play_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__control_part_target_type
    - ../../../../EnumType/enum__td_play_tower_type
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
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
  - id: tower_modifier_name
    type: aux_types::string
    if: has_field_tower_modifier_name
  - id: bullet_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_bullet_i_ds
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
    value: (bit_field.value & 0b000000001) != 0
  has_field_base_cd: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_base_attack_range: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_on_fire_actions: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_tower_modifier_name: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_bullet_i_ds: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_born: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_part_root_names: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_target_type: # Field №8
    value: (bit_field.value & 0b100000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
