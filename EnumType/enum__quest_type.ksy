meta:
  id: enum__quest_type
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
    enum: quest_type
enums:
  quest_type:
    0: aq
    1: fq
    2: lq
    3: eq
    4: dq
    5: iq
    6: vq
    7: wq
