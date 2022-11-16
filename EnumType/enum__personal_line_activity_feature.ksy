meta:
  id: enum__personal_line_activity_feature
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
    enum: personal_line_activity_feature
enums:
  personal_line_activity_feature:
    0: legend_quest
    1: no_legend_quest
