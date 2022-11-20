meta:
  id: array_of__prop_val_config__length_s
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__fight_prop_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: prop_val_config
    repeat: expr
    repeat-expr: length.value
types:
  prop_val_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: prop_type
        type: enum__fight_prop_type
        if: has_field_prop_type
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_prop_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_value: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)