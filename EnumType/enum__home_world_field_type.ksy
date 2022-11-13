meta:
  id: enum__home_world_field_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__home_world_field_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: home_world_field_type
enums:
  home_world_field_type:
    0: home_field_none
    1: home_field_dry
    2: home_field_flower
    3: home_field_water
