meta:
  id: enum__show_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__show_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: show_type
enums:
  show_type:
    0: showtype_show
    1: showtype_hide
