meta:
  id: tile_complex_manager_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
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
  - id: src_camp
    type: aux_types::vlq_base128_le_u
    if: has_field_src_camp
  - id: attack_info
    type: config_attack_info
    if: has_field_attack_info
instances:
  has_field_attack_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_interval: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_src_camp: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_attack_info: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
