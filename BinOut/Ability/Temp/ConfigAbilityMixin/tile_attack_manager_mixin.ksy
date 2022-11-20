meta:
  id: tile_attack_manager_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../EnumType/enum__tile_camp_type
    - ../../../Common/config_attack_info
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: attack_id
    type: aux_types::string
    if: has_field_attack_id
  - id: interval
    type: f4
    if: has_field_interval
  - id: camp_type
    type: enum__tile_camp_type
    if: has_field_camp_type
  - id: fix_camp
    type: aux_types::vlq_base128_le_u
    if: has_field_fix_camp
  - id: authority_handle
    type: u1
    if: has_field_authority_handle
  - id: attack_info
    type: config_attack_info
    if: has_field_attack_info
instances:
  has_field_attack_id: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_interval: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_camp_type: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_fix_camp: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_authority_handle: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_attack_info: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
