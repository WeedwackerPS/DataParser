meta:
  id: enum__qte_action_type
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
    enum: qte_action_type
enums:
  qte_action_type:
    0: qte_action_none
    1: qte_action_finish_quest
    2: qte_action_fail_quest
