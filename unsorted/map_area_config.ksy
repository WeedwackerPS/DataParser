types:
  map_area_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: area_id_1
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id_1
      - id: scene_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_point_id
      - id: map_area_state
        type: enum__map_area_state
        if: has_field_map_area_state
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_scene_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_name: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_area_id_1: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_scene_point_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_map_area_state: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
