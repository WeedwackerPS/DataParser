types:
  new_activity_entry_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: activity_type
        type: enum__new_activity_type
        if: has_field_activity_type
      - id: sort_priority
        type: aux_types::vlq_base128_le_s
        if: has_field_sort_priority
      - id: tab_icon
        type: aux_types::string
        if: has_field_tab_icon
      - id: tab_name
        type: aux_types::vlq_base128_le_u
        if: has_field_tab_name
      - id: duration
        type: aux_types::vlq_base128_le_u
        if: has_field_duration
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_activity_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_sort_priority: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_tab_icon: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_tab_name: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_duration: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
