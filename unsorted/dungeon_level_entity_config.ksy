types:
  dungeon_level_entity_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: client_id
        type: aux_types::vlq_base128_le_u
        if: has_field_client_id
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: show
        type: u1
        if: has_field_show
      - id: level_config_name
        type: aux_types::string
        if: has_field_level_config_name
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: switch_title
        type: aux_types::vlq_base128_le_u
        if: has_field_switch_title
    instances:
      has_field_client_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_show: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_level_config_name: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_desc: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_switch_title: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
