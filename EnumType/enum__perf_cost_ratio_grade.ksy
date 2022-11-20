meta:
  id: enum__perf_cost_ratio_grade
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
    enum: perf_cost_ratio_grade
enums:
  perf_cost_ratio_grade:
    0: min
    1: low
    2: middle
    4: high
    10: max
