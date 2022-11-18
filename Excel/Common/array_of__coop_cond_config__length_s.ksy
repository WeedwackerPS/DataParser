meta:
  id: array_of__coop_cond_config__length_s
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../EnumType/enum__coop_task_cond_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_s
  - id: data
    type: coop_cond_config
    repeat: expr
    repeat-expr: length.value
types:
  coop_cond_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: cond_type
        type: enum__coop_task_cond_type
        if: has_field_cond_type
      - id: args
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_args
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_args: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)