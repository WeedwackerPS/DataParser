meta:
  id: forge_random_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__random_item_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: forge_random_id
    type: aux_types::vlq_base128_le_u
    if: has_field_forge_random_id
  - id: main_random_items
    type: array_of__random_item_config__length_s
    if: has_field_main_random_items
instances:
  has_field_forge_random_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_main_random_items: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
