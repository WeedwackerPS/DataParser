meta:
  id: config_spatial_audio
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/vector
seq:
  - id: bit_field
    type: u1
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
  - id: room_list
    type: array_of__config_spatial_room__length_u
    if: has_field_room_list
  - id: portal_list
    type: array_of__config_spatial_portal__length_u
    if: has_field_portal_list
  - id: global_room
    type: aux_types::string
    if: has_field_global_room
instances:
  has_field_scene_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_room_list: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_portal_list: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_global_room: # Field №3
    value: (bit_field & 0b1000) != 0
types:
  array_of__config_spatial_room__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_spatial_room
        repeat: expr
        repeat-expr: length.value
  array_of__config_spatial_portal__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_spatial_portal
        repeat: expr
        repeat-expr: length.value
  config_spatial_portal:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: size
        type: vector
        if: has_field_size
      - id: enabled
        type: u1
        if: has_field_enabled
      - id: front_room_name
        type: aux_types::string
        if: has_field_front_room_name
      - id: back_room_name
        type: aux_types::string
        if: has_field_back_room_name
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_position: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_rotation: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_size: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_enabled: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_front_room_name: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_back_room_name: # Field №6
        value: (bit_field & 0b1000000) != 0
  config_spatial_room:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: reverb_aux_bus
        type: config_wwise_string
        if: has_field_reverb_aux_bus
      - id: reverb_level
        type: f4
        if: has_field_reverb_level
      - id: wall_occlusion
        type: f4
        if: has_field_wall_occlusion
      - id: aux_send_level_to_self
        type: f4
        if: has_field_aux_send_level_to_self
      - id: keep_register
        type: u1
        if: has_field_keep_register
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
      - id: is_major_room
        type: u1
        if: has_field_is_major_room
      - id: box_room_triggers
        type: array_of__config_spatial_box_room_trigger__length_u
        if: has_field_box_room_triggers
      - id: sphere_room_triggers
        type: array_of__config_spatial_sphere_room_trigger__length_u
        if: has_field_sphere_room_triggers
    instances:
      has_field_name: # Field №0
        value: (bit_field.value & 0b0000000001) != 0
      has_field_reverb_aux_bus: # Field №1
        value: (bit_field.value & 0b0000000010) != 0
      has_field_reverb_level: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_wall_occlusion: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_aux_send_level_to_self: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_keep_register: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_priority: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_is_major_room: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_box_room_triggers: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_sphere_room_triggers: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
  array_of__config_spatial_box_room_trigger__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_spatial_box_room_trigger
        repeat: expr
        repeat-expr: length.value
  config_spatial_box_room_trigger:
    seq:
      - id: bit_field
        type: u1
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: size
        type: vector
        if: has_field_size
    instances:
      has_field_position: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_rotation: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_size: # Field №2
        value: (bit_field & 0b100) != 0
  array_of__config_spatial_sphere_room_trigger__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_spatial_sphere_room_trigger
        repeat: expr
        repeat-expr: length.value
  config_spatial_sphere_room_trigger:
    seq:
      - id: bit_field
        type: u1
      - id: position
        type: vector
        if: has_field_position
      - id: radius
        type: f4
        if: has_field_radius
    instances:
      has_field_position: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_radius: # Field №1
        value: (bit_field & 0b10) != 0
