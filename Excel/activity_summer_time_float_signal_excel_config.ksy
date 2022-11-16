meta:
  id: activity_summer_time_float_signal_excel_config
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
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: mist_zone_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mist_zone_id
  - id: is_transfer_anchor
    type: u1
    if: has_field_is_transfer_anchor
  - id: vehicle_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_vehicle_config_id
  - id: vehicle_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_vehicle_gadget_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_config_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_mist_zone_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_transfer_anchor: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_vehicle_config_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_vehicle_gadget_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
