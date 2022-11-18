meta:
  id: blessing_scan_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__blessing_scan_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type_id
    type: aux_types::vlq_base128_le_u
    if: has_field_type_id
  - id: scan_type
    type: enum__blessing_scan_type
    if: has_field_scan_type
  - id: ref_id
    type: aux_types::vlq_base128_le_u
    if: has_field_ref_id
  - id: pic_up_config
    type: array_of__blessing_pic_up_config__length_s
    if: has_field_pic_up_config
  - id: scan_duration
    type: aux_types::vlq_base128_le_u
    if: has_field_scan_duration
  - id: scan_time
    type: aux_types::vlq_base128_le_u
    if: has_field_scan_time
  - id: hit_boxes_node_name
    type: aux_types::string
    if: has_field_hit_boxes_node_name
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_scan_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_ref_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_pic_up_config: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_scan_duration: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_scan_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_hit_boxes_node_name: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
types:
  array_of__blessing_pic_up_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: blessing_pic_up_config
        repeat: expr
        repeat-expr: length.value
  blessing_pic_up_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: prob
        type: aux_types::vlq_base128_le_u
        if: has_field_prob
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_prob: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)