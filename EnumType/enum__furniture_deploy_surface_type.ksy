meta:
  id: enum__furniture_deploy_surface_type
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
    enum: furniture_deploy_surface_type
enums:
  furniture_deploy_surface_type:
    0: ground
    1: wall
    2: ceil
    3: stack_obj_plane
    4: door
    5: chandelier
    6: floor
    7: wall_body
    8: carpet
    9: lego_rockery
    10: stair
    11: npc
    12: animal
    13: apartment
    14: furniture_suite
    15: road
    16: terrain
