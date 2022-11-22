meta:
  id: array_of__config_codex_quest_sub_quest__length_u
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_codex_quest_text
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: config_codex_quest_sub_quest
    repeat: expr
    repeat-expr: length.value
types:
  config_codex_quest_sub_quest:
    seq:
      - id: bit_field
        type: u1
      - id: sub_quest_title
        type: config_codex_quest_text
        if: has_field_sub_quest_title
      - id: items
        type: array_of__config_codex_quest_item__length_u
        if: has_field_items
    instances:
      has_field_sub_quest_title: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_items: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__config_codex_quest_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_codex_quest_item
        repeat: expr
        repeat-expr: length.value
  config_codex_quest_item:
    seq:
      - id: bit_field
        type: u1
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
      - id: item_type
        type: enum__codex_quest_item_type
        if: has_field_item_type
      - id: next_item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_next_item_id
      - id: speaker_text
        type: config_codex_quest_text
        if: has_field_speaker_text
      - id: speaker_text2
        type: config_codex_quest_text
        if: has_field_speaker_text2
      - id: texts
        type: array_of__config_codex_quest_text__length_u
        if: has_field_texts
      - id: dialogs
        type: array_of__config_codex_quest_dialog_single__length_u
        if: has_field_dialogs
      - id: dialogs2
        type: array_of__config_codex_quest_dialog_single__length_u
        if: has_field_dialogs2
    instances:
      has_field_item_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_item_type: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_next_item_id: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_speaker_text: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_speaker_text2: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_texts: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_dialogs: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_dialogs2: # Field №7
        value: (bit_field & 0b10000000) != 0
  array_of__config_codex_quest_dialog_single__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_codex_quest_dialog_single
        repeat: expr
        repeat-expr: length.value
  config_codex_quest_dialog_single:
    seq:
      - id: bit_field
        type: u1
      - id: text
        type: config_codex_quest_text
        if: has_field_text
      - id: sound_id
        type: aux_types::vlq_base128_le_u
        if: has_field_sound_id
      - id: next_item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_next_item_id
    instances:
      has_field_text: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_sound_id: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_next_item_id: # Field №2
        value: (bit_field & 0b100) != 0
  array_of__config_codex_quest_text__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_codex_quest_text
        repeat: expr
        repeat-expr: length.value
