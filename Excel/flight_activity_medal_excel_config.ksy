meta:
  id: flight_activity_medal_excel_config
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
  - id: medal_icon
    type: aux_types::string
    if: has_field_medal_icon
  - id: daily_info
    type: array_of__flight_daily_info__length_s
    if: has_field_daily_info
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_medal_icon: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_daily_info: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
types:
  array_of__flight_daily_info__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: flight_daily_info
        repeat: expr
        repeat-expr: length.value
  flight_daily_info:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: watcher
        type: aux_types::vlq_base128_le_u
        if: has_field_watcher
    instances:
      has_field_watcher: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
