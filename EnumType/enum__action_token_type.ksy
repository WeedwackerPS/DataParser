meta:
  id: enum__action_token_type
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
    enum: action_token_type
enums:
  action_token_type:
    0: never_token
    1: frame_delay_token
    2: frame_cancel_token
