meta:
  id: enum__audio_voice_trigger
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
    enum: audio_voice_trigger
enums:
  audio_voice_trigger:
    0: invalid
    1: weather_monologue
    2: dialog
    3: dungeon_reminder
    4: animator_event
    5: fetter
    6: gacha
    7: join_team
