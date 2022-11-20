meta:
  id: config_base_attack_pattern
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__check_hit_layer_type
    - ../../../EnumType/enum__entity_attack_filter
    - ../../../EnumType/enum__trigger_type
    - ../config_hit_scene
    - ../Disp/disp__config_born_type
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: trigger_type
    type: enum__trigger_type
    if: has_field_trigger_type
  - id: check_hit_layer_type
    type: enum__check_hit_layer_type
    if: has_field_check_hit_layer_type
  - id: hit_scene
    type: config_hit_scene
    if: has_field_hit_scene
  - id: trigger_cd
    type: f4
    if: has_field_trigger_cd
  - id: filter_by_frame
    type: u1
    if: has_field_filter_by_frame
  - id: ignore_massive
    type: u1
    if: has_field_ignore_massive
  - id: entity_attack_filter
    type: enum__entity_attack_filter
    if: has_field_entity_attack_filter
  - id: massive_attack_ratio
    type: f4
    if: has_field_massive_attack_ratio
  - id: born
    type: disp__config_born_type
    if: has_field_born
instances:
  has_field_trigger_type: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_check_hit_layer_type: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_hit_scene: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_trigger_cd: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_filter_by_frame: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_ignore_massive: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_entity_attack_filter: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_massive_attack_ratio: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_born: # Field №8
    value: (bit_field.value & 0b100000000) != 0