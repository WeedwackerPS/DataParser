meta:
  id: circle_barrage_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: bullet_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bullet_id
  - id: inner_radius
    type: f4
    if: has_field_inner_radius
  - id: cut_num
    type: aux_types::vlq_base128_le_s
    if: has_field_cut_num
  - id: wave_num
    type: aux_types::vlq_base128_le_s
    if: has_field_wave_num
  - id: wave_cd
    type: f4
    if: has_field_wave_cd
  - id: wavebullet_num
    type: aux_types::vlq_base128_le_s
    if: has_field_wavebullet_num
  - id: waveangle
    type: f4
    if: has_field_waveangle
  - id: trigger_cd
    type: f4
    if: has_field_trigger_cd
  - id: shoot_point
    type: aux_types::string
    if: has_field_shoot_point
instances:
  has_field_bullet_id: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_inner_radius: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_cut_num: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_wave_num: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_wave_cd: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_wavebullet_num: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_waveangle: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_trigger_cd: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_shoot_point: # Field №8
    value: (bit_field.value & 0b100000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
