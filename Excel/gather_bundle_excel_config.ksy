meta:
  id: gather_bundle_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: bundle_name
    type: aux_types::string
    if: has_field_bundle_name
  - id: base_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_base_gadget_id
  - id: points
    type: array_of__point_info__length_s
    if: has_field_points
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_bundle_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_base_gadget_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_points: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__point_info__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: point_info
        repeat: expr
        repeat-expr: length.value
  point_info:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_id
      - id: point_type
        type: aux_types::vlq_base128_le_u
        if: has_field_point_type
      - id: offset_x
        type: f4
        if: has_field_offset_x
      - id: offset_y
        type: f4
        if: has_field_offset_y
      - id: offset_z
        type: f4
        if: has_field_offset_z
      - id: rot_x
        type: f4
        if: has_field_rot_x
      - id: rot_y
        type: f4
        if: has_field_rot_y
      - id: rot_z
        type: f4
        if: has_field_rot_z
    instances:
      has_field_point_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_point_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_offset_x: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_offset_y: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_offset_z: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_rot_x: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_rot_y: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_rot_z: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
