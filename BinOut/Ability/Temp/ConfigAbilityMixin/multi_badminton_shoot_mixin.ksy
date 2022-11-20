meta:
  id: multi_badminton_shoot_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__string__length_u
    - ../../../Common/Disp/disp__config_born_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: min_interval
    type: f4
    if: has_field_min_interval
  - id: max_interval
    type: f4
    if: has_field_max_interval
  - id: extra_shoot_interval
    type: f4
    if: has_field_extra_shoot_interval
  - id: extra_shoot_tag
    type: array_of__aux_types__string__length_u
    if: has_field_extra_shoot_tag
  - id: bullets
    type: array_of__multi_badminton_bullet__length_u
    if: has_field_bullets
  - id: tres_bullet_id
    type: aux_types::vlq_base128_le_s
    if: has_field_tres_bullet_id
  - id: normal_bullet_id
    type: aux_types::vlq_base128_le_s
    if: has_field_normal_bullet_id
  - id: trace_bullet_id
    type: aux_types::vlq_base128_le_s
    if: has_field_trace_bullet_id
  - id: trace_target
    type: array_of__aux_types__string__length_u
    if: has_field_trace_target
  - id: per_change_weight
    type: aux_types::vlq_base128_le_s
    if: has_field_per_change_weight
  - id: born
    type: disp__config_born_type
    if: has_field_born
instances:
  has_field_min_interval: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_max_interval: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_extra_shoot_interval: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_extra_shoot_tag: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_bullets: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_tres_bullet_id: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_normal_bullet_id: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_trace_bullet_id: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_trace_target: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_per_change_weight: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_born: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  array_of__multi_badminton_bullet__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: multi_badminton_bullet
        repeat: expr
        repeat-expr: length.value
  multi_badminton_bullet:
    seq:
      - id: bit_field
        type: u1
      - id: bullet_id
        type: aux_types::vlq_base128_le_u
        if: has_field_bullet_id
      - id: weight
        type: aux_types::vlq_base128_le_s
        if: has_field_weight
      - id: speed
        type: aux_types::vlq_base128_le_s
        if: has_field_speed
    instances:
      has_field_bullet_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_weight: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_speed: # Field №2
        value: (bit_field & 0b100) != 0
