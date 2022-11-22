types:
  config_record_entity:
    seq:
      - id: base
        type: config_record_actor_base
      - id: bit_field
        type: u1
      - id: animator_info
        type: config_record_animator_info
        if: has_field_animator_info
      - id: renderer_params
        type: config_record_renderer_parameters
        if: has_field_renderer_params
      - id: material_params
        type: config_record_material_parameters
        if: has_field_material_params
      - id: ragdoll_params
        type: config_record_ragdoll_parameters
        if: has_field_ragdoll_params
      - id: emo_params
        type: config_record_emo_parameters
        if: has_field_emo_params
    instances:
      has_field_animator_info: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_renderer_params: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_material_params: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_ragdoll_params: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_emo_params: # Field №4
        value: (bit_field & 0b10000) != 0
      # Base class fields
      pos:
        value: base.pos
      rot:
        value: base.rot
      scale:
        value: base.scale
      serial_id:
        value: base.serial_id
