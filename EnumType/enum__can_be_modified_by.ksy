meta:
  id: enum__can_be_modified_by
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
    enum: can_be_modified_by
enums:
  can_be_modified_by:
    0: none
    1: owner
    2: origin_owner
