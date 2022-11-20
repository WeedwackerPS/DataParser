meta:
  id: dvalin_s01path_effs_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: effect_start
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_start
  - id: effect_end
    type: aux_types::vlq_base128_le_s
    if: has_field_effect_end
  - id: eff_infos
    type: array_of__dvalin_s01path_effs_info__length_u
    if: has_field_eff_infos
instances:
  has_field_effect_start: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_effect_end: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_eff_infos: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  array_of__dvalin_s01path_effs_info__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: dvalin_s01path_effs_info
        repeat: expr
        repeat-expr: length.value
  dvalin_s01path_effs_info:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: fly_state
        type: aux_types::vlq_base128_le_s
        if: has_field_fly_state
      - id: effect_name
        type: aux_types::string
        if: has_field_effect_name
      - id: path_center
        type: u1
        if: has_field_path_center
      - id: interval_max
        type: aux_types::vlq_base128_le_s
        if: has_field_interval_max
      - id: interval_min
        type: aux_types::vlq_base128_le_s
        if: has_field_interval_min
      - id: num_max
        type: aux_types::vlq_base128_le_s
        if: has_field_num_max
      - id: num_min
        type: aux_types::vlq_base128_le_s
        if: has_field_num_min
      - id: range_max
        type: f4
        if: has_field_range_max
      - id: range_min
        type: f4
        if: has_field_range_min
      - id: eular_max
        type: f4
        if: has_field_eular_max
      - id: eular_min
        type: f4
        if: has_field_eular_min
      - id: y_scale
        type: f4
        if: has_field_y_scale
    instances:
      has_field_fly_state: # Field №0
        value: (bit_field.value & 0b000000000001) != 0
      has_field_effect_name: # Field №1
        value: (bit_field.value & 0b000000000010) != 0
      has_field_path_center: # Field №2
        value: (bit_field.value & 0b000000000100) != 0
      has_field_interval_max: # Field №3
        value: (bit_field.value & 0b000000001000) != 0
      has_field_interval_min: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_num_max: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_num_min: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_range_max: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_range_min: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_eular_max: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_eular_min: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_y_scale: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
