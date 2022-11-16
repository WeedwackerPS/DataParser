meta:
  id: enum__dialog_type
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
    enum: dialog_type
enums:
  dialog_type:
    0: lock_frame
    1: bubble
    2: narration
    3: other
