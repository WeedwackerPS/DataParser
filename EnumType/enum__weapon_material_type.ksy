meta:
  id: enum__weapon_material_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__weapon_material_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: weapon_material_type
enums:
  weapon_material_type:
    0: weapon_material_none
