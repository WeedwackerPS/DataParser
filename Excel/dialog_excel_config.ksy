meta:
  id: dialog_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__talk_show_type
    - ../EnumType/enum__talk_role_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: next_dialog
    type: aux_types::vlq_base128_le_u
    if: has_field_next_dialog
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: next_dialogs
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_dialogs
  - id: talk_show_type
    type: enum__talk_show_type
    if: has_field_talk_show_type
  - id: talk_role
    type: talk_role
    if: has_field_talk_role
  - id: talk_content
    type: aux_types::vlq_base128_le_u
    if: has_field_talk_content
  - id: talk_title
    type: aux_types::vlq_base128_le_u
    if: has_field_talk_title
  - id: talk_role_name
    type: aux_types::vlq_base128_le_u
    if: has_field_talk_role_name
  - id: talk_asset_path
    type: aux_types::string
    if: has_field_talk_asset_path
  - id: talk_asset_path_alter
    type: aux_types::string
    if: has_field_talk_asset_path_alter
  - id: talk_audio_name
    type: aux_types::string
    if: has_field_talk_audio_name
  - id: action_before
    type: aux_types::string
    if: has_field_action_before
  - id: action_while
    type: aux_types::string
    if: has_field_action_while
  - id: action_after
    type: aux_types::string
    if: has_field_action_after
  - id: show_duration
    type: f4
    if: has_field_show_duration
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: option_icon
    type: aux_types::string
    if: has_field_option_icon
instances:
  has_field_next_dialog: # Field №0
    value: false
  has_field_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_next_dialogs: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_talk_show_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_talk_role: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_talk_content: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_talk_title: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_talk_role_name: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_talk_asset_path: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_talk_asset_path_alter: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_talk_audio_name: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_action_before: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_action_while: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_action_after: # Field №13
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_show_duration: # Field №14
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_group_id: # Field №15
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_option_icon: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
types:
  talk_role:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__talk_role_type
        if: has_field_type
      - id: id
        type: aux_types::string
        if: has_field_id
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)