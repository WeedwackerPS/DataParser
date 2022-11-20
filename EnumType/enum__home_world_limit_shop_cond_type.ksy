meta:
  id: enum__home_world_limit_shop_cond_type
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
    enum: home_world_limit_shop_cond_type
enums:
  home_world_limit_shop_cond_type:
    0: homeworld_limit_shop_cond_type_none
    1: homeworld_limit_shop_cond_type_home_level
