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
// en : default functions
// ja : デフォルト関数群
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



init(){}
toggleusbstickinhand(){}
hideinvisiblecollisions(){}
_id_141AE( var_0, var_1, var_2, var_3 ){}
player_get_primary_weapon_object( var_0 ){}
eliminateplayer( var_0, var_1, var_2, var_3 ){}
_id_1226C(){}
_id_13277( var_0 ){}
_id_11C68(){}
onplayerconnect( var_0 ){}
onplayerspawned(){}
onplayerkilled( var_0 ){}
_id_12054( var_0 ){}
_id_12508(){}
_id_13141(){}
_id_13197( var_0, var_1 ){}
attempted_to_use_gunship( var_0 ){}
totalmuncurrencyearned(){}
_id_1418C( var_0, var_1 ){}
_id_1418D( var_0, var_1, var_2, var_3 ){}
vehicle_spawn_mp_gamemodesupportsrespawn(){}
_id_126F1( var_0 ){}
_id_1365D( var_0 ){}
manage_fakebody_hides(){}
maxnumsites(){}
_id_143F7(){}
_id_133D6(){}
_id_1361B(){}
last_unresolved_collision_time(){}
_id_1255F( var_0 ){}
_id_1257A( var_0, var_1 ){}
_id_1257B(){}
round_enemies_push_logic( var_0, var_1 ){}
_id_1255D(){}
_id_12560(){}
_id_1255C( var_0 ){}
_id_1255E(){}
_id_143F8( var_0 ){}
_id_136AA( var_0 ){}
_id_1367A( var_0, var_1, var_2 ){}
_id_136A4( var_0 ){}
_id_1360A( var_0 ){}
_id_14234(){}
_id_133E1( var_0 ){}
_id_11A3E( var_0, var_1 ){}
_id_11A3D( var_0, var_1 ){}
_id_133DB( var_0 ){}
_id_1367B( var_0, var_1, var_2 ){}
_id_1423F( var_0, var_1 ){}
_id_14259( var_0 ){}
_id_14260( var_0 ){}
relic_squadlink_outline_monitor( var_0 ){}
_id_14251(){}
_id_14247( var_0 ){}
_id_14252( var_0 ){}
_id_1423A(){}
_id_1423E( var_0 ){}
_id_14274( var_0, var_1 ){}
_id_14272(){}
_id_14244(){}
_id_14273(){}
_id_1425B(){}
_id_1422C(){}
freight_lift_build( var_0, var_1 ){}
freeze_timer_at_max_time_bomb_vest( var_0, var_1 ){}
_id_1422F( var_0, var_1 ){}
player_death( var_0 ){}
_id_14236( var_0, var_1 ){}
_id_14237( var_0, var_1 ){}
_id_132FD( var_0 ){}
_id_14275( var_0, var_1 ){}
_id_14245( var_0 ){}
_id_125F2( var_0 ){}
_id_13C54(){}
_id_1255A(){}
_id_12679(){}
_id_12559(){}
thankyou_photo(){}
play_spotrep_capture_sfx( var_0 ){}
_id_1326F( var_0 ){}
play_smoke_fx( var_0 ){}
_id_1452D( var_0 ){}
runkilltriger( var_0, var_1 ){}
dyn_door( var_0 ){}
playerrespawn( var_0, var_1 ){}
_id_126A4( var_0 ){}
_id_1255B(){}
_id_1369E( var_0 ){}
_id_126AC(){}
_id_12E60( var_0 ){}
_id_12695(){}
playergulaggetrespawnpoint( var_0 ){}
_id_134D7( var_0, var_1 ){}
_id_13FE1( var_0, var_1, var_2 ){}
issquadmateindanger( var_0 ){}
respawnfade( var_0 ){}
respawn_enemies( var_0 ){}
_id_121FC( var_0 ){}
_id_125C5( var_0 ){}
_id_125C4( var_0 ){}
_id_12648( var_0 ){}
spawndogtagtoken( var_0, var_1 ){}
_id_13621( var_0, var_1 ){}
_id_1253A(){}
_id_126A9(){}
embassy_level_init(){}
emp_drone_should_take_damage(){}
emp_drone_proximity_explode( var_0, var_1 ){}
_id_126BC( var_0, var_1, var_2, var_3, var_4, var_5 ){}
_id_12006(){}
get_bomb_vest_id_vfx( var_0 ){}
_id_1257C( var_0 ){}
_id_1257F( var_0 ){}
_id_12578( var_0 ){}
_id_1256A( var_0, var_1, var_2 ){}
_id_1256C( var_0, var_1, var_2, var_3 ){}
_id_1252E( var_0 ){}
remove_dko_spawnflags( var_0, var_1 ){}
remove_crusader_class( var_0, var_1, var_2 ){}
remove_closest_chopper_boss_vandalize_node_down( var_0, var_1, var_2 ){}
respawnheightoverride( var_0 ){}
respawndelayoverride( var_0 ){}
isused( var_0, var_1 ){}
_id_12689( var_0 ){}
_id_12575(){}
_id_12576(){}
modifyplayerdamage( var_0 ){}
_id_1226B( var_0, var_1 ){}
playerdropplunderondeath( var_0, var_1 ){}
_id_12284( var_0, var_1, var_2, var_3 ){}
_id_12262( var_0, var_1, var_2 ){}
_id_12261( var_0, var_1, var_2 ){}
totalcollecteditems(){}
_id_140D5(){}
init_trap_room_wave( var_0 ){}
_id_11F46( var_0 ){}
init_trigger_spawn( var_0, var_1, var_2, var_3, var_4 ){}
_id_13270( var_0, var_1 ){}
_id_13271( var_0, var_1, var_2 ){}
lastdialogfinishedtime( var_0 ){}
loadoutexecutionquip( var_0 ){}
ropeguy( var_0, var_1, var_2 ){}
rootweapon( var_0, var_1, var_2, var_3 ){}
removeplayeraslootleader( var_0 ){}
showtoteam( var_0 ){}
_id_126AD(){}
_id_1257E( var_0 ){}
_id_126AE(){}
room_doors( var_0 ){}
_id_136C6( var_0, var_1 ){}
_id_136C8( var_0, var_1, var_2 ){}
_id_136C7( var_0, var_1 ){}
has_relic_amped_victim_filled_bar(){}
_id_131D4( var_0 ){}
unset_relic_gas_martyr(){}
ontimelimit(){}
_id_11ECC( var_0 ){}
munition_slot_gunship_emptied_message(){}
munition_source_getridof(){}
_id_13230(){}
relic_amped_last_kill_time( var_0 ){}
_id_11E6F( var_0, var_1 ){}
_id_12CB8( var_0 ){}
relic_amped_monitor(){}
isfinalpush(){}
_id_1322F( var_0 ){}
_id_131D6(){}
_id_12AA3( var_0 ){}
_id_1313C( var_0, var_1, var_2 ){}
relic_amped_pause( var_0, var_1 ){}
_id_1313B( var_0, var_1 ){}
relic_amped_on_ai_kill( var_0 ){}
_id_1313A( var_0 ){}
start_pipe_room_menu(){}
relic_amped_monitor_beeps(){}
getquesttablerewardgroup(){}
getquestrewardgroupstablerewards(){}
eliminatedhudmonitor( var_0 ){}
endgame_stars( var_0, var_1 ){}
relic_squadlink_onsteppedfar( var_0, var_1 ){}
_id_1426B(){}
relic_squadlink_onbecameinvalidplayer( var_0, var_1 ){}
registerbrsquadleaderjumpcommands( var_0, var_1 ){}
_id_1225D( var_0, var_1, var_2, var_3 ){}
contestedtime( var_0 ){}
toggle_fx_trap(){}
time_on_floor(){}
time_passed_no_target_threshold(){}
_id_12285( var_0 ){}
_id_12286( var_0 ){}
_id_12287( var_0 ){}
_id_12265( var_0, var_1 ){}
_id_12266( var_0, var_1 ){}
_id_12607( var_0, var_1, var_2 ){}
_id_12608( var_0, var_1, var_2 ){}
_id_12537(){}
headlightright(){}
toggle_player_settings(){}
_id_144EC(){}
_id_144ED(){}
_id_12026( var_0 ){}
_id_1202F( var_0 ){}
_id_12609(){}
tmtyl_vip_interactions(){}
battle_tracks_toggleoffstate( var_0, var_1, var_2, var_3, var_4 ){}
getlocationnameforpoint( var_0 ){}
timetonextcheckpoint(){}
_id_1318D( var_0, var_1 ){}
balloon_deposit_cash_vo_explanation( var_0, var_1, var_2 ){}
_id_13929( var_0, var_1 ){}
init_relic_trex( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
time_between_rocket_fire(){}
init_relic_doubletap( var_0 ){}
_id_12206( var_0, var_1, var_2 ){}
relic_doubletap_helper( var_0 ){}
init_relic_damage_from_above( var_0, var_1, var_2 ){}
last_vampire_sound( var_0 ){}
_id_132A8( var_0, var_1, var_2, var_3 ){}
init_tut_doors( var_0, var_1, var_2, var_3, var_4 ){}
init_relic_doomslayer( var_0, var_1, var_2, var_3, var_4, var_5, var_6 ){}
init_structs_mp_br_mechanics( var_0, var_1, var_2, var_3, var_4, var_5, var_6 ){}
has_balloon(){}
init_trap_room_obj( var_0, var_1 ){}
init_trap_room_interactions( var_0, var_1, var_2 ){}
init_structs( var_0, var_1 ){}
_id_13260( var_0, var_1 ){}
_id_1268D(){}
_id_144E8(){}
_id_144E9( var_0 ){}
_id_11F9C( var_0 ){}
_id_11F9B(){}
_id_13880( var_0 ){}
_id_138F6( var_0 ){}
get_cave_combat_logic( var_0 ){}
get_alive_able_players( var_0 ){}
_id_11F98( var_0 ){}
_id_11F99( var_0, var_1 ){}
relic_oneclip_monitor( var_0, var_1 ){}
_id_11FA3( var_0 ){}
_id_11FA0(){}
_id_11F92( var_0, var_1, var_2, var_3 ){}
timed_laser_trap_trigger(){}
_id_12194( var_0 ){}
_id_12198(){}
_id_1219B(){}
_id_1219C(){}
_id_1219D(){}
_id_121A3(){}
respawn_solo(){}
respawn_state_greyout( var_0 ){}
respawn_trigger_think(){}
respawn_state_ready(){}
respawn_state_hidden(){}
waittill_player_uses_munition(){}
waittill_player_uses_scavenger_contract(){}
_id_12197(){}
_id_12193(){}
timed_death(){}
_id_1316A( var_0 ){}
init_seq_button( var_0, var_1, var_2 ){}
isusingremotekillstreak( var_0, var_1, var_2, var_3 ){}
isspreadweapon( var_0, var_1, var_2, var_3 ){}
isteamonlycrate( var_0, var_1, var_2, var_3, var_4 ){}
_id_13257( var_0, var_1 ){}
toggle_in_use(){}
dialog_wait_think_civ( var_0 ){}
eliminate_drone_spotlight_speed(){}
init_relic_fastbleedout( var_0, var_1 ){}
tracegroundheightexfil(){}
_id_14301( var_0, var_1, var_2, var_3 ){}
watchweapondrop( var_0, var_1, var_2, var_3, var_4, var_5, var_6 ){}
_id_1332C( var_0 ){}
watchweapondeathordisconnect( var_0, var_1, var_2, var_3 ){}
_id_1260A(){}
timelimitclock(){}
technical_initdamage(){}
_id_13231( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 ){}
_id_1286A( var_0, var_1 ){}
_id_13932(){}
_id_1392A( var_0 ){}
_id_1392E(){}
_id_1392D(){}
_id_13930(){}
_id_1392B(){}
_id_126E0(){}
_id_126DF( var_0 ){}
_id_1361F( var_0, var_1 ){}
_id_1392F( var_0, var_1, var_2 ){}
br_circle_closing_music( var_0, var_1 ){}
run_techo_spawner( var_0, var_1, var_2 ){}
firesalediscount( var_0, var_1 ){}
fix_wall_traversal( var_0, var_1 ){}
fix_door_clip( var_0, var_1, var_2 ){}
flagwatchradarownerlost(){}
_id_13C18( var_0 ){}
_id_1225E(){}
terminal_pusher_approach_array_counter(){}
spawninitialvehicles(){}
_id_13639( var_0 ){}
_id_14250( var_0, var_1, var_2 ){}
respawningbr( var_0, var_1 ){}
_id_132F6( var_0 ){}
getquestperkbonus( var_0 ){}
play_rooftop_success_vo( var_0, var_1 ){}
init_relic_dogtags( var_0, var_1, var_2 ){}
_id_1438D( var_0 ){}
_id_125C3( var_0, var_1 ){}
_id_125C0( var_0, var_1 ){}
_id_1226D(){}
init_relic_bang_and_boom( var_0, var_1, var_2, var_3, var_4, var_5 ){}
init_relic_amped( var_0, var_1, var_2, var_3, var_4 ){}
_id_1361C( var_0, var_1, var_2, var_3, var_4 ){}
play_reset_sequences( var_0, var_1 ){}
registerscriptableinstance( var_0 ){}
_id_13357( var_0 ){}
van_infil_sfx_chief(){}
ammorestock_used( var_0, var_1 ){}
_id_13181( var_0 ){}
_id_13184( var_0 ){}
_id_13182( var_0 ){}
_id_13183( var_0 ){}
_id_13185( var_0 ){}
_id_1318B( var_0, var_1 ){}
_id_13190( var_0, var_1 ){}
_id_1318A( var_0, var_1 ){}
_id_13189( var_0 ){}
_id_13188( var_0 ){}
_id_1318E( var_0 ){}
_id_11AA2( var_0 ){}
_id_1318F( var_0, var_1 ){}
_id_1318C( var_0, var_1, var_2 ){}
_id_13157( var_0, var_1, var_2 ){}
_id_13156( var_0, var_1 ){}
reload_use_trigger( var_0, var_1 ){}
_id_1260D( var_0, var_1, var_2, var_3 ){}
_id_1260E( var_0, var_1, var_2, var_3 ){}
_id_12258(){}
#using_animtree("script_model");
_id_12257(){}
onteammatereviveweapontaken( var_0, var_1 ){}
play_random_sound_event(){}
startspectatorview(){}
_id_13FD8( var_0, var_1, var_2, var_3 ){}
x1fin_think( var_0 ){}
_id_139D8( var_0 ){}
_id_12574( var_0 ){}
respawntokenclosewithgulag(){}
_id_126BB(){}
_id_125E7(){}
_id_12535(){}
tomastrike_isflyingvehicle(){}
_id_13697( var_0, var_1, var_2, var_3 ){}
rocket_fuel_x1( var_0, var_1 ){}
_id_1326A( var_0, var_1 ){}
_id_13DEC( var_0, var_1 ){}
delay_start_escort_enter_vehicle_objective(){}
_id_11E11(){}
_id_11E12(){}
_id_11E10(){}
_id_12804( var_0 ){}
_id_12AA5(){}
