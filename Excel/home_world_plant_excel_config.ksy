meta:
  id: home_world_plant_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: seed_id
    type: aux_types::vlq_base128_le_u
    if: has_field_seed_id
  - id: gather_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_gather_id_vec
  - id: home_gather_id
    type: aux_types::vlq_base128_le_u
    if: has_field_home_gather_id
  - id: bundle_id
    type: aux_types::vlq_base128_le_u
    if: has_field_bundle_id
  - id: drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_drop_id
  - id: config_home_gather
    type: array_of__config_home_gather__length_s
    if: has_field_config_home_gather
  - id: field_id
    type: aux_types::vlq_base128_le_u
    if: has_field_field_id
  - id: time
    type: aux_types::vlq_base128_le_u
    if: has_field_time
  - id: sprout_time
    type: aux_types::vlq_base128_le_u
    if: has_field_sprout_time
  - id: collect_num
    type: aux_types::vlq_base128_le_u
    if: has_field_collect_num
  - id: sprout_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sprout_gadget_id
  - id: order
    type: aux_types::vlq_base128_le_u
    if: has_field_order
  - id: intee_icon_name
    type: aux_types::string
    if: has_field_intee_icon_name
  - id: intee_name
    type: aux_types::vlq_base128_le_u
    if: has_field_intee_name
instances:
  has_field_seed_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gather_id_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_home_gather_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_bundle_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_drop_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_config_home_gather: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_field_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_time: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_sprout_time: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_collect_num: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_sprout_gadget_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_order: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_intee_icon_name: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_intee_name: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
types:
  array_of__config_home_gather__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: config_home_gather
        repeat: expr
        repeat-expr: length.value
  config_home_gather:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: home_gather_id
        type: aux_types::vlq_base128_le_u
        if: has_field_home_gather_id
      - id: bundle_id
        type: aux_types::vlq_base128_le_u
        if: has_field_bundle_id
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
    instances:
      has_field_home_gather_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_bundle_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_drop_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_weight: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
