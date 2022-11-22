meta:
  id: disp__config_head_control
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - config_head_control
    - config_monster_head_control	
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_head_control
        1: config_monster_head_control
        _: aux_types::error
