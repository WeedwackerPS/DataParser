meta:
  id: general_reward_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__reward_source_system_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: use_condense_resin
    type: u1
    if: has_field_use_condense_resin
  - id: reward_source_system
    type: enum__reward_source_system_type
    if: has_field_reward_source_system
  - id: reward_source_system_para
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_source_system_para
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: stamina_enough
    type: aux_types::vlq_base128_le_u
    if: has_field_stamina_enough
  - id: stamina_less
    type: aux_types::vlq_base128_le_u
    if: has_field_stamina_less
  - id: condense_resin_stamina_enough
    type: aux_types::vlq_base128_le_u
    if: has_field_condense_resin_stamina_enough
  - id: condense_resin_stamina_less
    type: aux_types::vlq_base128_le_u
    if: has_field_condense_resin_stamina_less
  - id: using_activity_coin
    type: aux_types::vlq_base128_le_u
    if: has_field_using_activity_coin
  - id: using_activity_coin_button
    type: aux_types::vlq_base128_le_u
    if: has_field_using_activity_coin_button
  - id: confirm
    type: aux_types::vlq_base128_le_u
    if: has_field_confirm
  - id: resin_monthly
    type: aux_types::vlq_base128_le_u
    if: has_field_resin_monthly
  - id: insufficient
    type: aux_types::vlq_base128_le_u
    if: has_field_insufficient
  - id: insufficient_useitem
    type: aux_types::vlq_base128_le_u
    if: has_field_insufficient_useitem
  - id: condense_resin
    type: aux_types::vlq_base128_le_u
    if: has_field_condense_resin
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_use_condense_resin: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_source_system: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_source_system_para: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_stamina_enough: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_stamina_less: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_condense_resin_stamina_enough: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_condense_resin_stamina_less: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_using_activity_coin: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_using_activity_coin_button: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_confirm: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_resin_monthly: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_insufficient: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_insufficient_useitem: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_condense_resin: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
