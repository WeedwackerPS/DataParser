meta:
  id: enum__material_destroy_type
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
    enum: material_destroy_type
enums:
  material_destroy_type:
    0: destroy_none
    1: destroy_return_material
