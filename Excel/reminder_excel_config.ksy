meta:
  id: reminder_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__reminder_style_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: speaker
    type: aux_types::vlq_base128_le_u
    if: has_field_speaker
  - id: content
    type: aux_types::vlq_base128_le_u
    if: has_field_content
  - id: delay
    type: f4
    if: has_field_delay
  - id: show_time
    type: f4
    if: has_field_show_time
  - id: next_reminder_id
    type: aux_types::vlq_base128_le_u
    if: has_field_next_reminder_id
  - id: sound_effect
    type: aux_types::string
    if: has_field_sound_effect
  - id: style
    type: enum__reminder_style_type
    if: has_field_style
  - id: has_audio
    type: u1
    if: has_field_has_audio
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_speaker: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_content: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_delay: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_show_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_next_reminder_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_sound_effect: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_style: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_has_audio: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
