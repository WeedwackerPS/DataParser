types:
  system_open_ui_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: name
        type: aux_types::vlq_base128_le_u
        if: has_field_name
      - id: icon_path
        type: aux_types::string
        if: has_field_icon_path
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: tutorial_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tutorial_id
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_name: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_icon_path: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_desc: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_tutorial_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
