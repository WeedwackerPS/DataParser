meta:
  id: localization_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__localization_asset_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: asset_type
    type: enum__localization_asset_type
    if: has_field_asset_type
  - id: default_path
    type: aux_types::string
    if: has_field_default_path
  - id: sc_path
    type: aux_types::string
    if: has_field_sc_path
  - id: tc_path
    type: aux_types::string
    if: has_field_tc_path
  - id: en_path
    type: aux_types::string
    if: has_field_en_path
  - id: kr_path
    type: aux_types::string
    if: has_field_kr_path
  - id: jp_path
    type: aux_types::string
    if: has_field_jp_path
  - id: es_path
    type: aux_types::string
    if: has_field_es_path
  - id: fr_path
    type: aux_types::string
    if: has_field_fr_path
  - id: id_path
    type: aux_types::string
    if: has_field_id_path
  - id: pt_path
    type: aux_types::string
    if: has_field_pt_path
  - id: ru_path
    type: aux_types::string
    if: has_field_ru_path
  - id: th_path
    type: aux_types::string
    if: has_field_th_path
  - id: vi_path
    type: aux_types::string
    if: has_field_vi_path
  - id: de_path
    type: aux_types::string
    if: has_field_de_path
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_asset_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_default_path: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_sc_path: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_tc_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_en_path: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_kr_path: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_jp_path: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_es_path: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_fr_path: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_id_path: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_pt_path: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_ru_path: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_th_path: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_vi_path: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_de_path: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
