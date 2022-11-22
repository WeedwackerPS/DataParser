types:
  dict_of__enum__scene_building_type_enum__mark_icon_type:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__scene_building_type_enum__mark_icon_type
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__scene_building_type_enum__mark_icon_type:
    seq:
      - id: key
        type: enum__scene_building_type
      - id: value
        type: enum__mark_icon_type
