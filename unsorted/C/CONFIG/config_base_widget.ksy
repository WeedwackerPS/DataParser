types:
  config_base_widget:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: material_id
        type: aux_types::vlq_base128_le_u
        if: has_field_material_id
      - id: is_consume_material
        type: u1
        if: has_field_is_consume_material
      - id: is_equipable
        type: u1
        if: has_field_is_equipable
      - id: cool_down
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down
      - id: cool_down_on_fail
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down_on_fail
      - id: cool_down_group
        type: aux_types::vlq_base128_le_u
        if: has_field_cool_down_group
      - id: is_cd_under_time_scale
        type: u1
        if: has_field_is_cd_under_time_scale
      - id: is_allowed_in_dungeon
        type: u1
        if: has_field_is_allowed_in_dungeon
      - id: is_allowed_in_room
        type: u1
        if: has_field_is_allowed_in_room
      - id: ornaments_type
        type: enum__ornaments_type
        if: has_field_ornaments_type
    instances:
      has_field_material_id: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_is_consume_material: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_is_equipable: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_cool_down: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_cool_down_on_fail: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_cool_down_group: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_is_cd_under_time_scale: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_is_allowed_in_dungeon: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_is_allowed_in_room: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_ornaments_type: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
