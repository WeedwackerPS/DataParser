meta:
  id: enum__music_stimulus
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_u
instances:
  value:
    value: data.value
    enum: music_stimulus
enums:
  music_stimulus:
    0: none
    1: stage_start
    2: stage_ready
    4: stage_finish
    8: quest_begin
    16: quest_end
    32: cutscene_begin
    64: cutscene_end
    128: cutscene_custom
    256: dialog_begin
    512: dialog_end
    1024: combat_begin
    2048: combat_end
    4096: teleport_begin
    8192: teleport_end
    16384: area_change
    32768: death
    65536: weather_change
    131072: menu_open
    262144: menu_close
