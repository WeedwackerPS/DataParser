types:
  config_trans_point_entity:
    seq:
      - id: base
        type: config_gadget
      - id: bit_field
        type: u1
      - id: update_material_list
        type: array_of__trans_point_update_material__length_u
        if: has_field_update_material_list
    instances:
      has_field_update_material_list: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      has_equip:
        value: base.has_equip
      has_audio:
        value: base.has_audio
      has_model:
        value: base.has_model
      has_ability:
        value: base.has_ability
      has_follow_wind_zone_rotation:
        value: base.has_follow_wind_zone_rotation
      force_dont_use_update_rigidbody:
        value: base.force_dont_use_update_rigidbody
      has_connect_trigger:
        value: base.has_connect_trigger
      can_be_created_on_platform:
        value: base.can_be_created_on_platform
      connect_trigger_priority:
        value: base.connect_trigger_priority
      ignore_child_scene_prop:
        value: base.ignore_child_scene_prop
      move_refresh_ground_force_up:
        value: base.move_refresh_ground_force_up
      combat:
        value: base.combat
      abilities:
        value: base.abilities
      field:
        value: base.field
      timer:
        value: base.timer
      move:
        value: base.move
      gadget:
        value: base.gadget
      equipment:
        value: base.equipment
      navigation:
        value: base.navigation
      ui_interact:
        value: base.ui_interact
      misc:
        value: base.misc
      state_layers:
        value: base.state_layers
      audio:
        value: base.audio
      aibeta:
        value: base.aibeta
      weather:
        value: base.weather
      wall:
        value: base.wall
      face:
        value: base.face
      part_control:
        value: base.part_control
      paimon:
        value: base.paimon
      radar_hint:
        value: base.radar_hint
      keep_modifier_out_sight:
        value: base.keep_modifier_out_sight
      gadget_action:
        value: base.gadget_action
      gadget_turn:
        value: base.gadget_turn
      billboard:
        value: base.billboard
      intee:
        value: base.intee
      bind_emotions:
        value: base.bind_emotions
      projector:
        value: base.projector
      low_priority_intee:
        value: base.low_priority_intee
      can_remove_by_client:
        value: base.can_remove_by_client
      tags:
        value: base.tags
      can_be_triggered_by_avatar_ray:
        value: base.can_be_triggered_by_avatar_ray
      vehicle:
        value: base.vehicle
      dangerzone:
        value: base.dangerzone
      fishing_zone:
        value: base.fishing_zone
      force_set_entity_type:
        value: base.force_set_entity_type
      camera_adjust:
        value: base.camera_adjust
      vod_intee:
        value: base.vod_intee
      vod_player:
        value: base.vod_player
      camera_box:
        value: base.camera_box
      open_watcher:
        value: base.open_watcher
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
