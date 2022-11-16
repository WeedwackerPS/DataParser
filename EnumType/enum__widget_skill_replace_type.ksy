meta:
  id: enum__widget_skill_replace_type
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
    enum: widget_skill_replace_type
enums:
  widget_skill_replace_type:
    1: a
    2: e
    3: q
