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



initgulag(){}
_setdomflagiconinfo( var_0, var_1, var_2, var_3 ){}
tracegroundheightexfil(){}
gulaggetarenas(){}
relic_steelballs_dash(){}
setuparena( var_0 ){}
gulaggesturesinit(){}
getmaxplayers(){}
hiderespawntimer( var_0, var_1 ){}
hidequestobjiconfromplayer( var_0, var_1 ){}
copystructwithoffset( var_0, var_1, var_2 ){}
getgulagcenter( var_0 ){}
spawnweapon( var_0, var_1, var_2 ){}
spawnlootweapons( var_0 ){}
_id_125EE( var_0 ){}
_id_125EF( var_0 ){}
ismatchpending( var_0 ){}
isfightready( var_0 ){}
set_relic_noregen( var_0 ){}
monitorgulag( var_0 ){}
_id_12219( var_0 ){}
unset_relic_martyrdom(){}
calloutmarkerping_cp_setupcptimeouts(){}
vehicle_compass_cp_shouldbevisibletoplayer(){}
circletimer( var_0 ){}
shutdowngulag( var_0, var_1, var_2 ){}
resolvetokensongulagshutdown(){}
hidealltokensongulagshutdown(){}
c130airdrop_getteamaveragepos(){}
_id_125E6(){}
set_relic_steelballs( var_0 ){}
onplayerdisconnect( var_0 ){}
_id_12551( var_0 ){}
remove_engineer_class(){}
_id_13249(){}
_id_13346( var_0 ){}
run_hud_logic(){}
playergulagdonesplash(){}
dojailbreak( var_0 ){}
jailbreaktimerwait( var_0 ){}
playeraddjailbreaktimer(){}
resetequipment( var_0 ){}
validateplayers( var_0 ){}
beginnewfight( var_0 ){}
watchlethaldelay( var_0 ){}
watchlethaldelayplayer( var_0 ){}
watchlethaldelayfeedbackplayer( var_0, var_1 ){}
_id_13849( var_0 ){}
_id_12692(){}
handleonekillwin( var_0, var_1, var_2, var_3 ){}
manageoutlines( var_0, var_1, var_2 ){}
manageoutlineswatchplayersaddedtojail( var_0 ){}
manageoutlineactive( var_0, var_1, var_2 ){}
manageoutlinecleanup( var_0, var_1 ){}
updateoutlines( var_0 ){}
playergulagarenaready(){}
gulagcountdowntimer( var_0, var_1, var_2 ){}
set_relic_vampire( var_0, var_1, var_2 ){}
lower_target_when_close( var_0, var_1 ){}
respawn_scriptible_carriable_wait(){}
waittillgulagmatchend( var_0, var_1 ){}
_id_143EF( var_0 ){}
isanyonealive( var_0 ){}
issquadwiped( var_0 ){}
isoneteamleft( var_0 ){}
handleendarena( var_0, var_1, var_2, var_3, var_4, var_5 ){}
_id_12642( var_0, var_1 ){}
getnextjailspawn( var_0 ){}
_id_13255( var_0, var_1 ){}
outlinewatchplayerprox( var_0 ){}
gulagstreamlocationstart( var_0 ){}
gulagstreamlocationwait(){}
gulagstreamlocationwaittimeout( var_0 ){}
gulagstreamlocationend(){}
set_scriptable_states(){}
addloadingplayer( var_0, var_1 ){}
addloadingplayerdisconnectwatch( var_0, var_1 ){}
removeloadingplayer( var_0, var_1 ){}
updatelootleadercirclesize( var_0, var_1 ){}
entergulag( var_0 ){}
entergulagwait( var_0 ){}
playergetnextarena(){}
updatelootleadermarks( var_0, var_1 ){}
_id_13165( var_0 ){}
_id_12527( var_0 ){}
_id_125F4( var_0 ){}
updatecanusegulag(){}
initplayerjail( var_0 ){}
_id_125F5( var_0 ){}
_id_126B3( var_0 ){}
playergulaggestures(){}
playergulaggesturesdisable(){}
fadeoutin( var_0 ){}
gulagfadetoblack( var_0 ){}
gulagfadefromblack( var_0 ){}
set_relic_noluck(){}
set_relic_noks(){}
patch_self_check( var_0 ){}
set_relic_punchbullets(){}
gulagloadingtext(){}
gulagloadingtextclear(){}
_id_126C3( var_0, var_1 ){}
initplayerarena( var_0, var_1, var_2 ){}
_id_126B0( var_0 ){}
getnextarenaspawn( var_0 ){}
_id_126C8( var_0 ){}
gulagvictory( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
_id_1263E( var_0 ){}
set_respawn_points( var_0, var_1 ){}
set_respawn_loc_delayed( var_0 ){}
_id_1268E( var_0 ){}
_id_126AA(){}
_id_12AA8( var_0, var_1 ){}
_id_12AAA( var_0, var_1 ){}
handlesoloexclusionils( var_0 ){}
set_relic_squadlink( var_0 ){}
set_relic_shieldsonly( var_0 ){}
set_relic_rocket_kill_ammo( var_0, var_1 ){}
updateplayereliminatedomnvar( var_0, var_1 ){}
_id_12568( var_0, var_1, var_2 ){}
rocket_fuel_stability( var_0, var_1, var_2 ){}
ai_washitbyvehicle( var_0, var_1, var_2 ){}
_id_12567(){}
_id_12566( var_0 ){}
playergetnearbybombsiteorigin( var_0 ){}
_id_125BE( var_0, var_1, var_2 ){}
registercarryobjectpickupcheck( var_0, var_1 ){}
gulagwinnerrespawn( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 ){}
_id_12524( var_0 ){}
_id_125BF( var_0 ){}
_id_13DCB( var_0 ){}
_id_13DCC(){}
playerrespawngulagcleanup( var_0 ){}
set_showing_bomb_wire_pair_to_player( var_0 ){}
set_solution(){}
gulagwinnerremembergunandammo(){}
set_slow_healthregen(){}
set_spawn_scoring_params_for_level(){}
popnextmatch( var_0 ){}
checkgulagusecount(){}
trygulagspawn(){}
_id_12517(){}
playergulaghud( var_0 ){}
updatematchtimerhud( var_0, var_1 ){}
_updatematchtimerhudinternal( var_0, var_1 ){}
updatematchqueuepositions( var_0 ){}
playerwatchdisconnect( var_0 ){}
playerdestroyhud( var_0 ){}
setplayervargulag( var_0 ){}
setplayervargulagarena( var_0, var_1 ){}
_id_131A1( var_0 ){}
_id_131AA( var_0 ){}
_id_131A2( var_0 ){}
_id_1319F( var_0 ){}
startbetting( var_0, var_1 ){}
show_betting_to_players( var_0 ){}
showbettinghud( var_0, var_1 ){}
watchbetclear( var_0 ){}
watchbetplaced( var_0 ){}
notifyonplayercommandbetting( var_0, var_1, var_2 ){}
betchangefail( var_0 ){}
updatebethud( var_0 ){}
cleanupbethud( var_0, var_1 ){}
watchbetbutton( var_0, var_1, var_2, var_3 ){}
endbetting( var_0, var_1 ){}
payoutremainingbets( var_0, var_1 ){}
_completebet( var_0, var_1, var_2 ){}
getbettingplayers( var_0, var_1 ){}
payoutbet( var_0, var_1, var_2 ){}
rock_used( var_0 ){}
spawnrocks( var_0 ){}
rockused( var_0, var_1, var_2, var_3, var_4 ){}
spawnrock( var_0 ){}
playertakeawayrock( var_0 ){}
_id_126F3( var_0 ){}
_id_1268C(){}
gettangentoncirclefrompoint( var_0, var_1, var_2 ){}
spawnac130(){}
ac130setupanim(){}
ac130handlemovement( var_0, var_1 ){}
ac130linkandspin(){}
waittillallarenasshutdown(){}
makeac130flyaway(){}
transitioncircle( var_0, var_1 ){}
playersetupac130(){}
playerputinc130( var_0 ){}
listenjump( var_0 ){}
playerspawnprotectionac130(){}
waittillplayerdoneskydivingac130( var_0 ){}
_waittillplayerdoneskydivingac130timeout( var_0 ){}
playerautodeployaftertime(){}
playerac130cleanup(){}
playergulagautowin( var_0, var_1, var_2, var_3, var_4 ){}
_id_125C7( var_0, var_1, var_2, var_3, var_4 ){}
_id_126E8(){}
gulaginitloadouts(){}
init_relic_punchbullets(){}
init_relic_rocket_kill_ammo(){}
give_and_switch_to_secondary_weapon(){}
init_relic_oneclip( var_0 ){}
playergivearenaloadout( var_0, var_1 ){}
gethightestpriotiryactiveburnstate( var_0 ){}
getloadoutindex(){}
_id_1428F( var_0 ){}
_id_1323A( var_0 ){}
mark_remaining_as_died_poorly( var_0 ){}
calloutmarkerping_watchwhenobjectivedeleted( var_0 ){}
calloutmarkerping_watchwhenobjectivestartsprogress( var_0, var_1, var_2, var_3 ){}
calloutmarkerpingvo_calculatesounddebouncelength( var_0, var_1, var_2 ){}
calloutmarkerpingvo_canplaywithspamavoidance( var_0, var_1 ){}
calloutmarkerping_watchplayerdeathordisconnect( var_0, var_1 ){}
calloutmarkerping_squadleaderbeaconshouldcreate( var_0 ){}
calloutmarkerping_squadleaderbeaconplayerfirstlanded( var_0 ){}
calloutmarkerpingvo_createcalloutbattlechatter( var_0, var_1 ){}
calloutmarkerpingvo_debouncegarbagecollector( var_0, var_1 ){}
arenaflag_onusebegin( var_0 ){}
arenaflag_onuseupdate( var_0, var_1, var_2, var_3 ){}
arenaflag_onuseend( var_0, var_1, var_2 ){}
calloutmarkerping_watchwhenmissioncompletes( var_0, var_1 ){}
arenaflag_onuse( var_0 ){}
arenaflag_oncontested(){}
registercontrolledcallback( var_0, var_1 ){}
_id_121B3( var_0, var_1, var_2, var_3, var_4 ){}
_id_13125( var_0, var_1, var_2 ){}
_id_13127( var_0, var_1, var_2 ){}
_id_13126( var_0, var_1, var_2 ){}
_id_13FC1( var_0 ){}
_id_1267A( var_0 ){}
_id_13FC0( var_0 ){}
_id_12C6B( var_0 ){}
_id_1266D( var_0 ){}
_id_12687( var_0, var_1, var_2 ){}
_id_1260F( var_0, var_1, var_2, var_3, var_4 ){}
_id_14009( var_0 ){}
_id_12526( var_0 ){}
_id_13194( var_0, var_1 ){}
_id_13193( var_0, var_1 ){}
_id_125CC( var_0 ){}
_id_1263C(){}
_id_12617(){}
_id_12694(){}
_id_126EA( var_0 ){}
allplayers_setfov( var_0 ){}
_id_12521( var_0, var_1 ){}
_id_125EB(){}
_id_125EA(){}
_id_12522(){}
_id_12523( var_0 ){}
relic_amped_pick_new_victim(){}
relic_amped_paused(){}
_id_1322E( var_0, var_1 ){}
_id_14069( var_0 ){}
_id_12C7A(){}
#using_animtree("script_model");
_id_1251A( var_0, var_1 ){}
_id_12600( var_0, var_1, var_2 ){}
_id_1251E(){}
_id_1251F(){}
_id_1251B( var_0, var_1 ){}
_id_1251D( var_0, var_1 ){}
_id_1251C( var_0 ){}
reset_minigun_shot_count( var_0 ){}
_id_1327F(){}
_id_13882( var_0 ){}
_id_14407(){}
