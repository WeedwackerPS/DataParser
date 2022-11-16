meta:
  id: enum__cutscene_init_pos_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: cutscene_init_pos_type
enums:
  cutscene_init_pos_type:
    0: free
    1: relative_to_local_avatar
    2: relative_to_intee
    3: other
    4: relative_to_local_avatar_with_rotation
    5: relative_to_entity_with_rotation
