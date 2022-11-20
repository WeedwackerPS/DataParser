meta:
  id: enum__draft_exec_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: draft_exec_type
enums:
  draft_exec_type:
    0: draft_exec_none
    1: draft_exec_gallery
    2: draft_exec_hide_and_seek
