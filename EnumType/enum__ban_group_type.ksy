meta:
  id: enum__ban_group_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ban_group_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ban_group_type
enums:
  ban_group_type:
    0: ban_group_invalid
    1: ban_group_common
    2: ban_group_transport_only
    3: ban_group_transport_map
    4: ban_group_transpor_goto_scene
