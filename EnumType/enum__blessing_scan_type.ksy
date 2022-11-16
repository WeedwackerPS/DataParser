meta:
  id: enum__blessing_scan_type
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
    enum: blessing_scan_type
enums:
  blessing_scan_type:
    0: blessing_scan_type_none
    1: blessing_scan_type_monster
    2: blessing_scan_type_gather
