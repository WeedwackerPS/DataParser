meta:
  id: enum__dialog_group_scheme_type
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
    enum: dialog_group_scheme_type
enums:
  dialog_group_scheme_type:
    0: quest
    1: free
    2: narrator
    3: blossom
    4: activity
    5: coop
    6: gadget
