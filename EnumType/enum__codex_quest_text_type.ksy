meta:
  id: enum__codex_quest_text_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__codex_quest_text_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: codex_quest_text_type
enums:
  codex_quest_text_type:
    1: chapter_title
    2: chapter_num
    3: main_quest_title
    4: main_quest_desp
    5: sub_quest_title
    6: ip_customized_whole
    7: ip_customized_partial
    8: dialog_normal
    9: dialog_branch
    10: speaker_known
    11: speaker_unknown
    12: speaker_player
    13: aside
    14: narratage
