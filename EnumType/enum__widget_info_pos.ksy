meta:
  id: enum__widget_info_pos
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
    enum: widget_info_pos
enums:
  widget_info_pos:
    0: tl
    1: t
    2: tr
    3: l
    4: r
    5: bl
    6: b
    7: br
