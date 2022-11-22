types:
  city_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: area_id_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_area_id_vec
      - id: city_name
        type: aux_types::vlq_base128_le_u
        if: has_field_city_name
      - id: map_pos_x
        type: aux_types::vlq_base128_le_s
        if: has_field_map_pos_x
      - id: map_pos_y
        type: aux_types::vlq_base128_le_s
        if: has_field_map_pos_y
      - id: zoom_for_exploration
        type: f4
        if: has_field_zoom_for_exploration
      - id: adventure_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_adventure_point_id
      - id: expedition_map
        type: aux_types::string
        if: has_field_expedition_map
      - id: expedition_water_mark
        type: aux_types::string
        if: has_field_expedition_water_mark
      - id: open_state
        type: enum__open_state_type
        if: has_field_open_state
      - id: city_goddness_name
        type: aux_types::vlq_base128_le_u
        if: has_field_city_goddness_name
      - id: city_goddness_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_city_goddness_desc
    instances:
      has_field_city_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_scene_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_area_id_vec: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_city_name: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_map_pos_x: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_map_pos_y: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_zoom_for_exploration: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_adventure_point_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_expedition_map: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_expedition_water_mark: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_open_state: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_city_goddness_name: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_city_goddness_desc: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
