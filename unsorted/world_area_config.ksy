types:
  world_area_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: area_type
        type: enum__world_area_type
        if: has_field_area_type
      - id: area_id_1
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id_1
      - id: area_id_2
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id_2
      - id: area_default_lock
        type: u1
        if: has_field_area_default_lock
      - id: area_name
        type: aux_types::vlq_base128_le_u
        if: has_field_area_name
      - id: tower_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tower_point_id
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: terrain_type
        type: enum__area_terrain_type
        if: has_field_terrain_type
      - id: show_tips
        type: u1
        if: has_field_show_tips
      - id: minimap_scale
        type: f4
        if: has_field_minimap_scale
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_scene_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_area_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_area_id_1: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_area_id_2: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_area_default_lock: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_area_name: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_tower_point_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_element_type: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_terrain_type: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_show_tips: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_minimap_scale: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
