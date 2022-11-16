meta:
  id: enum__drop_node_type
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
    enum: drop_node_type
enums:
  drop_node_type:
    0: drop_node_leaf
    1: drop_node_tree
