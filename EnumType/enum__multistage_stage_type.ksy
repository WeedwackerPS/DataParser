meta:
  id: enum__multistage_stage_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__multistage_stage_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: multistage_stage_type
enums:
  multistage_stage_type:
    0: multistage_stage_mechanicus_build
    1: multistage_stage_mechanicus_kill
    2: multistage_stage_mechanicus_flip_card
    3: multistage_stage_idle
    4: multistage_stage_fleur_fair_gallery
    5: multistage_stage_fleur_fair_boss
    6: multistage_stage_fleur_fair_preview
    7: multistage_stage_chess_build
    8: multistage_stage_chess_kill
