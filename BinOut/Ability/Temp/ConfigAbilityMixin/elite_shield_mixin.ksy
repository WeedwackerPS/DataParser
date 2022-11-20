meta:
  id: elite_shield_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../Common/array_of__disp__config_ability_action__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: shield_type
    type: aux_types::string
    if: has_field_shield_type
  - id: shield_angle
    type: aux_types::dynamic_float
    if: has_field_shield_angle
  - id: shield_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_shield_hp_ratio
  - id: shield_hp
    type: aux_types::dynamic_float
    if: has_field_shield_hp
  - id: cost_shield_ratio_name
    type: aux_types::string
    if: has_field_cost_shield_ratio_name
  - id: show_damage_text
    type: aux_types::string
    if: has_field_show_damage_text
  - id: on_shield_broken
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_shield_broken
  - id: amount_by_get_damage
    type: aux_types::dynamic_float
    if: has_field_amount_by_get_damage
  - id: target_mute_hit_effect
    type: u1
    if: has_field_target_mute_hit_effect
  - id: infinite_shield
    type: u1
    if: has_field_infinite_shield
  - id: heal_limited_by_caster_max_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_heal_limited_by_caster_max_hp_ratio
instances:
  has_field_shield_type: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_shield_angle: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_shield_hp_ratio: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_shield_hp: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_cost_shield_ratio_name: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_show_damage_text: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_on_shield_broken: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_amount_by_get_damage: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_target_mute_hit_effect: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_infinite_shield: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_heal_limited_by_caster_max_hp_ratio: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
