types:
  ps_activities_task_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: task_name
        type: aux_types::vlq_base128_le_u
        if: has_field_task_name
      - id: is_required_for_completion
        type: u1
        if: has_field_is_required_for_completion
      - id: hidden
        type: u1
        if: has_field_hidden
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
      has_field_activity_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_task_name: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_is_required_for_completion: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_hidden: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_object_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_export_version: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
