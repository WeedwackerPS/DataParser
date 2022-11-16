meta:
  id: enum__position_modify_state
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
    enum: position_modify_state
enums:
  position_modify_state:
    0: all
    1: walk
    2: run
    3: none
