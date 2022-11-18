meta:
  id: reputation_entrance_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__reputation_entrance_type
    - ../EnumType/enum__reputation_entrance_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: text_id
    type: aux_types::vlq_base128_le_u
    if: has_field_text_id
  - id: entrance_id
    type: enum__reputation_entrance_type
    if: has_field_entrance_id
  - id: city_id
    type: aux_types::vlq_base128_le_u
    if: has_field_city_id
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: cond_vec
    type: array_of__reputation_entrance_cond__length_s
    if: has_field_cond_vec
  - id: cond_name_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cond_name_vec
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: explain_title
    type: aux_types::vlq_base128_le_u
    if: has_field_explain_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: icon_name
    type: aux_types::string
    if: has_field_icon_name
  - id: order
    type: aux_types::vlq_base128_le_u
    if: has_field_order
instances:
  has_field_text_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_entrance_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_city_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cond_comb: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cond_vec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cond_name_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_name: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_title: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_explain_title: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_icon_name: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_order: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
types:
  array_of__reputation_entrance_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: reputation_entrance_cond
        repeat: expr
        repeat-expr: length.value
  reputation_entrance_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__reputation_entrance_cond_type
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
