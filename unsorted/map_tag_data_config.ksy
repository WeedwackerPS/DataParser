types:
  map_tag_data_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: type
        type: enum__map_tag_type
        if: has_field_type
      - id: name
        type: aux_types::vlq_base128_le_u
        if: has_field_name
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: unlock_by_default
        type: u1
        if: has_field_unlock_by_default
      - id: hide_before_unlock
        type: u1
        if: has_field_hide_before_unlock
      - id: scene_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_scene_id_list
      - id: default_locate_x
        type: f4
        if: has_field_default_locate_x
      - id: default_locate_z
        type: f4
        if: has_field_default_locate_z
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_name: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_icon: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_unlock_by_default: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_hide_before_unlock: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_scene_id_list: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_default_locate_x: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_default_locate_z: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
