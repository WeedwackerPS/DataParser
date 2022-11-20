meta:
  id: enum__dragon_spine_phase
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
    enum: dragon_spine_phase
enums:
  dragon_spine_phase:
    0: dragon_spine_phase_none
    1: dragon_spine_phase_first
    2: dragon_spine_phase_second
    3: dragon_spine_phase_third
    4: dragon_spine_phase_fourth
