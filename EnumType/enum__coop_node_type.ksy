meta:
  id: enum__coop_node_type
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
    enum: coop_node_type
enums:
  coop_node_type:
    0: coop_node_none
    1: coop_node_talk
    2: coop_node_select
    3: coop_node_cond
    4: coop_node_action
    5: coop_node_end
