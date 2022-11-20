meta:
  id: enum__roguelike_shikigami_unlock_type
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
    enum: roguelike_shikigami_unlock_type
enums:
  roguelike_shikigami_unlock_type:
    0: shikigami_unlock_none
    1: shikigami_unlock_shikigami
    2: shikigami_unlock_activity_day
    3: shikigami_unlock_roguelike_stage
