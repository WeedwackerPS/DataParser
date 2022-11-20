meta:
  id: enum__e_shader_plus
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
    enum: e_shader_plus
enums:
  e_shader_plus:
    0: plus_hit_flash
    1: plus_emission
    2: plus_skill_emission
    3: plus_outer_glow
