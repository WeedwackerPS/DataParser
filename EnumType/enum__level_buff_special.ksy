meta:
  id: enum__level_buff_special
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
    enum: level_buff_special
enums:
  level_buff_special:
    0: none
    1: witch_time_duration_scaled_by_evaded_attack
    2: infinite_duration
