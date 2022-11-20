meta:
  id: enum__control_part_target_type
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
    enum: control_part_target_type
enums:
  control_part_target_type:
    0: ai_threat_target
    1: action_set_target
