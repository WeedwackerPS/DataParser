meta:
  id: enum__talk_load_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: talk_load_type
enums:
  talk_load_type:
    0: talk_normal_quest
    1: talk_blossom
    2: talk_activity
    3: talk_coop
    4: talk_gadget
