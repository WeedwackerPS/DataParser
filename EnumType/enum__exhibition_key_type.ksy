meta:
  id: enum__exhibition_key_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__exhibition_key_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: exhibition_key_type
enums:
  exhibition_key_type:
    0: exhibition_key_none
    1: exhibition_key_server
    2: exhibition_key_lua