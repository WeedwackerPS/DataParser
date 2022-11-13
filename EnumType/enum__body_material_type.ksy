meta:
  id: enum__body_material_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__body_material_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: body_material_type
enums:
  body_material_type:
    0: all
    1: body
    2: hair
    3: face
    4: weapon
    5: arm
    999: in_valid
