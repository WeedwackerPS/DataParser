meta:
  id: enum__furniture_deploy_type
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
    enum: furniture_deploy_type
enums:
  furniture_deploy_type:
    0: interior
    1: exterior
    2: interior_room
    3: interior_hall
    4: sky_box
