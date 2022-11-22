meta:
  id: array_of__config_can_change_avatar__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_can_change_avatar
    repeat: expr
    repeat-expr: length.value
types:
  config_can_change_avatar:
    seq:
      - id: bit_field
        type: u1
      - id: normalize_start
        type: f4
        if: has_field_normalize_start
      - id: normalize_end
        type: f4
        if: has_field_normalize_end
    instances:
      has_field_normalize_start: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_normalize_end: # Field №1
        value: (bit_field & 0b10) != 0
