meta:
  id: enum__entity_token_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__entity_token_action_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: entity_token_action_type
enums:
  entity_token_action_type:
    -1: entity_token_action_type_invalid
    0: entity_token_action_type_fire_effect
    1: entity_token_action_type_attach_effect
    2: entity_token_action_type_apply_modifier
    3: entity_token_action_type_apply_level_modifier
    4: entity_token_action_type_audio
    5: entity_token_action_type_trigger_attack_event
    6: entity_token_action_type_send_effect_trigger
    7: entity_token_action_type_internal_fire_effect_god
    8: entity_token_action_type_internal_fire_effect_normal
    9: entity_token_action_type_internal_fire_effect_low
    10: entity_token_action_type_internal_attach_effect_god
    11: entity_token_action_type_internal_attach_effect_normal
    12: entity_token_action_type_internal_attach_effect_low
    13: entity_token_action_type_create_entity_sync
    14: entity_token_action_type_create_entity_async
    15: entity_token_action_type_ui_spawn
    16: entity_token_action_type_count
