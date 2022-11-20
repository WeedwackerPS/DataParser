meta:
  id: modify_damage_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../aux_types
    - ../../../../EnumType/enum__attack_type
    - ../../../../EnumType/enum__element_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: anim_event_names
    type: array_of__aux_types__string__length_u
    if: has_field_anim_event_names
  - id: attack_tags
    type: array_of__aux_types__string__length_u
    if: has_field_attack_tags
  - id: attack_type
    type: enum__attack_type
    if: has_field_attack_type
  - id: ignore_event_info
    type: u1
    if: has_field_ignore_event_info
  - id: damage_percentage
    type: aux_types::dynamic_float
    if: has_field_damage_percentage
  - id: damage_percentage_ratio
    type: aux_types::dynamic_float
    if: has_field_damage_percentage_ratio
  - id: damage_extra
    type: aux_types::dynamic_float
    if: has_field_damage_extra
  - id: bonus_critical
    type: aux_types::dynamic_float
    if: has_field_bonus_critical
  - id: bonus_critical_hurt
    type: aux_types::dynamic_float
    if: has_field_bonus_critical_hurt
  - id: element_type_modifier
    type: element_type_modifier
    if: has_field_element_type_modifier
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
  - id: true_damage
    type: u1
    if: has_field_true_damage
instances:
  has_field_anim_event_names: # Field №0
    value: (bit_field.value & 0b000000000001) != 0
  has_field_attack_tags: # Field №1
    value: (bit_field.value & 0b000000000010) != 0
  has_field_attack_type: # Field №2
    value: (bit_field.value & 0b000000000100) != 0
  has_field_ignore_event_info: # Field №3
    value: (bit_field.value & 0b000000001000) != 0
  has_field_damage_percentage: # Field №4
    value: (bit_field.value & 0b000000010000) != 0
  has_field_damage_percentage_ratio: # Field №5
    value: (bit_field.value & 0b000000100000) != 0
  has_field_damage_extra: # Field №6
    value: (bit_field.value & 0b000001000000) != 0
  has_field_bonus_critical: # Field №7
    value: (bit_field.value & 0b000010000000) != 0
  has_field_bonus_critical_hurt: # Field №8
    value: (bit_field.value & 0b000100000000) != 0
  has_field_element_type_modifier: # Field №9
    value: (bit_field.value & 0b001000000000) != 0
  has_field_predicates: # Field №10
    value: (bit_field.value & 0b010000000000) != 0
  has_field_true_damage: # Field №11
    value: (bit_field.value & 0b100000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  element_type_modifier:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b1) != 0
