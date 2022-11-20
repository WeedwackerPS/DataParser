meta:
  id: enum__widget_business_type
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
    enum: widget_business_type
enums:
  widget_business_type:
    1: resident
    2: activity
