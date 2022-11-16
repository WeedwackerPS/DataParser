meta:
  id: enum__trigger_type
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
    enum: trigger_type
enums:
  trigger_type:
    0: trigger_once
    1: trigger_no_repeat
    2: trigger_always
