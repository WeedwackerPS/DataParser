meta:
  id: enum__text_language_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: text_language_type
enums:
  text_language_type:
    0: language_none
    1: language_en
    2: language_sc
    3: language_tc
    4: language_fr
    5: language_de
    6: language_es
    7: language_pt
    8: language_ru
    9: language_jp
    10: language_kr
    11: language_th
    12: language_vn
    13: language_id
