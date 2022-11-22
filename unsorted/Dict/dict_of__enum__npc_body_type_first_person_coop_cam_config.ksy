types:
  dict_of__enum__npc_body_type_first_person_coop_cam_config:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__npc_body_type_first_person_coop_cam_config
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__npc_body_type_first_person_coop_cam_config:
    seq:
      - id: key
        type: enum__npc_body_type
      - id: value
        type: first_person_coop_cam_config
