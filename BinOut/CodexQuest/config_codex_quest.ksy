meta:
  id: config_codex_quest
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_codex_quest_text
    - array_of__config_codex_quest_sub_quest__length_u
seq:
  - id: bit_field
    type: u1
  - id: main_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_quest_id
  - id: quest_type
    type: enum__quest_type
    if: has_field_quest_type
  - id: main_quest_title
    type: config_codex_quest_text
    if: has_field_main_quest_title
  - id: main_quest_desp
    type: config_codex_quest_text
    if: has_field_main_quest_desp
  - id: chapter_title
    type: config_codex_quest_text
    if: has_field_chapter_title
  - id: chapter_num
    type: config_codex_quest_text
    if: has_field_chapter_num
  - id: sub_quests
    type: array_of__config_codex_quest_sub_quest__length_u
    if: has_field_sub_quests
instances:
  has_field_main_quest_id: # Field №0
    value: (bit_field & 0b0000001) != 0
  has_field_quest_type: # Field №1
    value: (bit_field & 0b0000010) != 0
  has_field_main_quest_title: # Field №2
    value: (bit_field & 0b0000100) != 0
  has_field_main_quest_desp: # Field №3
    value: (bit_field & 0b0001000) != 0
  has_field_chapter_title: # Field №4
    value: (bit_field & 0b0010000) != 0
  has_field_chapter_num: # Field №5
    value: (bit_field & 0b0100000) != 0
  has_field_sub_quests: # Field №6
    value: (bit_field & 0b1000000) != 0
