//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Created date  : 2024/02/05
// Latest update : 2025/05/20
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 作成日 : 2024/02/05
// 更新日 : 2025/05/20
//=================================================================//

//:::::::::::::::::::::::::::::::::::::::::::::::::://
// [ English ]
//   < CoD GSC (C++) syntax explanation >
//     @ level                    = modifier for the entire room
//     @ level.players[i]         = 1 player participating in the room
//     @ self                     = myself where the function is being executed
//     @ thread                   = Execute the specified function in a subthread
//     @ Endon( "event_name" )    = Terminates function processing when the specified event name is issued.
//     @ WaitTill( "event_name" ) = Waits until the specified event name is issued, and then resumes subsequent processing
//     @ Notify( "event_name" )   = Publish the specified event name
//     @ Destroy( )               = Delete the specified variable and its actual state
//     @ IsDefined( variable )    = Check if the specified variable has been created
//     @ ^0                       = Color code (Black)
//     @ ^1                       = Color code (Red)
//     @ ^2                       = Color code (Green)
//     @ ^3                       = Color code (Yellow)
//     @ ^4                       = Color code (Blue)
//     @ ^5                       = Color code (Cyan)
//     @ ^6                       = Color code (Pink)
//     @ ^7                       = Color code (White)
//     @ wait                     = Wait for the specified time
// ---------------------------------------------
// [ Japanese ]
//   < CoD GSC (C++) 構文解説 >
//     @ level                    = 部屋全体に対する修飾子
//     @ level.players[i]         = 部屋に参加しているプレイヤー1個人
//     @ self                     = 関数が実行されている自分自身
//     @ thread                   = 指定した関数をサブスレッドで実行する
//     @ Endon( "event_name" )    = 指定したイベント名が発行されたら、関数の処理を終了する
//     @ WaitTill( "event_name" ) = 指定したイベント名が発行されるまで待機し、イベントが発行されたら、以降の処理を再開する
//     @ Notify( "event_name" )   = 指定したイベント名を発行する
//     @ Destroy( )               = 指定した変数とその実態を削除する
//     @ IsDefined( variable )    = 指定した変数が作成されているか調べる
//     @ ^0                       = カラーコード (黒)
//     @ ^1                       = カラーコード (赤)
//     @ ^2                       = カラーコード (緑)
//     @ ^3                       = カラーコード (黄色)
//     @ ^4                       = カラーコード (青)
//     @ ^5                       = カラーコード (水色)
//     @ ^6                       = カラーコード (ピンク)
//     @ ^7                       = カラーコード (白)
//     @ wait                     = 指定した時間分待機する
//:::::::::::::::::::::::::::::::::::::::::::::::::://



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : initialization process
// ja : 初期化処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : initialization process (loaded during map load after match start)
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
init( )
{
    
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : default functions
// ja : デフォルト関数群
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



activate_laser_trap_parent(){}
toggleusbstickinhand(){}
syringe_out(){}
getburnfxstatepriority(){}
_id_14363(){}
_id_14364(){}
cleanupents(){}
onplayerdisconnect( var_0 ){}
ononeleftevent( var_0 ){}
_id_126F1( var_0 ){}
_id_1365D( var_0 ){}
_id_126A4( var_0 ){}
_id_1253A(){}
relic_oneclip_stock_adjustment_monitor(){}
_id_13C61(){}
play_quarry_intro_vo(){}
play_train_speaker_vo_internal(){}
onplayerkilled( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ){}
activate_trap_from_interaction(){}
dyn_door( var_0 ){}
playerrespawn(){}
_id_12691( var_0 ){}
_id_1400C(){}
patchfix( var_0, var_1 ){}
fadeoutin(){}
activate_javelin_ammo_refill(){}
_id_1325E(){}
relic_squadlink_vision_debuff(){}
_id_11A9E(){}
_id_1325F(){}
relic_mythic_should_ai_play_pain(){}
_id_13354( var_0 ){}
spawn_carriables_from_prefabs_min_max( var_0 ){}
maxvehicledamagedivisor(){}
_id_131CA( var_0 ){}
validate_demeanor( var_0 ){}
brendgame(){}
handleendgamesplash(){}
_id_1327A(){}
heli_assault2_death_watcher( var_0 ){}
activate_stealth_settings(){}
_id_13278(){}
_id_131CE( var_0, var_1 ){}
run_cleanup_funcs_for_unused_objectives( var_0 ){}
init_relic_trex( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ){}
replace_access_card_on_deathordisconnect(){}
run_common_functions_solider_stealth( var_0 ){}
run_died_poorly_funcs( var_0 ){}
run_blima_exfil_sequence( var_0 ){}
rpg_shoot_at_trigs( var_0 ){}
registerontimerupdate( var_0 ){}
_id_134D8( var_0, var_1 ){}
setobjectivecallbacks( var_0, var_1 ){}
setoutputfunc( var_0, var_1 ){}
_id_127C6(){}
checkforovertime( var_0 ){}
_id_12192(){}
_id_12397(){}
revive_or_disconnect_monitor( var_0 ){}
_id_13371( var_0 ){}
showsplashtoteam( var_0, var_1 ){}
_id_13372( var_0, var_1 ){}
_id_13DC6( var_0 ){}
_id_14024( var_0 ){}
makepickup( var_0, var_1 ){}
searchradiusidealmin( var_0 ){}
playerdropplunderondeath( var_0, var_1 ){}
_id_12075(){}
relic_healthpacks_think(){}
safehouse_regroup(){}
_id_126C1( var_0 ){}
_id_13AA8( var_0 ){}
_id_13ABF( var_0 ){}
spawn_vindia_assault3(){}
drophelicrate( var_0 ){}
cratedropplunder(){}
frag_crate_spawn( var_0, var_1, var_2 ){}
frag_crate_player_at_max_ammo( var_0 ){}
sortplayerplunderscores( var_0, var_1 ){}
smoke_door(){}
heliusecleanup(){}
helicleanupdepotonleaving( var_0 ){}
helicreateextractvfx( var_0 ){}
helicleanupextract( var_0 ){}
snapshot_crate_spawn(){}
spawnheli( var_0, var_1, var_2, var_3 ){}
_id_13693( var_0 ){}
smuggler_post_tele_kill(){}
smoke_enemy_think(){}
snowballfighthint( var_0 ){}
smuggler_killed_early(){}
smokesignal( var_0 ){}
handledestroydamage(){}
callback_vehicledamage( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 ){}
sol_3_4_pool(){}
helidescend( var_0, var_1 ){}
nuke_vault_suicidebomber_internal(){}
snapplayertotoppos(){}
snappointtooutofboundstriggertrace(){}
tracegroundheight( var_0 ){}
tracegroundpoint( var_0, var_1, var_2 ){}
heliwatchgameendleave(){}
activate_gasmask(){}
test_trigger_spawn(){}
init_relic_noks( var_0 ){}
_id_11D07(){}
_id_1364F( var_0 ){}
open_spots_and_spawn_truck( var_0 ){}
_id_13355(){}
open_selected_doors(){}
open_sliding_door(){}
checkforlaststandwipe( var_0 ){}
_id_11C50( var_0 ){}
setupextractionsites( var_0 ){}
_id_14025( var_0, var_1, var_2 ){}
_id_13FF1(){}
_id_13FCB( var_0, var_1, var_2 ){}
activate_pressure_sensor(){}
_id_13FF0( var_0, var_1, var_2, var_3 ){}
removeplatepouch( var_0, var_1, var_2 ){}
battle_tracks_updatebattletracks( var_0 ){}
_id_12C18( var_0 ){}
watchforplayerdeath( var_0 ){}
battle_tracks_trystopdrivertogglethink( var_0, var_1 ){}
_id_13FD5( var_0 ){}
_id_12C17( var_0 ){}
updateteammatelootleadermarks( var_0, var_1, var_2 ){}
get_valid_seats(){}
get_valid_starting_station_name_on_track(){}
get_type_to_drop(){}
get_unique_id(){}
_id_121B6( var_0 ){}
_id_121B4(){}
_id_12601(){}
_id_13FEF( var_0 ){}
binoculars_checkpendingtimer( var_0 ){}
longdeathtracker( var_0, var_1 ){}
activate_station(){}
ai_shooting_timer( var_0, var_1, var_2 ){}
_id_127DD( var_0, var_1, var_2 ){}
ai_weapons_free( var_0, var_1 ){}
play_tape_machine_animations( var_0 ){}
_id_1386C(){}
_id_12E1E(){}
_id_12E0E(){}
activate_scout_drone(){}
init_relic_team_proximity(){}
_id_13B86(){}
init_tape_machine_animations( var_0, var_1, var_2 ){}
_id_11DB0( var_0 ){}
_id_1336C( var_0 ){}
_id_1336B( var_0 ){}
spawn_downed_friendly( var_0 ){}
lastdropedtime(){}
achievement_id(){}
_id_13839( var_0 ){}
_id_1314A(){}
_id_13353( var_0 ){}
_id_13881( var_0 ){}
_id_12C13(){}
_id_13847(){}
_id_126A8( var_0, var_1 ){}
outro_main(){}
soldier_agent_lwfn0(){}
snowballfight( var_0 ){}
showquestcircletoplayer(){}
_id_13C30( var_0 ){}
play_skit_and_watch_for_endons( var_0, var_1 ){}
_id_11EF5( var_0 ){}
activate_gas_trap_cloud_parent(){}
_id_13DC8( var_0, var_1, var_2 ){}
remove_padding_damage(){}
ontimelimit(){}
convoy_anim_sequence(){}
setup_heli_starts_deep(){}
_id_126A6(){}
numextractions(){}
activate_gas_trap_cloud(){}
test_pipe_fire(){}
_id_13DB9(){}
mp_m_stack_patch(){}
registerquestcategorytablevalues( var_0 ){}
_id_12753( var_0, var_1 ){}
_id_12893(){}
teleportplayertoselection(){}
_id_144EB( var_0 ){}
_id_12892( var_0, var_1 ){}
play_nag_intro_vo( var_0 ){}
baitedbydecoy( var_0, var_1 ){}
_id_13208(){}
_id_13209(){}
activate_precision_use_lua(){}
put_objective_on_guy( var_0 ){}
his_removequestinstance( var_0, var_1 ){}
power_wave_mode_reset_playerdata( var_0, var_1 ){}
poweron_warnings( var_0, var_1, var_2 ){}
activate_subway_track_trigger_hurt(){}
_id_13B66(){}
activate_target(){}
_id_12AF0( var_0, var_1, var_2, var_3 ){}
_id_122C0( var_0 ){}
_id_122BF(){}
_id_122BE(){}
_id_122AB( var_0 ){}
_id_122AC( var_0 ){}
_id_122B9(){}
_id_122BA(){}
_id_122A7( var_0, var_1 ){}
_id_122A4( var_0, var_1, var_2 ){}
_id_122BB( var_0 ){}
_id_122A5(){}
_id_122B2( var_0 ){}
_id_122A8( var_0 ){}
_id_122B3( var_0, var_1, var_2, var_3 ){}
_id_122AA( var_0, var_1, var_2 ){}
_id_122A9(){}
_id_122AF( var_0 ){}
_id_122B0(){}
_id_122AD( var_0 ){}
_id_122B1( var_0 ){}
_id_122AE( var_0 ){}
_id_122B8( var_0 ){}
_id_12427( var_0, var_1 ){}
_id_122A2( var_0 ){}
_id_122B4( var_0, var_1 ){}
_id_122A3( var_0 ){}
_id_122B7(){}
_id_122B6( var_0 ){}
_id_122A6(){}
_id_12424( var_0, var_1 ){}
_id_12981( var_0 ){}
spawn_br_plunder_dispensers(){}
_id_13514(){}
subwave_progression(){}
_setdomflagiconinfo( var_0, var_1, var_2, var_3, var_4 ){}
activate_switch_cooldown(){}
_id_12AEF( var_0 ){}
_id_1229B(){}
_id_12297(){}
_id_12299( var_0, var_1 ){}
_id_12298( var_0 ){}
_id_1229A(){}
_id_122EE( var_0, var_1 ){}
_id_12295( var_0 ){}
activate_laser_shut_down_interaction(){}
_id_13EEE(){}
_id_13EF2(){}
_id_13EE7(){}
activate_all_targets(){}
relic_steelballs_health_boost(){}
dangercircletick( var_0, var_1 ){}
groundz(){}
activatemeleeblood(){}
tank_x1_capacity(){}
_id_1283F(){}
rear_door_collision(){}
ppkteamnoflag(){}
activate_laser_trap(){}
manage_fakebody_hides(){}
_id_138CC(){}
_id_12496(){}
patch_far_wait(){}
_id_12495(){}
____fulton_extraction_logic(){}
init_plunder_fulton_overrides(){}
____helicopter_helipad_extraction_logic(){}
init_plunder_heli_overrides(){}
____extraction_object_utility_logic(){}
plunder_repositoryplayerplundereventcallback_vaulttransfer( var_0, var_1, var_2 ){}
find_index_of_player_in_plunder_array( var_0, var_1 ){}
get_plundercount_for_player( var_0, var_1 ){}
get_amount_considering_capacity_overfill( var_0, var_1 ){}
add_amount_to_plunder_array( var_0, var_1, var_2 ){}
activate_emp_drone_func(){}
subscribedlocale(){}
issidehouseobjective(){}
debug_watch_for_rat_race_print_match_info_to_console_dvar(){}
init_infil(){}
_id_13FA8(){}
_id_13FA9( var_0 ){}
handledropbags(){}
build_formatted_key_value_string( var_0, var_1 ){}
get_game_state_debug_strings(){}
get_plunder_event_type_as_string( var_0 ){}
get_misc_state_list(){}
get_team_state_list(){}
get_player_state_list(){}
get_plunder_repository_state_list(){}
print_game_state_list_to_console( var_0, var_1 ){}
rat_race_print_match_info_to_console(){}
