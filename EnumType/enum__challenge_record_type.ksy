meta:
  id: enum__challenge_record_type
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
    enum: challenge_record_type
enums:
  challenge_record_type:
    0: challenge_record_type_none
    1: challenge_record_type_in_time
