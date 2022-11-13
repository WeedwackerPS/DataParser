meta:
  id: enum__e_shader_data
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__e_shader_data:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: e_shader_data
enums:
  e_shader_data:
    0: none
    1: character_frozen
    2: character_petrifaction
    3: character_die
    4: character_burning_to_ashes
    5: character_dissolve
    6: gadget_frozen
    7: gadget_petrifaction
    8: gadget_die
    9: avatar_die
    10: monster_equip_die
    11: monster_die
    12: character_clip
