meta:
  id: enum__progress_show_type
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
    enum: progress_show_type
enums:
  progress_show_type:
    0: progresstype_none
    1: progresstype_finish
    2: progresstype_thousand_to_one
