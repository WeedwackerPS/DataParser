meta:
  id: lamp_phase_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: phase_id
    type: aux_types::vlq_base128_le_u
    if: has_field_phase_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: end_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_end_progress
  - id: material_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_material_vec
  - id: giving_id
    type: aux_types::vlq_base128_le_u
    if: has_field_giving_id
  - id: contribution
    type: aux_types::vlq_base128_le_u
    if: has_field_contribution
  - id: add_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_add_progress
  - id: is_display
    type: u1
    if: has_field_is_display
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: notify_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_notify_group_id
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
instances:
  has_field_phase_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_end_progress: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_material_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_giving_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_contribution: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_add_progress: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_display: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_notify_group_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_gadget_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
