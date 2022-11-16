meta:
  id: enum__target_indicator_type
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
    enum: target_indicator_type
enums:
  target_indicator_type:
    0: default
    1: quest
    2: gadget
    3: task
    4: anchor
