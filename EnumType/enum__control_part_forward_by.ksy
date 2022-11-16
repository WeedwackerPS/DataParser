meta:
  id: enum__control_part_forward_by
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
    enum: control_part_forward_by
enums:
  control_part_forward_by:
    0: parent
    1: entity_forward
    2: named_transform
