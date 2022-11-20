meta:
  id: enum__aster_phase
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
    enum: aster_phase
enums:
  aster_phase:
    0: aster_phase_none
    1: aster_phase_little
    2: aster_phase_mid
    3: aster_phase_large
