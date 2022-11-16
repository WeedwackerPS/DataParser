meta:
  id: enum__exclusive_platform_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: exclusive_platform_type
enums:
  exclusive_platform_type:
    0: exclusive_none
    1: exclusive_psn
