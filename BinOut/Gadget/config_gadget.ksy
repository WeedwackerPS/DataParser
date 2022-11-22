meta:
  id: config_gadget
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__entity_type
    - ../Common/ConfigEntity/config_entity
    - ../Common/ConfigEntity/config_combat
    - ../Common/ConfigEntity/config_trigger
    - ../Common/ConfigEntity/disp__config_move
    - ../Common/array_of__config_entity_ability_entry__length_u
    - ../Common/config_live_player
seq:
  - id: base
    type: config_entity
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: has_equip
    type: u1
    if: has_field_has_equip
  - id: has_audio
    type: u1
    if: has_field_has_audio
  - id: has_model
    type: u1
    if: has_field_has_model
  - id: has_ability
    type: u1
    if: has_field_has_ability
  - id: has_follow_wind_zone_rotation
    type: u1
    if: has_field_has_follow_wind_zone_rotation
  - id: force_dont_use_update_rigidbody
    type: u1
    if: has_field_force_dont_use_update_rigidbody
  - id: has_connect_trigger
    type: u1
    if: has_field_has_connect_trigger
  - id: can_be_created_on_platform
    type: u1
    if: has_field_can_be_created_on_platform
  - id: connect_trigger_priority
    type: aux_types::vlq_base128_le_u
    if: has_field_connect_trigger_priority
  - id: ignore_child_scene_prop
    type: u1
    if: has_field_ignore_child_scene_prop
  - id: move_refresh_ground_force_up
    type: u1
    if: has_field_move_refresh_ground_force_up
  - id: combat
    type: config_combat
    if: has_field_combat
  - id: abilities
    type: array_of__config_entity_ability_entry__length_u
    if: has_field_abilities
  - id: field
    type: config_trigger
    if: has_field_field
  - id: timer
    type: config_timer
    if: has_field_timer
  - id: move
    type: disp__config_move
    if: has_field_move
  - id: gadget
    type: disp__config_gadget_pattern
    if: has_field_gadget
  - id: equipment
    type: config_equipment
    if: has_field_equipment
  - id: navigation
    type: config_navigation
    if: has_field_navigation
  - id: ui_interact
    type: config_gadget_ui
    if: has_field_ui_interact
  - id: misc
    type: config_gadget_misc
    if: has_field_misc
  - id: state_layers
    type: dict_of__aux_types__string_disp__config_base_state_layer
    if: has_field_state_layers
  - id: audio
    type: disp__config_entity_audio
    if: has_field_audio
  - id: aibeta
    type: config_ai_beta
    if: has_field_aibeta
  - id: weather
    type: config_weather
    if: has_field_weather
  - id: wall
    type: config_wall
    if: has_field_wall
  - id: face
    type: config_face
    if: has_field_face
  - id: part_control
    type: config_part_controller
    if: has_field_part_control
  - id: paimon
    type: config_paimon
    if: has_field_paimon
  - id: radar_hint
    type: u1
    if: has_field_radar_hint
  - id: keep_modifier_out_sight
    type: u1
    if: has_field_keep_modifier_out_sight
  - id: gadget_action
    type: config_gadget_action
    if: has_field_gadget_action
  - id: gadget_turn
    type: config_gadget_turn
    if: has_field_gadget_turn
  - id: billboard
    type: disp__config_billboard
    if: has_field_billboard
  - id: intee
    type: config_intee
    if: has_field_intee
  - id: bind_emotions
    type: array_of__aux_types__string__length_u
    if: has_field_bind_emotions
  - id: projector
    type: u1
    if: has_field_projector
  - id: low_priority_intee
    type: u1
    if: has_field_low_priority_intee
  - id: can_remove_by_client
    type: u1
    if: has_field_can_remove_by_client
  - id: tags
    type: array_of__aux_types__string__length_u
    if: has_field_tags
  - id: can_be_triggered_by_avatar_ray
    type: u1
    if: has_field_can_be_triggered_by_avatar_ray
  - id: vehicle
    type: config_vehicle
    if: has_field_vehicle
  - id: dangerzone
    type: config_danger_zone
    if: has_field_dangerzone
  - id: fishing_zone
    type: config_fishing_zone
    if: has_field_fishing_zone
  - id: force_set_entity_type
    type: enum__entity_type
    if: has_field_force_set_entity_type
  - id: camera_adjust
    type: config_gadget_special_camera
    if: has_field_camera_adjust
  - id: vod_intee
    type: config_vod_intee
    if: has_field_vod_intee
  - id: vod_player
    type: config_live_player
    if: has_field_vod_player
  - id: camera_box
    type: config_gadget_camera_box
    if: has_field_camera_box
  - id: open_watcher
    type: u1
    if: has_field_open_watcher
instances:
  has_field_has_equip: # Field №0
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000001) != 0
  has_field_has_audio: # Field №1
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000010) != 0
  has_field_has_model: # Field №2
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000000100) != 0
  has_field_has_ability: # Field №3
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000001000) != 0
  has_field_has_follow_wind_zone_rotation: # Field №4
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000010000) != 0
  has_field_force_dont_use_update_rigidbody: # Field №5
    value: (bit_field.value & 0b00000000000000000000000000000000000000000000100000) != 0
  has_field_has_connect_trigger: # Field №6
    value: (bit_field.value & 0b00000000000000000000000000000000000000000001000000) != 0
  has_field_can_be_created_on_platform: # Field №7
    value: (bit_field.value & 0b00000000000000000000000000000000000000000010000000) != 0
  has_field_connect_trigger_priority: # Field №8
    value: (bit_field.value & 0b00000000000000000000000000000000000000000100000000) != 0
  has_field_ignore_child_scene_prop: # Field №9
    value: (bit_field.value & 0b00000000000000000000000000000000000000001000000000) != 0
  has_field_move_refresh_ground_force_up: # Field №10
    value: (bit_field.value & 0b00000000000000000000000000000000000000010000000000) != 0
  has_field_combat: # Field №11
    value: (bit_field.value & 0b00000000000000000000000000000000000000100000000000) != 0
  has_field_abilities: # Field №12
    value: (bit_field.value & 0b00000000000000000000000000000000000001000000000000) != 0
  has_field_field: # Field №13
    value: (bit_field.value & 0b00000000000000000000000000000000000010000000000000) != 0
  has_field_timer: # Field №14
    value: (bit_field.value & 0b00000000000000000000000000000000000100000000000000) != 0
  has_field_move: # Field №15
    value: (bit_field.value & 0b00000000000000000000000000000000001000000000000000) != 0
  has_field_gadget: # Field №16
    value: (bit_field.value & 0b00000000000000000000000000000000010000000000000000) != 0
  has_field_equipment: # Field №17
    value: (bit_field.value & 0b00000000000000000000000000000000100000000000000000) != 0
  has_field_navigation: # Field №18
    value: (bit_field.value & 0b00000000000000000000000000000001000000000000000000) != 0
  has_field_ui_interact: # Field №19
    value: (bit_field.value & 0b00000000000000000000000000000010000000000000000000) != 0
  has_field_misc: # Field №20
    value: (bit_field.value & 0b00000000000000000000000000000100000000000000000000) != 0
  has_field_state_layers: # Field №21
    value: (bit_field.value & 0b00000000000000000000000000001000000000000000000000) != 0
  has_field_audio: # Field №22
    value: (bit_field.value & 0b00000000000000000000000000010000000000000000000000) != 0
  has_field_aibeta: # Field №23
    value: (bit_field.value & 0b00000000000000000000000000100000000000000000000000) != 0
  has_field_weather: # Field №24
    value: (bit_field.value & 0b00000000000000000000000001000000000000000000000000) != 0
  has_field_wall: # Field №25
    value: (bit_field.value & 0b00000000000000000000000010000000000000000000000000) != 0
  has_field_face: # Field №26
    value: (bit_field.value & 0b00000000000000000000000100000000000000000000000000) != 0
  has_field_part_control: # Field №27
    value: (bit_field.value & 0b00000000000000000000001000000000000000000000000000) != 0
  has_field_paimon: # Field №28
    value: (bit_field.value & 0b00000000000000000000010000000000000000000000000000) != 0
  has_field_radar_hint: # Field №29
    value: (bit_field.value & 0b00000000000000000000100000000000000000000000000000) != 0
  has_field_keep_modifier_out_sight: # Field №30
    value: (bit_field.value & 0b00000000000000000001000000000000000000000000000000) != 0
  has_field_gadget_action: # Field №31
    value: (bit_field.value & 0b00000000000000000010000000000000000000000000000000) != 0
  has_field_gadget_turn: # Field №32
    value: (bit_field.value & 0b00000000000000000100000000000000000000000000000000) != 0
  has_field_billboard: # Field №33
    value: (bit_field.value & 0b00000000000000001000000000000000000000000000000000) != 0
  has_field_intee: # Field №34
    value: (bit_field.value & 0b00000000000000010000000000000000000000000000000000) != 0
  has_field_bind_emotions: # Field №35
    value: (bit_field.value & 0b00000000000000100000000000000000000000000000000000) != 0
  has_field_projector: # Field №36
    value: (bit_field.value & 0b00000000000001000000000000000000000000000000000000) != 0
  has_field_low_priority_intee: # Field №37
    value: (bit_field.value & 0b00000000000010000000000000000000000000000000000000) != 0
  has_field_can_remove_by_client: # Field №38
    value: (bit_field.value & 0b00000000000100000000000000000000000000000000000000) != 0
  has_field_tags: # Field №39
    value: (bit_field.value & 0b00000000001000000000000000000000000000000000000000) != 0
  has_field_can_be_triggered_by_avatar_ray: # Field №40
    value: (bit_field.value & 0b00000000010000000000000000000000000000000000000000) != 0
  has_field_vehicle: # Field №41
    value: (bit_field.value & 0b00000000100000000000000000000000000000000000000000) != 0
  has_field_dangerzone: # Field №42
    value: (bit_field.value & 0b00000001000000000000000000000000000000000000000000) != 0
  has_field_fishing_zone: # Field №43
    value: (bit_field.value & 0b00000010000000000000000000000000000000000000000000) != 0
  has_field_force_set_entity_type: # Field №44
    value: (bit_field.value & 0b00000100000000000000000000000000000000000000000000) != 0
  has_field_camera_adjust: # Field №45
    value: (bit_field.value & 0b00001000000000000000000000000000000000000000000000) != 0
  has_field_vod_intee: # Field №46
    value: (bit_field.value & 0b00010000000000000000000000000000000000000000000000) != 0
  has_field_vod_player: # Field №47
    value: (bit_field.value & 0b00100000000000000000000000000000000000000000000000) != 0
  has_field_camera_box: # Field №48
    value: (bit_field.value & 0b01000000000000000000000000000000000000000000000000) != 0
  has_field_open_watcher: # Field №49
    value: (bit_field.value & 0b10000000000000000000000000000000000000000000000000) != 0
  # Base class fields
  common:
    value: base.common
  head_control:
    value: base.head_control
  special_point:
    value: base.special_point
  custom_attack_shape:
    value: base.custom_attack_shape
  model:
    value: base.model
  dither:
    value: base.dither
  global_value:
    value: base.global_value
  entity_tags:
    value: base.entity_tags
types:
  config_timer:
    seq:
      - id: bit_field
        type: u1
      - id: life_infinite
        type: u1
        if: has_field_life_infinite
      - id: start_check_time
        type: f4
        if: has_field_start_check_time
      - id: check_interval
        type: f4
        if: has_field_check_interval
      - id: life_time
        type: f4
        if: has_field_life_time
    instances:
      has_field_life_infinite: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_start_check_time: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_check_interval: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_life_time: # Field №3
        value: (bit_field & 0b1000) != 0
  config_gadget_camera_box:
    seq:
      - id: bit_field
        type: u1
      - id: config_name
        type: aux_types::string
        if: has_field_config_name
      - id: enter_radius
        type: f4
        if: has_field_enter_radius
      - id: exit_radius
        type: f4
        if: has_field_exit_radius
    instances:
      has_field_config_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_enter_radius: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_exit_radius: # Field №2
        value: (bit_field & 0b100) != 0
  config_vod_intee:
    seq:
      - id: bit_field
        type: u1
      - id: excel_config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_excel_config_id
    instances:
      has_field_excel_config_id: # Field №0
        value: (bit_field & 0b1) != 0
  config_gadget_special_camera:
    seq:
      - id: base
        type: config_special_camera
      - id: bit_field
        type: u1
      - id: enter_angle
        type: f4
        if: has_field_enter_angle
      - id: exit_angle
        type: f4
        if: has_field_exit_angle
    instances:
      has_field_enter_angle: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_exit_angle: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      priority:
        value: base.priority
      enter_radius:
        value: base.enter_radius
      exit_radius:
        value: base.exit_radius
      height_adjust:
        value: base.height_adjust
      fov:
        value: base.fov
      zoom:
        value: base.zoom
      spherical_y:
        value: base.spherical_y
      lock_spherical_y:
        value: base.lock_spherical_y
      spherical_y_up:
        value: base.spherical_y_up
      spherical_y_down:
        value: base.spherical_y_down
      auto_turn_start_min:
        value: base.auto_turn_start_min
      auto_turn_start_max:
        value: base.auto_turn_start_max
      auto_turn_end_min:
        value: base.auto_turn_end_min
      auto_turn_end_max:
        value: base.auto_turn_end_max
