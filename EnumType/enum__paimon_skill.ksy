meta:
  id: enum__paimon_skill
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
    enum: paimon_skill
enums:
  paimon_skill:
    1: show
    2: anger
    3: domangic
    4: guide
    5: hope
    6: wave
    7: show_move
