meta:
  id: enum__move_state_mixin_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__move_state_mixin_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: move_state_mixin_type
enums:
  move_state_mixin_type:
    0: dash