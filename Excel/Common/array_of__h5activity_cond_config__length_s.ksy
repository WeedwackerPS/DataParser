meta:
  id: array_of__h5activity_cond_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - ../../EnumType/enum__h5activity_cond_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: h5activity_cond_config
    repeat: expr
    repeat-expr: length.value
types:
  h5activity_cond_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__h5activity_cond_type
        if: has_field_type
      - id: param_str
        type: aux_types::string
        if: has_field_param_str
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param_str: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
