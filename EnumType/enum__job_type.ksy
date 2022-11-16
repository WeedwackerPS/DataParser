meta:
  id: enum__job_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: job_type
enums:
  job_type:
    0: job_none
    1: job_swordman
    2: job_archer
