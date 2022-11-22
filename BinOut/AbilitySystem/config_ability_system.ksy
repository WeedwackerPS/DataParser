meta:
  id: config_ability_system
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__element_type
    - ../../EnumType/enum__entity_type
    - ../../EnumType/enum__massive_element_trigger_type
    - ../../EnumType/enum__modifier_stacking
    - ../Ability/Temp/Common/array_of__disp__config_ability_action__length_u
seq:
  - id: bit_field
    type: u1
  - id: should_pre_active
    type: u1
    if: has_field_should_pre_active
  - id: tasks
    type: array_of__disp__config_ability_task__length_u
    if: has_field_tasks
instances:
  has_field_should_pre_active: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_tasks: # Field №1
    value: (bit_field & 0b10) != 0
types:
  array_of__disp__config_ability_task__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_ability_task
        repeat: expr
        repeat-expr: length.value
  disp__config_ability_task:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_ability_task
            1: config_dummy_ability_task
            2: config_trigger_massive_element_task
            _: aux_types::error
  config_ability_task:
    seq:
      - id: bit_field
        type: u1
      - id: is_async
        type: u1
        if: has_field_is_async
      - id: duration
        type: f4
        if: has_field_duration
      - id: delay
        type: f4
        if: has_field_delay
    instances:
      has_field_is_async: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_duration: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_delay: # Field №2
        value: (bit_field & 0b100) != 0
  config_dummy_ability_task:
    seq:
      - id: base
        type: config_ability_task
      - id: bit_field
        type: u1
      - id: dummy_number
        type: aux_types::vlq_base128_le_s
        if: has_field_dummy_number
    instances:
      has_field_dummy_number: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      is_async:
        value: base.is_async
      duration:
        value: base.duration
      delay:
        value: base.delay
  config_trigger_massive_element_task:
    seq:
      - id: base
        type: config_ability_task
      - id: bit_field
        type: u1
      - id: entity_elements
        type: array_of__config_massive_entity_element__length_u
        if: has_field_entity_elements
      - id: element_trigger_actions
        type: array_of__config_massive_element_trigger_action__length_u
        if: has_field_element_trigger_actions
    instances:
      has_field_entity_elements: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_element_trigger_actions: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      is_async:
        value: base.is_async
      duration:
        value: base.duration
      delay:
        value: base.delay
  array_of__config_massive_entity_element__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_massive_entity_element
        repeat: expr
        repeat-expr: length.value
  array_of__config_massive_element_trigger_action__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_massive_element_trigger_action
        repeat: expr
        repeat-expr: length.value
  config_massive_entity_element:
    seq:
      - id: bit_field
        type: u1
      - id: entity_type
        type: enum__entity_type
        if: has_field_entity_type
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: element_durability
        type: f4
        if: has_field_element_durability
      - id: is_element_durability_mutable
        type: u1
        if: has_field_is_element_durability_mutable
    instances:
      has_field_entity_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_element_type: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_element_durability: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_is_element_durability_mutable: # Field №3
        value: (bit_field & 0b1000) != 0
  config_massive_element_trigger_action:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: trigger_type
        type: enum__massive_element_trigger_type
        if: has_field_trigger_type
      - id: stack_type
        type: enum__modifier_stacking
        if: has_field_stack_type
      - id: reduce_durability
        type: f4
        if: has_field_reduce_durability
      - id: duration
        type: f4
        if: has_field_duration
      - id: attack_id
        type: aux_types::string
        if: has_field_attack_id
      - id: action_id
        type: aux_types::string
        if: has_field_action_id
      - id: on_flush
        type: array_of__disp__config_ability_action__length_u
        if: has_field_on_flush
      - id: on_pre_update
        type: array_of__disp__config_ability_action__length_u
        if: has_field_on_pre_update
      - id: on_detach
        type: array_of__disp__config_ability_action__length_u
        if: has_field_on_detach
    instances:
      has_field_trigger_type: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_stack_type: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_reduce_durability: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_duration: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_attack_id: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_action_id: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_on_flush: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_on_pre_update: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_on_detach: # Field №8
        value: (bit_field.value & 0b100000000) != 0