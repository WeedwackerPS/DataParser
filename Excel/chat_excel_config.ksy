meta:
  id: chat_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: channel
    type: aux_types::vlq_base128_le_u
    if: has_field_channel
  - id: priority
    type: f4
    if: has_field_priority
  - id: tab_shown_name
    type: aux_types::vlq_base128_le_u
    if: has_field_tab_shown_name
  - id: chat_channel_icon
    type: aux_types::string
    if: has_field_chat_channel_icon
  - id: tag_other
    type: aux_types::vlq_base128_le_u
    if: has_field_tag_other
  - id: tag_self
    type: aux_types::vlq_base128_le_u
    if: has_field_tag_self
  - id: enter
    type: aux_types::vlq_base128_le_u
    if: has_field_enter
  - id: leave
    type: aux_types::vlq_base128_le_u
    if: has_field_leave
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_channel: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_priority: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_tab_shown_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_chat_channel_icon: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_tag_other: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_tag_self: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_enter: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_leave: # Field №8
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000001) != 0)
