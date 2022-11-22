meta:
  id: array_of__config_equip_reattach__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_equip_reattach
    repeat: expr
    repeat-expr: length.value
types:
  config_equip_reattach:
    seq:
      - id: bit_field
        type: u1
      - id: equip
        type: aux_types::string
        if: has_field_equip
      - id: target_point
        type: aux_types::string
        if: has_field_target_point
      - id: normalize_start
        type: f4
        if: has_field_normalize_start
      - id: normalize_end
        type: f4
        if: has_field_normalize_end
    instances:
      has_field_equip: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_target_point: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_normalize_start: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_normalize_end: # Field №3
        value: (bit_field & 0b1000) != 0
