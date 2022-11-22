types:
  ps_activities_activity_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: activity_name
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_name
      - id: activity_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_desc
      - id: category
        type: enum__ps_activities_category_type
        if: has_field_category
      - id: available_by_default
        type: u1
        if: has_field_available_by_default
      - id: is_required_for_completion
        type: u1
        if: has_field_is_required_for_completion
      - id: hidden
        type: u1
        if: has_field_hidden
      - id: is_online_multiplay
        type: u1
        if: has_field_is_online_multiplay
      - id: large_icon
        type: aux_types::string
        if: has_field_large_icon
      - id: small_icon
        type: aux_types::string
        if: has_field_small_icon
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: object_id
        type: aux_types::string
        if: has_field_object_id
      - id: export_version
        type: aux_types::string
        if: has_field_export_version
    instances:
      has_field_activity_name: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_activity_desc: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_category: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_available_by_default: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_is_required_for_completion: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_hidden: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_is_online_multiplay: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_large_icon: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_small_icon: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_id: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_object_id: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_export_version: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
