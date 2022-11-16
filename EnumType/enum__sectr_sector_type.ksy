meta:
  id: enum__sectr_sector_type
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
    enum: sectr_sector_type
enums:
  sectr_sector_type:
    0: normal
    1: city
    2: navmesh
