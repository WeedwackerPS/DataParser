types:
  config_guide_hideand_seek_skill_category_condition:
    seq:
      - id: base
        type: config_guide_page_check_base_condition
      - id: bit_field
        type: u1
      - id: index
        type: aux_types::vlq_base128_le_s
        if: has_field_index
      - id: is_select
        type: u1
        if: has_field_is_select
    instances:
      has_field_index: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_select: # Field №1
        value: (bit_field & 0b10) != 0
