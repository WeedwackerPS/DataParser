meta:
  id: array_of__enum__velocity_force_type__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../../../EnumType/enum__velocity_force_type
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: enum__velocity_force_type
    repeat: expr
    repeat-expr: length.value
