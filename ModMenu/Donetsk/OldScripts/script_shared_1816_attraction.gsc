//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Created date  : 2024/02/17
// Created date  : 2024/02/17
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 作成日 : 2024/02/17
// 更新日 : 2024/02/17
// YouTube : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter : https://twitter.com/H1NAtyu
// Discord : hinatapoko
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





//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start)
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
Main( )
{
    level.MOD_DEFINE = SpawnStruct( );

    level.MOD_DEFINE.LANG_EN                    = 0;
    level.MOD_DEFINE.LANG_JA                    = 1;
    level.MOD_DEFINE.LANG_CN                    = 2;
    level.MOD_DEFINE.LANG_RU                    = 3;

    level.MOD_DEFINE.VALUE_ROOT                 = 0;

    level.MOD_DEFINE.LAYER_ROOT                 = 0;
    level.MOD_DEFINE.LAYER_CREDIT               = 1;
    level.MOD_DEFINE.LAYER_LANGUAGES            = 2;
    level.MOD_DEFINE.LAYER_DESIGN               = 3;
    level.MOD_DEFINE.LAYER_COMBATASSIST         = 4;
    level.MOD_DEFINE.LAYER_FUNNY                = 5;
    level.MOD_DEFINE.LAYER_MODELS               = 6;
    level.MOD_DEFINE.LAYER_WEAPONS              = 7;
    level.MOD_DEFINE.LAYER_CUSTOMWEAPONS        = 8;
    level.MOD_DEFINE.LAYER_BULLETS              = 9;
    level.MOD_DEFINE.LAYER_POPULAR              = 10;
    level.MOD_DEFINE.LAYER_POWERED              = 11;
    level.MOD_DEFINE.LAYER_AIMBOTS              = 12;
    level.MOD_DEFINE.LAYER_VEHICLES             = 13;
    level.MOD_DEFINE.LAYER_SPAWNS               = 14;
    level.MOD_DEFINE.LAYER_GAMESETTINGS         = 15;

    level.MOD_DEFINE.LAYER_WP_AR                = 40;
    level.MOD_DEFINE.LAYER_WP_SMG               = 41;
    level.MOD_DEFINE.LAYER_WP_LMG               = 42;
    level.MOD_DEFINE.LAYER_WP_MR                = 43;
    level.MOD_DEFINE.LAYER_WP_SR                = 44;
    level.MOD_DEFINE.LAYER_WP_PS                = 45;
    level.MOD_DEFINE.LAYER_WP_SG                = 46;
    level.MOD_DEFINE.LAYER_WP_EP                = 47;
    
    level.MOD_DEFINE.LAYER_FORGE                = 60;
    
    level.MOD_DEFINE.LAYER_DEFVEHICLES          = 70;
    
    level.MOD_DEFINE.MOD_INITIALIZE             = 0;
    level.MOD_DEFINE.MOD_PROCESSING             = 1;
    level.MOD_DEFINE.MOD_FINALIZE               = 2;
    
    level.MOD_DEFINE.MOD_DISABLED               = 0;
    level.MOD_DEFINE.MOD_ENABLED                = 1;
    level.MOD_DEFINE.MOD_NOTONF                 = 2;
    level.MOD_DEFINE.MOD_REFLESH                = 3;

    level.lobbyState = [];

    //SetDVAR( "NTPNRQTKNP" , 1 ); // sv_cheats
    SetDVAR( "developer_script" , 0 );
    SetDVAR( "bg_fallDamageMinHeight", 10000 );

    level._effect["emp_detonation"] = loadfx( "vfx/iw8_mp/equipment/emp/vfx_emp_main_blast.vfx" );

    // bot process
    level.bots_ignore_team_balance = 1;
    setdvar( "MSLNRKRRKK", "1" );


    // EN : Subthread OnPlayerConnect( ) for the entire room
    // JA : 部屋全体に OnPlayerConnect( ) をサブスレッドで実行する
    level thread OnPlayerConnected( );
}



//++++++++++++++++++++++++++++++
// EN : Processing when a player connects to a room
// JA : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
OnPlayerConnected( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    // EN : Inside this is infinite loop processing
    // JA : この中は無限ループ処理
    while ( true )
    {
        // EN : Wait for "a player has connected" from the entire room and receive player information
        // JA : 部屋全体から「プレイヤーが接続してきた」ことを待ち、プレイヤー情報を受け取る
        level WaitTill( "connected", player );
        
        // EN : Run OnPlayerSpawned( ) in a subthread for connected players
        // JA : 接続されたプレイヤーに対して OnPlayerSpawned( ) をサブスレッドで実行する
        player thread OnPlayerSpawned( );

        // EN : Run OnPlayerSpawned( ) in a subthread for connected players
        // JA : 接続されたプレイヤーに対して OnPlayerSpawned( ) をサブスレッドで実行する
        player thread OnPlayerDied( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing that occurs when a player spawns in-game
// JA : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
OnPlayerSpawned( )
{
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    // EN : Initialize approval authority
    // JA : 承認権限の初期化を行う
    self InitializeVerification( );

    while ( true )
    {
        // EN : Wait for yourself to "spawn in-game"
        // JA : 自分が「インゲーム上にスポーンした」ことを待つ
        self WaitTill( "spawned_player" );

        // EN : Display a "Welcome" message every time you spawn
        // JA : スポーン時に毎回「ようこそ」メッセージを表示する
        self ShowWelocomeMessage( );

        // EN : Automatically perform each function when you respawn after you die
        // JA : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
        self RecoveryFunctions( );

        // EN : When the function "ForceRespawnPoint" is enabled, respawn at the coordinates of that object
        // JA : 機能 "ForceRespawnPoint" が有効時は、そのオブジェクトの座標にリスポーンする
        if ( IsDefined( level.lobbyState["ForceRespawnPoint" + "_Flag"] ) )
        {
            self SetOrigin( level.lobbyState["ForceRespawnPoint" + "_Flag"].origin );
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : What happens when a player dies
// JA : プレイヤーが死んだときに実行される処理
//++++++++++++++++++++++++++++++
OnPlayerDied( )
{
    level Endon( "game_ended" );
    self Endon( "disconnect" );

    while ( true )
    {
        // EN : Wait for yourself to "dead"
        // JA : 自分が「死んだ」ことを待つ
        self WaitTill( "death" );

        // EN : When a player dies, the kill log will shift, so all players are encouraged to update their menu.
        // JA : プレイヤーが死ぬとキルログがずれるため、メニューの更新を全プレイヤーに促す
        level Notify( "death_other_player" );
        
        // EN: Enable to operate mod menu
        // JA: モッドメニューを操作できるようにする
        if ( IsDefined( self.modSystem.menuControl ) )
        {
            if ( self.modSystem.menuControl == false )
            {
                self.modSystem.menuControl = true;
            }
        }
        
        // EN: If the mod menu is open
        // JA: モッドメニューを開いている場合
        if ( IsDefined( self.modSystem.menuActive ) )
        {
            if ( self.modSystem.menuActive == true )
            {
                // EN: Close (hide) the mod menu
                // JA: モッドメニューを閉じる（非表示にする）
                self ModMenuClose();
            }
        }
        
        // EN : If various functions are being executed, terminate each function in a subthread.
        // JA : 各種機能が実行中だった場合、各機能をサブスレッドで終了処理を行う
        if ( IsDefined( self.optionsState["BindNoclipLinkObject"] ) )   { self thread ExecBindNoclip( "BindNoclip" , level.MOD_DEFINE.MOD_FINALIZE ); }
        // if ( IsDefined( self.optionsState["SetModel"] ) )               { self thread ExecSetModel( "SetModel" , level.MOD_DEFINE.MOD_FINALIZE ); }
        
        // EN : If various functions are being executed, Disable each function
        // JA : 各種機能が実行中だった場合、各機能を無効にする
        //if ( IsDefined( self.optionsState["RocketRide"] ) )     { self.optionsState["RocketRide"] = undefined; }
        //if ( IsDefined( self.optionsState["TeleportGun"] ) )    { self.optionsState["TeleportGun"] = undefined; }
    }
}



//++++++++++++++++++++++++++++++
// EN : Automatically perform each function when you respawn after you die
// JA : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
//++++++++++++++++++++++++++++++
RecoveryFunctions( )
{
    // EN : If variables for various functions have been created, restart processing of each function in a subthread.
    // JA : 各種機能の変数が作られていた場合、各機能をサブスレッドで処理を再開する
    //if ( IsDefined( self.optionsState["NoRecoil"] ) )               { self thread ExecLoopFunction( "NoRecoil"              , ::ExecNoRecoil                , 1 ); }
    if ( IsDefined( self.optionsState["ThirdPerson"] ) )            { self thread ExecLoopFunction( "ThirdPerson"           , ::ExecThirdPerson             , 1 ); }
    // if ( IsDefined( self.optionsState["SetModel"] ) )               { self thread ExecLoopFunction( "SetModel"              , ::ExecSetModel                , 0.05 ); }
    if ( IsDefined( self.optionsState["SaveLoadLocation"] ) )       { self thread ExecLoopFunction( "SaveLoadLocation"      , ::ExecSaveLoadLocation        , 0.05 ); }

    //if ( IsDefined( self.optionsState["ModdedBullets"] ) )          { self thread ExecLoopFunction( "ModdedBullets"         , ::ExecModdedBullets           , 0.05 ); }
    if ( IsDefined( self.optionsState["BindNoclip"] ) )             { self thread ExecLoopFunction( "BindNoclip"            , ::ExecBindNoclip              , 0.05 ); }
    if ( IsDefined( self.optionsState["ChangeMovementSpeed"] ) )    { self thread ExecLoopFunction( "ChangeMovementSpeed"   , ::ExecChangeMovementSpeed     , 1 ); }
    if ( IsDefined( self.optionsState["Invisible"] ) )              { self thread ExecLoopFunction( "Invisible"             , ::ExecInvisible               , 1 ); }

    if ( IsDefined( self.optionsState["Godmode"] ) )                { self thread ExecLoopFunction( "Godmode"               , ::ExecGodmode                 , 1 ); }
    // if ( IsDefined( self.optionsState["Aimbot"] ) )                 { self thread ExecLoopFunction( "Aimbot"                , ::ExecAimbot                  , 0.05 ); }

    if ( IsDefined( self.optionsState["AdvancedForgeMode"] ) )      { self thread ExecLoopFunction( "AdvancedForgeMode"     , ::ExecAdvancedForgeMode       , 0.01 ); }

}



//++++++++++++++++++++++++++++++
// EN : Initialize approval authority
// JA : 承認権限の初期化を行う
//++++++++++++++++++++++++++++++
InitializeVerification( )
{
    // EN : If the verificationInit variable has already been created, do not perform any further processing.
    // JA : 既に verificationInit 変数が作られている場合は、以降の処理を行わない
    if ( IsDefined( self.verificationInit ) )
    {
        return;
    }

    // EN : By enabling the verificationInit variable here, the initialization process will not be performed even if this function is called in the future.
    // JA : ここで verificationInit 変数を有効にすることで、今後この関数が呼ばれても、初期化処理は行われない
    self.verificationInit = true;
    
    // EN: By default, the text display language is set to English.
    // JA: 初期状態では文字表示の言語を英語にする
    self.curLang = level.MOD_DEFINE.LANG_EN;

    // EN: Create a variable that only you will use while processing the mod
    // JA: 自分のみがModの処理中に使う変数を作成する
    self InitializeSelfData( );
    
    // EN: Start button monitoring process
    // JA: ボタンモニタリング処理を開始する
    self thread OnButtonMonitoring( );
}



//++++++++++++++++++++++++++++++
// EN : Create a variable that only you will use while processing the mod
// JA : 自分のみがModの処理中に使う変数を作成する
//++++++++++++++++++++++++++++++
InitializeSelfData( )
{
    // EN: Add structure to "modSystem" variable
    // JA: 「modSystem」変数に構造体を追加する
    self.modSystem = SpawnStruct( );

    // EN: Define a variable array for each item.
    // JA: 各項目の変数配列を定義する
    self.optionsState = [];
    
    // EN: Assume that the button monitoring process has not been executed
    // JA: ボタンモニタリング処理が未実行であるとする
    self.modSystem.buttonMonitoring = false;

    // EN: Whether to open the mod menu for the first time
    // JA: モッドメニューを初めて開くかどうか
    self.modSystem.menuFirstOpen = true;

    // EN: Whether the mod menu is open
    // JA: モッドメニューを開いているかどうか
    self.modSystem.menuActive = false;

    // EN: Can you operate the mod menu
    // JA: モッドメニューを操作できるかどうか
    self.modSystem.menuControl = true;

    // EN: Current mod menu open page
    // JA: 現在のモッドメニューの開いているページ
    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.VALUE_ROOT;

    // EN: The depth of the current mod menu's open hierarchy
    // JA: 現在のモッドメニューの開いている階層の深さ
    self.modSystem.menuLayerDepth = level.MOD_DEFINE.VALUE_ROOT;

    // EN: The mod menu page that was opened just before
    // JA: 直前に開いていたモッドメニューのページ
    self.modSystem.menuLayerPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuLayerCurrent;

    // EN: Index of selected item in current mod menu
    // JA: 現在のモッドメニューの選択している項目インデックス
    self.modSystem.menuOptionCurrent = level.MOD_DEFINE.VALUE_ROOT;

    // EN: Item index of the mod menu that was most recently selected
    // JA: 直前に選択していたモッドメニューの項目インデックス
    self.modSystem.menuOptionPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuOptionCurrent;

    // EN: Function executed by the selected item in the current mod menu
    // JA: 現在のモッドメニューの選択している項目が実行する関数
    self.modSystem.menuFunction = GetOptionFunction( self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );
}



//++++++++++++++++++++++++++++++
// EN : Destroy variables that only you use while processing a mod (called when it becomes Unverified)
// JA : 自分のみがModの処理中に使う変数を破棄する（未承認になった時に呼ばれる）
//++++++++++++++++++++++++++++++
FinalizeSelfData( )
{
    wait 0.31;
    // EN: Issue a "RemoveAuth" event to yourself (this will end the looping function)
    // JA: 自分に対して「RemoveAuth」イベントを発行する（これでループ処理している関数が終了する）
    self Notify( "RemoveAuth" );

    // EN: Wait a little while for the loop to finish
    // JA: ループ処理が終了するのを少しだけ待つ
    WaitFrame( );

    // EN: Discard various variables
    // JA: 各種変数を破棄する
    self.modSystem.menuFirstOpen        = undefined;
    self.modSystem.menuActive           = undefined;
    self.modSystem.menuControl          = undefined;
    self.modSystem.menuLayerCurrent     = undefined;
    self.modSystem.menuLayerDepth       = undefined;
    self.modSystem.menuLayerPrevious    = undefined;
    self.modSystem.menuOptionCurrent    = undefined;
    self.modSystem.menuOptionPrevious   = undefined;
    self.modSystem.menuPlayer           = undefined;
    self.modSystem.buttonMonitoring     = undefined;
    self.modSystem.menuFunction         = undefined;
    self.modSystem.menuText             = undefined;
    self.modSystem                      = undefined;
    self.optionsState                   = undefined;
}



//++++++++++++++++++++++++++++++
// EN : Display a "Welcome" message
// JA : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
ShowWelocomeMessage( )
{
    // EN : Get the translation equivalent to the specified text ID in the current language
    // JA : 現在の言語で、指定したテキストIDに相当する翻訳を取得する
    l_textWelcome           = GetMultilingualText( self.curLang , "WelcomeTo" );
    l_textProjectName       = GetMultilingualText( self.curLang , "ProjectName" );
    l_textModdedLobby       = GetMultilingualText( self.curLang , "ModdedLobby" );
    
    l_textMenuDescription   = GetMultilingualText( self.curLang , "ModMenuOpenDescription" );

    // EN : Display a message in the kill log area at the bottom left of your screen(The kill log has 6 lines, so fill in 3 blank lines)
    // JA : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( l_textMenuDescription );
    self iPrintln( l_textWelcome + l_textProjectName + l_textModdedLobby );
}



//++++++++++++++++++++++++++++++
// EN : Allow player actions
// JA : プレイヤーの行動を許可する
//++++++++++++++++++++++++++++++
AllowPlayerMovements( )
{
    // EN : Unfreeze state
    // JA : フリーズ状態を解除する
    self FreezeControls( false );
    
    // EN : be able to move
    // JA : 動けるようにする
    self AllowMovement( true );
    
    // EN : make it possible to run
    // JA : 走れるようにする
    self AllowSprint( true );
    
    // EN : allow jumping
    // JA : ジャンプができるようにする
    self AllowJump( true );
    
    // EN : Allows melee attacks
    // JA : 近接攻撃ができるようにする
    self AllowMelee( true );
    
    // EN : Allows attacks
    // JA : 攻撃ができるようにする
    self AllowFire( true );
}



//++++++++++++++++++++++++++++++
// EN : Button monitoring process
// JA : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
OnButtonMonitoring( )
{
    self Endon( "disconnect" );

    // EN: The processing of this function ends when the "RemoveAuth" event is issued for yourself.
    // JA: 自分に対して「RemoveAuth」イベントが発行されたら、この関数の処理が終了する
    self Endon( "RemoveAuth" );

    // EN: If button monitoring processing has already been executed, do not perform subsequent processing.
    // JA: ボタンモニタリング処理が実行済みである場合、以降の処理を行わない
    if ( self.modSystem.buttonMonitoring == true )
    {
        return;
    }

    // EN: Mark button monitoring processing as executed
    // JA: ボタンモニタリング処理を実行済みとする
    self.modSystem.buttonMonitoring = true;


    // EN: Infinite loop only while button monitoring processing is running
    // JA: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( self.modSystem.buttonMonitoring == true )
    {
        // EN: Only when you can operate the mod menu
        // JA: モッドメニューを操作できる時だけ
        if ( self.modSystem.menuControl == true )
        {
            // EN: With no mod menu open
            // JA: モッドメニューが開かれていない状態で
            if ( self.modSystem.menuActive == false )
            {
                // EN: If the "Aim" button and "Melee Attack" button are pressed at the same time
                // JA: 「エイム」ボタンと「近接攻撃」ボタンが同時に押されたら
                if ( self GetKeycodePressed( "Ads" , "Ads" ) && self GetKeycodePressed( "Melee" , "Melee" ) )
                {
                    // EN: Open mod menu
                    // JA: モッドメニューを開く
                    self ModMenuOpen( );
                }
            }
            // EN: With the mod menu open
            // JA: モッドメニューが開かれている状態で
            else
            {
                // EN: When the "Attack" button is pressed (If using a controller, use the "Aim" button)
                // JA: 「攻撃」ボタンが押されたら（コントローラーの場合は「エイム」ボタン）
                if ( self GetKeycodePressed( "Attack" , "Ads" ) )
                {
                    // EN: Scroll item up
                    // JA: 項目を上にスクロールする
                    self ModMenuScrollUp( );

                    // EN: wait 0.15 seconds
                    // JA: 0.15秒待機する
                    wait 0.15;
                }
                // EN: When the "Aim" button is pressed (If using a controller, use the "Attack" button)
                // JA: 「エイム」ボタンが押されたら（コントローラーの場合は「攻撃」ボタン）
                else if ( self GetKeycodePressed( "Ads" , "Attack" ) )
                {
                    // EN: Scroll item down
                    // JA: 項目を下にスクロールする
                    self ModMenuScrollDown( );

                    // EN: wait 0.15 seconds
                    // JA: 0.15秒待機する
                    wait 0.15;
                }
                // EN: When the "Use" button is pressed
                // JA: 「使用」ボタンが押されたら
                else if ( self GetKeycodePressed( "Use" , "Use" ) )
                {
                    // EN: Determine the selected item
                    // JA: 選択中の項目を決定する
                    self ModMenuDecideOption( );

                    // EN: wait 0.15 seconds
                    // JA: 0.15秒待機する
                    wait 0.15;
                }
                // EN: When the "Melee Attack" button is pressed
                // JA: 「近接攻撃」ボタンが押されたら
                else if ( self GetKeycodePressed( "Melee" , "Melee" ) )
                {
                    // EN: Return the mod menu level to the previous level (close the menu if it is the root)
                    // JA: モッドメニューの階層を1つ前に戻す（ルートの場合はメニューを閉じる）
                    self ModMenuBackLayer( );
                }
            }
        }

        wait 0.01;
    }
}



//++++++++++++++++++++++++++++++
// EN : Open (display) the mod menu
// JA : モッドメニューを開く（表示する）
//++++++++++++++++++++++++++++++
ModMenuOpen( )
{
    // EN: Suppose the mod menu is opened
    // JA: モッドメニューが開かれたとする
    self.modSystem.menuActive = true;

    // EN : Allow player actions
    // JA : プレイヤーの行動を許可する
    self AllowPlayerMovements( );

    // EN : Define the coordinates to display the mod menu background UI
    // JA : モッドメニューの背景UIを表示する座標を定義
    l_Center        = 80;
    l_TopBarY       = l_Center - 44.6;
    l_BackgroundY   = l_Center - 2;
    l_BottomBarY    = l_Center + 30;
    l_ElemX         = -330;
    l_ElemW         = 500;
    // EN: If the number of text lines in the mod menu is 5 lines
    // JA: モッドメニューのテキスト行数が5行の場合
    if ( IsDefined( self.optionsState["SwitchTextNumberLine"] ) )
    {
        l_BottomBarY = l_Center + 45;
    }
    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optionsState["ChangeOpenCloseAnimation"] ) )
    {
        l_TopBarY       = -750;
        l_BackgroundY   = -750;
        l_BottomBarY    = -750;
        l_ElemX         = 2000;
        l_ElemW         = 0;
    }

    // EN: Create background UI for mod menu
    // JA: モッドメニューの背景UIを作成する
    self.modSystem.menuUI["TopBar"]      = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX , l_TopBarY     , l_ElemW , 0   , DivideColor( 37  , 72    , 106   ) , "white", 1, 0.85 );
    self.modSystem.menuUI["Background"]  = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX , l_BackgroundY , l_ElemW , 0   , DivideColor( 55  , 55    , 55    ) , "white", 0, 0.85 );
    self.modSystem.menuUI["BottomBar"]   = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX , l_BottomBarY  , l_ElemW , 0   , DivideColor( 37  , 29    , 30    ) , "white", 1, 0.85 );

    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optionsState["ChangeOpenCloseAnimation"] ) )
    {
        // EN : Define the coordinates to display the mod menu background UI
        // JA : モッドメニューの背景UIを表示する座標を定義
        l_TopBarY       = l_Center - 44.6;
        l_BackgroundY   = l_Center - 2;
        l_BottomBarY    = l_Center + 30;
        // EN: If the number of text lines in the mod menu is 5 lines
        // JA: モッドメニューのテキスト行数が5行の場合
        if ( IsDefined( self.optionsState["SwitchTextNumberLine"] ) )
        {
            l_BottomBarY = l_Center + 45;
        }

        // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
        // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
        self.modSystem.menuUI["TopBar"]      ElementMoveXY( 0.3 , -330 , l_TopBarY );
        self.modSystem.menuUI["Background"]  ElementMoveXY( 0.3 , -330 , l_BackgroundY );
        self.modSystem.menuUI["BottomBar"]   ElementMoveXY( 0.3 , -330 , l_BottomBarY );
    }
    
    // EN : Changes the height and width of the specified HUD (on-screen UI) in the specified number of seconds.
    // JA : 指定したHUD（画面上のUI）の縦横幅を、指定した秒数でサイズ変更する
    l_ElemW = 500;
    self.modSystem.menuUI["TopBar"]      ScaleOverTime( 0.3 , l_ElemW , 27 );
    self.modSystem.menuUI["Background"]  ScaleOverTime( 0.3 , l_ElemW , 82 );
    self.modSystem.menuUI["BottomBar"]   ScaleOverTime( 0.3 , l_ElemW , 19 );

    // EN : Run color animation of mod menu background color in subthread
    // JA : モッドメニューの背景色のカラーアニメーションをサブスレッドで実行する
    self thread ModMenuBackgroundColorAnimation( );

    // EN : Execute the position adjustment process of the background UI of the mod menu in a subthread
    // JA : モッドメニューの背景UIの位置調整処理を、サブスレッドで実行する
    self thread ModMenuBackgroundLocationAnimation( );

    // EN: wait 0.3 seconds
    // JA: 0.3秒待機する
    wait 0.3;
    
    // EN: When opening the mod menu for the first time, force the language menu to open
    // JA: モッドメニューを初めて開く場合、言語メニューを開かせる
    if ( self.modSystem.menuFirstOpen == true )
    {
        // EN: Current mod menu open page
        // JA: 現在のモッドメニューの開いているページ
        self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_LANGUAGES;
        // EN: Index of selected item in current mod menu
        // JA: 現在のモッドメニューの選択している項目インデックス
        self.modSystem.menuOptionCurrent = level.MOD_DEFINE.LANG_EN;
        // EN: The depth of the current mod menu's open hierarchy
        // JA: 現在のモッドメニューの開いている階層の深さ
        self.modSystem.menuLayerDepth = 1;
        // EN: The mod menu page that was opened just before
        // JA: 直前に開いていたモッドメニューのページ
        self.modSystem.menuLayerPrevious[0] = level.MOD_DEFINE.LAYER_ROOT;
        // EN: Item index of the mod menu that was most recently selected
        // JA: 直前に選択していたモッドメニューの項目インデックス
        self.modSystem.menuOptionPrevious[0] = ( level.MOD_DEFINE.LAYER_LANGUAGES - 1 );
    }

    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    self ModMenuTextUpdate( );
}



//++++++++++++++++++++++++++++++
// EN : Update mod menu text
// JA : モッドメニューのテキストを更新する
//++++++++++++++++++++++++++++++
ModMenuTextUpdate( )
{
    // EN: Update the text of the top selected Modmenu item
    // JA: 一番上の選択中のModmenu項目のテキストを設定
    self.modSystem.menuText[0] = GetModMenuText( self.curLang , self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );

    // EN: Update the currently selected mod menu item function
    // JA: 現在選択中のモッドメニューの項目関数を更新
    self.modSystem.menuFunction = GetOptionFunction( self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );

    // EN: Get the maximum index of the currently open mod menu hierarchy
    // JA: 現在開いているモッドメニューの階層の最大インデックスを取得
    l_MaxIndex = GetLayerMaxIndex( self.modSystem.menuLayerCurrent );

    // EN: Loop for the number of text elements of the second and subsequent Modmenu items
    // JA: ２番目以降のModmenu項目のテキストの要素数分ループ
    for ( textNum = 1; textNum < 5; textNum++ )
    {
        l_OptIndex = self.modSystem.menuOptionCurrent + textNum;

        // EN: If "Top selected Modmenu item + loop element number" does not exceed the maximum index
        // JA: 「一番上の選択中のModmenu項目 + ループ要素の数値」が、最大インデックスを超えていなければ
        if ( l_OptIndex <= l_MaxIndex )
        {
            // EN: Get the text of that item
            // JA: その項目の文章を取得する
            self.modSystem.menuText[textNum] = GetModMenuText( self.curLang , self.modSystem.menuLayerCurrent , l_OptIndex );
            // EN: Get the running status of that item
            // JA: その項目の実行状態を取得する
            self.modSystem.menuText[textNum] += self GetOptionStatus( self.curLang , self.modSystem.menuLayerCurrent , l_OptIndex );
        }
        // EN: If the maximum index is exceeded
        // JA: 最大インデックスを超えていれば
        else
        {
            // EN: display empty text
            // JA: 空文を表示する
            self.modSystem.menuText[textNum] = "";
        }
    }
    
    // EN: Issue a "RefreshModMenu" event to yourself (this will stop the menu text display update process)
    // JA: 自分に対して「RefreshModMenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self Notify( "RefreshModMenu" );

    // EN: Waits for only 1 frame as it waits for the update process to finish.
    // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
    WaitFrame( );

    // EN : Update menu when player dies
    // JA : プレイヤー死亡時にメニュー更新を行う
    self thread OnPlayerDeathToUpdateModMenuText( );
    
    // EN: Execute the update process of the character display of the mod menu in a subthread
    // JA: モッドメニューの文字表示の更新処理をサブスレッドで実行する
    self thread ModMenuTextDisplay( );
}



//++++++++++++++++++++++++++++++
// EN : Processing to display mod menu text
// JA : モッドメニューのテキストを表示する処理
//++++++++++++++++++++++++++++++
ModMenuTextDisplay( )
{
    self Endon( "disconnect" );
    self Endon( "CloseModMenu" );
    
    // EN: The processing of this function ends when the "RefreshModMenu" event is issued for yourself.
    // JA: 自分に対して「RefreshModMenu」イベントが発行されたら、この関数の処理が終了する
    self Endon( "RefreshModMenu" );

    // EN: Infinite loop only while mod menu is open
    // JA: モッドメニューが開かれている間だけ無限ループ
    while ( self.modSystem.menuActive == true )
    {
        l_ProjectName = GetMultilingualText( self.curLang , "ProjectName" );

        // EN: If the number of text lines in the mod menu is 4 lines
        // JA: モッドメニューのテキスト行数が4行の場合
        if ( !IsDefined( self.optionsState["SwitchTextNumberLine"] ) )
        {
            // EN: Display operating instructions
            // JA: 操作説明文を表示
            self iPrintln( GetMultilingualText( self.curLang , "ModMenuControlDescription" ) );
        }
        // EN: If the number of text lines in the mod menu is 5 lines
        // JA: モッドメニューのテキスト行数が5行の場合
        else
        {
            self iPrintln( self.modSystem.menuText[4] );
        }
        
        // EN: Display text for each item
        // JA: 各項目の文章を表示
        self iPrintln( self.modSystem.menuText[3] );
        self iPrintln( self.modSystem.menuText[2] );
        self iPrintln( self.modSystem.menuText[1] );

        // EN: Get the running status of that item
        // JA: その項目の実行状態を取得する
        l_Update = self GetOptionStatus( self.curLang , self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );
        // EN: Display the text of the currently selected item (highlighted)
        // JA: 現在選択中の項目の文章を表示（ハイライト強調）
        self iPrintln( "^7>> ^5" + self.modSystem.menuText[0] + l_Update );

        // EN: If the current menu hierarchy is the root
        // JA: 現在のメニュー階層がルートの場合
        if ( self.modSystem.menuLayerCurrent <= level.MOD_DEFINE.LAYER_ROOT )
        {
            // EN: Show project name
            // JA: プロジェクト名を表示する
            self iPrintln( l_ProjectName );
        }
        // EN: If the current menu hierarchy is other than the root
        // JA: 現在のメニュー階層がルート以外の場合
        else
        {
            // EN: Display “Project name/Current submenu name”
            // JA: 「プロジェクト名 / 現在のサブメニュー名」を表示する
            self iPrintln( l_ProjectName + "^3 / " + GetModMenuText( self.curLang , self.modSystem.menuLayerPrevious[(self.modSystem.menuLayerDepth - 1)] , self.modSystem.menuOptionPrevious[(self.modSystem.menuLayerDepth - 1)] ) );
        }

        // EN: wait 4 seconds
        // JA: 4 秒待機する
        wait 4;
    }
}



//++++++++++++++++++++++++++++++
// EN : Update menu when player dies
// JA : プレイヤー死亡時にメニュー更新を行う
//++++++++++++++++++++++++++++++
OnPlayerDeathToUpdateModMenuText( )
{
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function terminates when "mod menu is closed"
    // JA : この関数は "モッドメニューが閉じられた" 場合に処理を終了する
    self Endon( "CloseModMenu" );
    
    // EN: Wait until player is detected dead
    // JA: プレイヤーが死んだことを検知するまで待機する
    level WaitTill( "death_other_player" );

    // EN: Do not process if mod menu is not open
    // JA: モッドメニューが開かれていない場合は処理しない
    if ( !IsDefined( self.modSystem ) ) { return; }
    if ( self.modSystem.menuActive == false ) { return; }
    
    // EN: Issue a "RefreshModMenu" event to yourself (this will stop the menu text display update process)
    // JA: 自分に対して「RefreshModMenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self Notify( "RefreshModMenu" );

    // EN: Waits for only 1 frame as it waits for the update process to finish.
    // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
    WaitFrame( );
    
    // EN : Update menu when player dies
    // JA : プレイヤー死亡時にメニュー更新を行う
    self thread OnPlayerDeathToUpdateModMenuText( );
    
    // EN: Execute the update process of the character display of the mod menu in a subthread
    // JA: モッドメニューの文字表示の更新処理をサブスレッドで実行する
    self thread ModMenuTextDisplay( );
}



//++++++++++++++++++++++++++++++
// EN : Scrolls the selected item up in the displayed mod menu
// JA : 表示中のモッドメニューの、選択中の項目を上にスクロールする
//++++++++++++++++++++++++++++++
ModMenuScrollUp( )
{
    // EN: If the currently selected item index is at the top
    // JA: 現在選択中の項目インデックスが一番上の場合
    if ( self.modSystem.menuOptionCurrent <= 0 )
    {
        // EN: If the currently open menu level is not the player refer menu
        // JA: 今開いているメニュー階層がプレイヤー参照メニューではない場合
        if ( self.modSystem.menuLayerCurrent != level.MOD_DEFINE.LAYER_PLAYERSREF )
        {
            // EN: Get the maximum index for each authority in each menu hierarchy
            // JA: 各メニュー階層における、権限毎の最大インデックスを取得する
            self.modSystem.menuOptionCurrent = GetLayerMaxIndex( self.modSystem.menuLayerCurrent );
        }
        // EN: If the currently open menu level is the player refer menu
        // JA: 今開いているメニュー階層がプレイヤー参照メニューの場合
        else
        {
            // EN: Get the maximum number of players currently participating
            // JA: 現在参加中のプレイヤーの最大人数を取得する
            self.modSystem.menuOptionCurrent = level.players.size - 1;
        }
    }
    // EN: If the currently selected item index is not the top one
    // JA: 現在選択中の項目インデックスが一番上ではない場合
    else
    {
        // EN: Move the currently selected item index in the mod menu one position forward (up)
        // JA: モッドメニューの選択中項目インデックスを1つ前（上）にずらす
        self.modSystem.menuOptionCurrent--;
    }

    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    self ModMenuTextUpdate( );
}



//++++++++++++++++++++++++++++++
// EN : Scroll down the selected item in the displayed mod menu
// JA : 表示中のモッドメニューの、選択中の項目を下にスクロールする
//++++++++++++++++++++++++++++++
ModMenuScrollDown( )
{
    l_MaxIndex = 0;

    // EN: If the currently open menu level is not the player refer menu
    // JA: 今開いているメニュー階層がプレイヤー参照メニューではない場合
    if ( self.modSystem.menuLayerCurrent != level.MOD_DEFINE.LAYER_PLAYERSREF )
    {
        // EN: Get the maximum index for each authority in each menu hierarchy
        // JA: 各メニュー階層における、権限毎の最大インデックスを取得する
        l_MaxIndex = GetLayerMaxIndex( self.modSystem.menuLayerCurrent );
    }
    // EN: If the currently open menu level is the player menu
    // JA: 今開いているメニュー階層がプレイヤーメニューの場合
    else
    {
        // EN: Get the maximum number of players currently participating
        // JA: 現在参加中のプレイヤーの最大人数を取得する
        l_MaxIndex = level.players.size - 1;
    }

    // EN: If the currently selected item index exceeds the maximum index
    // JA: 現在選択中の項目インデックスが、最大インデックスを超えている場合
    if ( l_MaxIndex <= self.modSystem.menuOptionCurrent )
    {
        // EN: Select the top item
        // JA: 一番上の項目を選択する
        self.modSystem.menuOptionCurrent = 0;
    }
    // EN: If the currently selected item index is less than the maximum index
    // JA: 現在選択中の項目インデックスが、最大インデックス未満の場合
    else
    {
        // EN: Shift the selected item index in the mod menu one position later (down)
        // JA: モッドメニューの選択中項目インデックスを1つ後（下）にずらす
        self.modSystem.menuOptionCurrent++;
    }

    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    self ModMenuTextUpdate( );
}



//++++++++++++++++++++++++++++++
// EN : Execute the function registered in the currently selected item in a subthread
// JA : 現在選択中の項目に登録されている関数をサブスレッドで実行する
//++++++++++++++++++++++++++++++
ModMenuDecideOption( )
{
    l_Update = self GetOptionStatus( self.curLang , self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );

    self thread [[ self.modSystem.menuFunction ]]( );
    
    if ( l_Update != "" )
    {
        wait 0.1;
        // EN: Update the text displayed in the mod menu
        // JA: モッドメニューの表示するテキストを更新する
        self ModMenuTextUpdate( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Open submenu (move down the mod menu level)
// JA : サブメニューを開く（モッドメニューの階層を下げる）
//++++++++++++++++++++++++++++++
ModMenuOpenSubMenu( )
{
    // EN: Remember the currently open menu hierarchy and item index
    // JA: 今開いているメニュー階層と項目インデックスを記憶する
    self.modSystem.menuLayerPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuLayerCurrent;
    self.modSystem.menuOptionPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuOptionCurrent;

    // EN: If the current menu hierarchy is the root
    // JA: 現在のメニュー階層がルートの場合
    if ( self.modSystem.menuLayerCurrent == level.MOD_DEFINE.LAYER_ROOT )
    {
        // EN: Set the layer index to the selected item index by adding +1
        // JA: 選択中の項目インデックスに +1 加算したレイヤーインデックスにする
        self.modSystem.menuLayerCurrent = self.modSystem.menuOptionCurrent + 1;
    }
    // EN: If the current menu hierarchy is the "SpawnsMenu"
    // JA: 現在のメニュー階層が "SpawnsMenu" の場合
    else if ( self.modSystem.menuLayerCurrent == level.MOD_DEFINE.LAYER_SPAWNS )
    {
        // EN: Change the submenu that opens depending on the selected item index
        // JA: 選択中の項目インデックスにより、開くサブメニューを変える
        switch ( self.modSystem.menuOptionCurrent )
        {
            case 0:     self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_FORGE; break;
        }
    }
    // EN: If the current menu hierarchy is the "VehiclesMenu"
    // JA: 現在のメニュー階層が "VehiclesMenu" の場合
    else if ( self.modSystem.menuLayerCurrent == level.MOD_DEFINE.LAYER_VEHICLES )
    {
        // EN: Change the submenu that opens depending on the selected item index
        // JA: 選択中の項目インデックスにより、開くサブメニューを変える
        switch ( self.modSystem.menuOptionCurrent )
        {
            case 0:     self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_DEFVEHICLES; break;
        }
    }
    // EN: If the current menu hierarchy is the "WeaponsMenu"
    // JA: 現在のメニュー階層が "WeaponsMenu" の場合
    else if ( self.modSystem.menuLayerCurrent == level.MOD_DEFINE.LAYER_WEAPONS )
    {
        // EN: Change the submenu that opens depending on the selected item index
        // JA: 選択中の項目インデックスにより、開くサブメニューを変える
        switch ( self.modSystem.menuOptionCurrent )
        {
            case 7:     self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_AR; break;
            case 8:     self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_SMG; break;
            case 9:     self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_LMG; break;
            case 10:    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_MR; break;
            case 11:    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_SR; break;
            case 12:    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_PS; break;
            case 13:    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_SG; break;
            case 14:    self.modSystem.menuLayerCurrent = level.MOD_DEFINE.LAYER_WP_EP; break;
        }
    }

    // EN: Move the selected item index to the top
    // JA: 選択中の項目インデックスを一番上にする
    self.modSystem.menuOptionCurrent = level.MOD_DEFINE.VALUE_ROOT;

    // EN: Reduce the depth of the mod menu
    // JA: モッドメニューの階層の深さを下げる
    self.modSystem.menuLayerDepth++;
    
    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    self ModMenuTextUpdate( );
}



//++++++++++++++++++++++++++++++
// EN : Restore menu hierarchy (close mod menu if root is open)
// JA : メニュー階層を戻す（ルートを開いている場合は、モッドメニューを閉じる）
//++++++++++++++++++++++++++++++
ModMenuBackLayer( )
{
    // EN: If the depth of the menu hierarchy is below the root
    // JA: メニュー階層の深さがルートより下にある場合
    if ( level.MOD_DEFINE.LAYER_ROOT < self.modSystem.menuLayerDepth )
    {
        // EN: Increase the depth of the menu hierarchy
        // JA: メニュー階層の深さを上げる
        self.modSystem.menuLayerDepth--;

        // EN: Set the menu hierarchy and item index that were opened immediately before
        // JA: 直前に開いていたメニュー階層と項目インデックスにする
        self.modSystem.menuLayerCurrent = self.modSystem.menuLayerPrevious[self.modSystem.menuLayerDepth];
        self.modSystem.menuOptionCurrent = self.modSystem.menuOptionPrevious[self.modSystem.menuLayerDepth];
        
        // EN: Update the text displayed in the mod menu
        // JA: モッドメニューの表示するテキストを更新する
        self ModMenuTextUpdate( );
        
        // EN: wait 0.3 seconds
        // JA: 0.3秒待機する
        wait 0.3;
    }
    else
    {
        // EN: Close (hide) the mod menu
        // JA: モッドメニューを閉じる（非表示にする）
        self ModMenuClose();
    }
}



//++++++++++++++++++++++++++++++
// EN : Close (hide) the mod menu
// JA : モッドメニューを閉じる（非表示にする）
//++++++++++++++++++++++++++++++
ModMenuClose( )
{
    // EN: Suppose the mod menu is closed
    // JA: モッドメニューが閉じられたとする
    self.modSystem.menuActive = false;

    // EN: Issue a "CloseModMenu" event to yourself (this will stop the menu text display update process)
    // JA: 自分に対して「CloseModMenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self Notify( "CloseModMenu" );
    
    // EN: Waits for only 1 frame as it waits for the update process to finish.
    // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
    WaitFrame( );
    
    // EN: Add line breaks to all lines in the log at the bottom left to make the display cleaner.
    // JA: 左下のログを全行分改行して、表示をきれいにする
    self ClearLogLines( );

    // EN : Define the coordinates to display the mod menu background UI
    // JA : モッドメニューの背景UIを表示する座標を定義
    l_ElemW = 400;

    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optionsState["ChangeOpenCloseAnimation"] ) )
    {
        l_ElemW = 0;
    }
    
    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optionsState["ChangeOpenCloseAnimation"] ) )
    {
        // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
        // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
        self.modSystem.menuUI["TopBar"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["Background"] ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["BottomBar"]  ElementMoveXY( 0.3 , 2000 , 425 );
    }
    
    // EN : Changes the height and width of the specified HUD (on-screen UI) in the specified number of seconds.
    // JA : 指定したHUD（画面上のUI）の縦横幅を、指定した秒数でサイズ変更する
    self.modSystem.menuUI["TopBar"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["Background"] ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["BottomBar"]  ScaleOverTime( 0.3 , l_ElemW , 0 );

    // EN: wait 0.3 seconds
    // JA: 0.3秒待機する
    wait 0.3;

    // EN: Delete the created mod menu design UI
    // JA: 作成したモッドメニューのデザインUIを削除する
    self.modSystem.menuUI["TopBar"]     Destroy( );
    self.modSystem.menuUI["Background"] Destroy( );
    self.modSystem.menuUI["BottomBar"]  Destroy( );
    self.modSystem.menuUI["TopBar"]     = undefined;
    self.modSystem.menuUI["Background"] = undefined;
    self.modSystem.menuUI["BottomBar"]  = undefined;
    
    // EN: If you are opening the mod menu for the first time, the initialization process will end.
    // JA: モッドメニューを初めて開いていた場合、初期化処理は終了する
    if ( self.modSystem.menuFirstOpen == true )
    {
        self.modSystem.menuFirstOpen = false;
    }
}



//++++++++++++++++++++++++++++++
// EN : Color animation of mod menu background color
// JA : モッドメニューの背景色のカラーアニメーション
//++++++++++++++++++++++++++++++
ModMenuBackgroundColorAnimation( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「モッドメニューが閉じられた」場合に処理を終了する
    self Endon( "CloseModMenu" );
    

    // EN: Infinite loop only while mod menu is open
    // JA: モッドメニューが開かれている間だけ無限ループ
    while ( self.modSystem.menuActive == true )
    {
        // EN: If mod menu background animation is enabled
        // JA: モッドメニューの背景アニメーションが有効の場合
        if ( !IsDefined( self.optionsState["SwitchBackgroundAnimation"] ) )
        {
            // EN : Changes the color of the specified HUD (on-screen UI) for the specified number of seconds.
            // JA : 指定したHUD（画面上のUI）の色を、指定した秒数で変色させる
            self.modSystem.menuUI["TopBar"]     ElementColorChange( 1.5 , DivideColor( 21     , 96    ,   162 ) );
            self.modSystem.menuUI["BottomBar"]  ElementColorChange( 1.5 , DivideColor( 115    , 31    ,   17 ) );
            wait 1.5;

            wait 0.5;
        
            self.modSystem.menuUI["TopBar"]     ElementColorChange( 1.5 , DivideColor( 37     , 72    ,   106 ) );
            self.modSystem.menuUI["BottomBar"]  ElementColorChange( 1.5 , DivideColor( 37     , 29    ,   30 ) );
            wait 1.5;

            wait 0.5;
        }
        WaitFrame( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Mod menu background coordinate animation
// JA : モッドメニューの背景座標のアニメーション
//++++++++++++++++++++++++++++++
ModMenuBackgroundLocationAnimation( )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「モッドメニューが閉じられた」場合に処理を終了する
    self Endon( "CloseModMenu" );
    

    // EN: Infinite loop only while mod menu is open
    // JA: モッドメニューが開かれている間だけ無限ループ
    while ( self.modSystem.menuActive == true )
    {
        // EN: If the number of text lines in the mod menu is 5 lines
        // JA: モッドメニューのテキスト行数が5行の場合
        if ( IsDefined( self.optionsState["SwitchTextNumberLine"] ) )
        {
            // EN: If the layout has not been changed to match the number of text lines in the mod menu
            // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わっていない場合
            if ( !IsDefined( self.optionsState["SwitchTextNumberLine" + "_Init"] ) )
            {
                // EN: Suppose you have finished changing the layout to match the number of text lines in the mod menu.
                // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わったとする
                self.optionsState["SwitchTextNumberLine" + "_Init"] = true;
                
                // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
                // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
                self.modSystem.menuUI["BottomBar"] ElementMoveXY( 0.3 , -330 , ( 80 + 45 ) );
                wait 0.3;
            }
        }
        // EN: If the number of text lines in the mod menu is 4 lines
        // JA: モッドメニューのテキスト行数が4行の場合
        else
        {
            // EN: If the layout has not been changed to match the number of text lines in the mod menu
            // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わっていない場合
            if ( IsDefined( self.optionsState["SwitchTextNumberLine" + "_Init"] ) )
            {
                // EN: Suppose you have finished changing the layout to match the number of text lines in the mod menu.
                // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わったとする
                self.optionsState["SwitchTextNumberLine" + "_Init"] = undefined;
                
                // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
                // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
                self.modSystem.menuUI["BottomBar"] ElementMoveXY( 0.3 , -330 , ( 80 + 30 ) );
                wait 0.3;
            }
        }
        WaitFrame( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Add line breaks to all lines in the log at the bottom left to make the display cleaner.
// JA : 左下のログを全行分改行して、表示をきれいにする
//++++++++++++++++++++++++++++++
ClearLogLines( )
{
    // EN: Display an empty statement in the log at the bottom left of 6 lines
    // JA: 6行分左下のログに空文を表示させる
    for ( i = 0; i < 6; i++ )
    {
        self iPrintln( "" );
    }
}



//++++++++++++++++++++++++++++++
// EN : Create a HUD (on-screen UI) with specified elements
// JA : 指定した要素でHUD（画面上のUI）を作成する
//++++++++++++++++++++++++++++++
CreateRectangle( xAlignment , yAlignment , xPoint , yPoint , xScale , yScale , colorValue , shaderType , sortValue , alphaValue )
{
    l_NewUI                 = NewClientHudElem( self );
    l_NewUI.elemtype        = "icon";
    l_NewUI.color           = colorValue;
    l_NewUI.alpha           = alphaValue;
    l_NewUI.sort            = sortValue;
    l_NewUI.children        = [];
    l_NewUI.archived        = 0;
    l_NewUI.hidewheninmenu  = 1;
    l_NewUI SetShader( shaderType , xScale , yScale );
    l_NewUI scripts\mp\hud_util::SetPoint( xAlignment , yAlignment , xPoint , yPoint );
    return l_NewUI;
}



//++++++++++++++++++++++++++++++
// EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
// JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
//++++++++++++++++++++++++++++++
ElementMoveXY( time , xPoint , yPoint )
{
	self MoveOverTime( time );
	self.x = xPoint;
	self.y = yPoint;
}



//++++++++++++++++++++++++++++++
// EN : Changes the color of the specified HUD (on-screen UI) for the specified number of seconds.
// JA : 指定したHUD（画面上のUI）の色を、指定した秒数で変色させる
//++++++++++++++++++++++++++++++
ElementColorChange( time , colorValue )
{
	self FadeOverTime( time );
	self.color = colorValue;
}



//++++++++++++++++++++++++++++++
// EN : Get the GSC color code from the specified RGB color balance
// JA : 指定したRGB色バランスからGSC用カラーコードを取得する
//++++++++++++++++++++++++++++++
DivideColor( rValue , gValue , bValue )
{
    return ( (rValue / 255) , (gValue / 255) , (bValue / 255) );
}



//++++++++++++++++++++++++++++++
// EN : General-purpose processing to display the fixed phrase "[Category] Sentence 1: Sentence 2"
// JA : "[カテゴリ] 文章1 : 文章2" という定型文を表示するための汎用処理
//++++++++++++++++++++++++++++++
ShowCenterMessage( selfLang , tagName , msg1 , msg2 , content , prefix )
{
    // EN : define empty string
    // JA : 空の文字列を定義
    l_Content = "";
    
    // EN : If sentence 2 is set, get the translation of sentence 2
    // JA : 文章2が設定されている場合は、文章2の翻訳を取得する
    if ( IsDefined( msg2 ) )
    {
        l_Content = " : ^5" + GetMultilingualText( selfLang , msg2 );
    }
    // EN : If a content sentence is set, set the sentence as is.
    // JA : コンテンツ文が設定されている場合は、そのままの文章を設定する
    else if ( IsDefined( content ) )
    {
        l_Content = " : ^5" + content;
    }
    
    // EN : If endings are set, add the ending translation to the end
    // JA : 語尾が設定されている場合は、語尾の翻訳を最後に追加する
    if ( IsDefined( prefix ) )
    {
        l_Content = l_Content + GetMultilingualText( selfLang , prefix );
    }

    // EN : Display fixed phrases in the center of the screen
    // JA : 定型文を画面中央に表示する
    self iPrintlnBold( GetMultilingualText( selfLang , tagName ) + GetMultilingualText( selfLang , msg1 ) + l_Content );
}



//++++++++++++++++++++++++++++++
// EN : Obtain input judgment results tailored to keyboard and controller
// JA : キーボード、コントローラーに合わせた入力判定結果を取得する
//++++++++++++++++++++++++++++++
GetKeycodePressed( kbType , controllerType )
{
    l_KeyType = "";

    // EN: If you are using a gamepad
    // JA: ゲームパッドを使用中の場合
    if ( self UsingGamepad( ) ) { l_KeyType = controllerType; }
    // EN: When using a keyboard and mouse
    // JA: キーボード・マウスを使用中の場合
    else                        { l_KeyType = kbType; }
    
    // EN: Get the input judgment corresponding to the specified key
    // JA: 指定のキーに相当する入力判定を取得する
    switch ( l_KeyType )
    {
        // EN: While the "Aim" button is pressed
        // JA: 「エイム」ボタンが押されている間
        case "Ads": return self AdsButtonPressed( );

        // EN: When the button to throw tactical is pressed
        // JA: タクティカルを投げるボタンが押されたら
        case "Tactical": return self SecondaryOffhandButtonPressed( );

        // EN: While the "Use" button is pressed
        // JA: 「使用」ボタンが押されている間
        case "Use": return self UseButtonPressed( );

        // EN: When the "Reload" button is pressed
        // JA: 「リロード」ボタンが押されたら
        case "Reload": return self ReloadButtonPressed( );

        // EN: When the "Melee Attack" button is pressed
        // JA: 「近接攻撃」ボタンが押されたら
        case "Melee": return self MeleeButtonPressed( );

        // EN: When the "Attack" button is pressed
        // JA: 「攻撃」ボタンが押されたら
        case "Attack": return self AttackButtonPressed( );

        // EN: When the button to throw lethal is pressed
        // JA: リーサルを投げるボタンが押されたら
        case "Lethal": return self FragButtonPressed( );

        // EN: When the "Crouch/Prone" button is pressed
        // JA: 「しゃがみ・伏せ」ボタンが押されたら
        case "Stance": return self StanceButtonPressed( );

        // EN: When the "Jump" button is pressed
        // JA: 「ジャンプ」ボタンが押されたら
        case "Jump": return self JumpButtonPressed( );

        // EN: When the "Run/Hold your breath" button is pressed
        // JA: 「走る・息止め」ボタンが押されたら
        case "Sprint": return self SprintButtonPressed( );

        // EN: If any other specific key is pressed
        // JA: それ以外の特定のキーが押されたら
        //default: return self scripts\mp\utility\player::_GetButtonPressed( l_KeyType );
        //default: return self ButtonPressed( l_KeyType );
        default:
            if ( !IsDefined( self.buttonspressed ) )            { return false; }
            if ( !IsDefined( self.buttonspressed[l_KeyType] ) ) { return false; }
            return self.buttonspressed[l_KeyType].pressed;

    }
}



//++++++++++++++++++++++++++++++
// EN : Display text and execute functions according to the on/off state of specified variables.
// JA : 指定の変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
SwitchOnfSelfFunction( optName , optFunc , message , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6  , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID )
{
    // EN: If the specified variable does not yet exist
    // JA: 指定の変数がまだ存在しない場合
    if ( !IsDefined( self.optionsState[optName] ) )
    {
        // EN : Execute the process when the specified parameter is enabled
        // JA : 指定のパラメーターを有効にした時の処理を実行する
        self EnabledSelfParameter( self.curLang , optName , undefined , message , true , optFunc , true , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID );
    }
    // EN: If the specified variable has already been created
    // JA: 指定の変数が既に作られている場合
    else
    {
        // EN : Execute the process when the specified parameter is disabled
        // JA : 指定のパラメーターを無効にした時の処理を実行する
        self DisabledSelfParameter( self.curLang , optName , undefined , true , weaponID );
    }
}



//++++++++++++++++++++++++++++++
// EN : Displays text and executes sub-functions associated with the main function according to the on/off state of specified variables.
// JA : 指定の変数のオンオフ状態に合わせて、文章の表示を行い、メイン機能に付随するサブ機能の実行を行う
//++++++++++++++++++++++++++++++
SwitchOnfSubFunction( optName1 , optName2 , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 )
{
    // EN: If the specified main function variable does not yet exist
    // JA: 指定のメイン機能の変数がまだ存在しない場合
    if ( !IsDefined( self.optionsState[optName1] ) )
    {
        // EN: The text "[Notification] function not executed: function name" is displayed in the center of the screen.
        // JA: 画面中央に "[通知] 機能が未実行 : 機能名称" という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "NotFuncExec" , optName1 , undefined , undefined );
        return;
    }

    // EN: If the variable for the specified subfunction does not yet exist
    // JA: 指定のサブ機能の変数がまだ存在しない場合
    if ( !IsDefined( self.optionsState[optName1].modData[optName2] ) )
    {
        // EN : Execute the process when the specified parameter is enabled
        // JA : 指定のパラメーターを有効にした時の処理を実行する
        self EnabledSelfParameter( self.curLang , optName1 , optName2 , undefined , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 );
    }
    // EN: If the specified subfunction variable has already been created
    // JA: 指定のサブ機能の変数が既に作られている場合
    else
    {
        // EN : Execute the process when the specified parameter is disabled
        // JA : 指定のパラメーターを無効にした時の処理を実行する
        self DisabledSelfParameter( self.curLang , optName1 , optName2 , notice , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Display text and execute functions according to the on/off state of specified level variables.
// JA : 指定の level 変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
SwitchOnfLevelFunction( optName , optFunc , message , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6  , optArg7 )
{
    // EN: If the specified level variable does not already exist
    // JA: 指定の level 変数がまだ存在しない場合
    if ( !IsDefined( level.lobbyState[optName] ) )
    {
        // EN : Execute the process when the specified parameter is enabled
        // JA : 指定のパラメーターを有効にした時の処理を実行する
        self EnabledLevelParameter( self.curLang , optName , undefined , message , true , optFunc , true , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 );
    }
    // EN: If the specified level variable has already been created
    // JA: 指定の level 変数が既に作られている場合
    else
    {
        // EN : Execute the process when the specified parameter is disabled
        // JA : 指定のパラメーターを無効にした時の処理を実行する
        self DisabledLevelParameter( self.curLang , optName , undefined , true );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing when the specified self parameter is enabled
// JA : 指定の self パラメーターを有効にした時の処理
//++++++++++++++++++++++++++++++
EnabledSelfParameter( selfLang , optName1 , optName2 , message , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID )
{
    l_OptName = "";

    // EN: If suboptions are specified
    // JA: サブオプションが指定されている場合は
    if ( IsDefined( optName2 ) )
    {
        l_OptName = optName2;
        
        // EN: Set the specified data in the variable of the specified subfunction
        // JA: 指定のサブ機能の変数に、指定のデータを設定する
        self.optionsState[optName1].modData[optName2] = optData;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else if ( IsDefined( optName1 ) )
    {
        l_OptName = optName1;

        // EN: Enable specified variable
        // JA: 指定の変数を有効にする
        self.optionsState[optName1] = true;
        
        // EN: Add structure to "optionsState" variable
        // JA: 「optionsState」変数に構造体を追加する
        self.optionsState[optName1] = SpawnStruct( );
        
        // EN: Create an array to set parameters dedicated to each function
        // JA: 各機能専用のパラメーターを設定するための配列を作成
        self.optionsState[optName1].modData = [];
        
        // EN: If weapon ID is specified
        // JA: 武器IDが指定されている場合
        if ( IsDefined( weaponID ) )
        {
            // EN: Get weapon data into specified variable
            // JA: 指定の変数に武器データを取得する
            self.optionsState[optName1].weaponData = self ProvideWeapon( weaponID , inProjectile , onlyGroup , attachmentID , camoID , undefined , true , undefined );
        }
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: Display the text "[Enabled] Function name" in the center of the screen
        // JA: 画面中央に「[有効化] 機能名称」という文章を表示する
        self ShowCenterMessage( selfLang , "Enabled" , l_OptName , message , undefined , undefined );
    }

    // EN: If a function to execute is specified
    // JA: 実行する関数が指定されている場合
    if ( IsDefined( optFunc ) )
    {
        // EN: Execute the specified function in a subthread
        // JA: 指定した関数をサブスレッドで実行する
        if      ( IsDefined( optArg7 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 ); }
        else if ( IsDefined( optArg6 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 ); }
        else if ( IsDefined( optArg5 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 ); }
        else if ( IsDefined( optArg4 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 ); }
        else if ( IsDefined( optArg3 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 ); }
        else if ( IsDefined( optArg2 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 ); }
        else if ( IsDefined( optArg1 ) )    { self thread [[ optFunc ]]( optArg1 ); }
        else                                { self thread [[ optFunc ]]( ); }
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing when the specified self parameter is disabled
// JA : 指定の self パラメーターを無効にした時の処理
//++++++++++++++++++++++++++++++
DisabledSelfParameter( selfLang , optName1 , optName2 , notice , weaponID )
{
    l_OptName = "";

    // EN: If suboptions are specified
    // JA: サブオプションが指定されている場合は
    if ( IsDefined( optName2 ) )
    {
        l_OptName = optName2;

        // EN: Disable (discard) the specified subfunction variable
        // JA: 指定のサブ機能の変数を無効（破棄）する
        self.optionsState[optName1].modData[optName2] = undefined;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else
    {
        l_OptName = optName1;

        // EN: If weapon ID is specified
        // JA: 武器IDが指定されている場合
        if ( IsDefined( weaponID ) )
        {
            // EN: Pick up the target's weapon
            // JA: 持っている対象の武器を取り上げる
            self ConfigureWeapon( self.optionsState[optName1].weaponData , true , true , undefined , undefined , undefined );
            wait 0.01;
        }

        // EN: Disable (discard) the specified variable
        // JA: 指定の変数を無効（破棄）する
        self.optionsState[optName1] = undefined;
    }

    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: Display the text "[Disabled] Function name" in the center of the screen
        // JA: 画面中央に「[無効化] 機能名称」という文章を表示する
        self ShowCenterMessage( selfLang , "Disabled" , l_OptName , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing when the specified level parameter is enabled
// JA : 指定の level パラメーターを有効にした時の処理
//++++++++++++++++++++++++++++++
EnabledLevelParameter( selfLang , optName1 , optName2 , message , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 )
{
    l_OptName = "";

    // EN: If suboptions are specified
    // JA: サブオプションが指定されている場合は
    if ( IsDefined( optName2 ) )
    {
        l_OptName = optName2;
        
        // EN: Set the specified data in the variable of the specified subfunction
        // JA: 指定のサブ機能の変数に、指定のデータを設定する
        level.lobbyState[optName1].modData[optName2] = optData;
        self.optionsState[optName1].modData[optName2] = optData;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else if ( IsDefined( optName1 ) )
    {
        l_OptName = optName1;

        // EN: Enable specified variable
        // JA: 指定の変数を有効にする
        level.lobbyState[optName1] = true;
        self.optionsState[optName1] = true;
        
        // EN: Add structure to "lobbyState" variable
        // JA: "lobbyState" 変数に構造体を追加する
        level.lobbyState[optName1] = SpawnStruct( );
        self.optionsState[optName1] = SpawnStruct( );
        
        // EN: Create an array to set parameters dedicated to each function
        // JA: 各機能専用のパラメーターを設定するための配列を作成
        level.lobbyState[optName1].modData = [];
        self.optionsState[optName1].modData = [];
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: If you want to display a specific message
        // JA: 特定のメッセージを表示する場合
        if ( IsDefined( message ) )
        {
            // EN: Display the text "[Notice] message" in the center of the screen
            // JA: 画面中央に "[通知] メッセージ" という文章を表示する
            self ShowCenterMessage( selfLang , "Notice" , message , undefined , undefined , undefined );
        }
        // EN: If no message is specified
        // JA: メッセージの指定がない場合
        else
        {
            // EN: Display the text "[Enabled] Function name" in the center of the screen
            // JA: 画面中央に「[有効化] 機能名称」という文章を表示する
            self ShowCenterMessage( selfLang , "Enabled" , l_OptName , undefined , undefined , undefined );
        }
    }

    // EN: If a function to execute is specified
    // JA: 実行する関数が指定されている場合
    if ( IsDefined( optFunc ) )
    {
        // EN: Execute the specified function in a subthread
        // JA: 指定した関数をサブスレッドで実行する
        if      ( IsDefined( optArg7 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 ); }
        else if ( IsDefined( optArg6 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 ); }
        else if ( IsDefined( optArg5 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 , optArg5 ); }
        else if ( IsDefined( optArg4 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 , optArg4 ); }
        else if ( IsDefined( optArg3 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 , optArg3 ); }
        else if ( IsDefined( optArg2 ) )    { self thread [[ optFunc ]]( optArg1 , optArg2 ); }
        else if ( IsDefined( optArg1 ) )    { self thread [[ optFunc ]]( optArg1 ); }
        else                                { self thread [[ optFunc ]]( ); }
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing when the specified level parameter is disabled
// JA : 指定の level パラメーターを無効にした時の処理
//++++++++++++++++++++++++++++++
DisabledLevelParameter( selfLang , optName1 , optName2 , notice )
{
    l_OptName = "";

    // EN: If suboptions are specified
    // JA: サブオプションが指定されている場合は
    if ( IsDefined( optName2 ) )
    {
        l_OptName = optName2;

        // EN: Disable (discard) the specified subfunction variable
        // JA: 指定のサブ機能の変数を無効（破棄）する
        level.lobbyState[optName1].modData[optName2] = undefined;
        self.optionsState[optName1].modData[optName2] = undefined;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else
    {
        l_OptName = optName1;

        // EN: Disable (discard) the specified variable
        // JA: 指定の変数を無効（破棄）する
        level.lobbyState[optName1] = undefined;
        self.optionsState[optName1] = undefined;
    }

    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    level Notify( "end_lobby_" + l_OptName );

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: Display the text "[Disabled] Function name" in the center of the screen
        // JA: 画面中央に「[無効化] 機能名称」という文章を表示する
        self ShowCenterMessage( selfLang , "Disabled" , l_OptName , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Select self variables related to the specified function in order from the specified array
// JA : 指定の機能に関する self 変数を、指定の配列内から順に選択する
//++++++++++++++++++++++++++++++
ChangeSelfParameter( optName1 , optName2 , prefix , optFunc , arrayData , notice , lastEnd )
{
    // EN: Run the specified function if it has not already been run
    // JA: 指定された機能がまだ実行されていない場合
    if ( !IsDefined( self.optionsState[optName1] ) )
    {
        // EN: Run once and create variables for specified functions
        // JA: 一度実行して、指定機能に関する変数を作成する
        self thread [[ optFunc ]]( );
    }
    // EN: If the specified function has already been executed
    // JA: 指定された機能が実行済みの場合
    else
    {
        // EN: Array length loop
        // JA: 配列長分ループ
        for ( index = 0; index < arrayData.size; index++ )
        {
            // EN: Skip until it matches the item currently being set
            // JA: 現在設定中の項目と一致するまではスキップ
            if ( self.optionsState[optName1].modData[optName2] != arrayData[index] ) { continue; }

            // EN: If the next item that is currently being set does not exceed the length of the array, set the next item.
            // JA: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
            if ( (index + 1) < arrayData.size ) { self.optionsState[optName1].modData[optName2] = arrayData[index + 1]; }
            
            // EN: If the next item that is currently being set exceeds the length of the array
            // JA: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は
            else
            {
                // EN: If the function does not end at the last item,
                // JA: 最後の項目で機能を終了しない場合は
                if ( !IsDefined( lastEnd ) )
                {
                    // EN: set the first item.
                    // JA: 最初の項目を設定する
                    self.optionsState[optName1].modData[optName2] = arrayData[0];
                }
                // EN: To end the function at the last item
                // JA: 最後の項目で機能を終了する場合は
                else
                {
                    // EN: Disable specified features
                    // JA: 指定の機能を無効にする
                    self thread [[ optFunc ]]( );
                    wait 0.01;
                }
            }
            
            // EN: End loop
            // JA: ループ終了
            break;
        }

        // EN: If you need to display a message
        // JA: メッセージを表示する必要がある場合
        if ( IsDefined( notice ) )
        {
            // EN: If the function does not end at the last item,
            // JA: 最後の項目で機能を終了しない場合は
            if ( !IsDefined( lastEnd ) )
            {
                // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                // JA: 画面中央に「[通知] 機能名 : 要素名」という文章を表示する
                self ShowCenterMessage( self.curLang , "Notice" , optName2 , undefined , self.optionsState[optName1].modData[optName2] , prefix );
            }
            // EN: To end the function at the last item
            // JA: 最後の項目で機能を終了する場合は
            else
            {
                // EN: If the parent variable of the specified function exists
                // JA: 指定の機能の親変数が存在する場合
                if ( IsDefined( self.optionsState[optName1] ) )
                {
                    // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                    // JA: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                    self ShowCenterMessage( self.curLang , "Notice" , optName1 , undefined , self.optionsState[optName1].modData[optName2] , prefix );
                }
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Select level variables related to the specified function in order from the specified array
// JA : 指定の機能に関する level 変数を、指定の配列内から順に選択する
//++++++++++++++++++++++++++++++
ChangeLevelParameter( optName1 , optName2 , prefix , optFunc , arrayData , notice , lastEnd )
{
    // EN: Run the specified function if it has not already been run
    // JA: 指定された機能がまだ実行されていない場合
    if ( !IsDefined( level.lobbyState[optName1] ) )
    {
        // EN: Run once and create variables for specified functions
        // JA: 一度実行して、指定機能に関する変数を作成する
        self thread [[ optFunc ]]( );
    }
    // EN: If the specified function has already been executed
    // JA: 指定された機能が実行済みの場合
    else
    {
        // EN: Array length loop
        // JA: 配列長分ループ
        for ( index = 0; index < arrayData.size; index++ )
        {
            // EN: Skip until it matches the item currently being set
            // JA: 現在設定中の項目と一致するまではスキップ
            if ( level.lobbyState[optName1].modData[optName2] != arrayData[index] ) { continue; }

            // EN: If the next item that is currently being set does not exceed the length of the array, set the next item.
            // JA: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
            if ( (index + 1) < arrayData.size ) { level.lobbyState[optName1].modData[optName2] = arrayData[index + 1]; }
            
            // EN: If the next item that is currently being set exceeds the length of the array
            // JA: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は
            else
            {
                // EN: If the function does not end at the last item,
                // JA: 最後の項目で機能を終了しない場合は
                if ( !IsDefined( lastEnd ) )
                {
                    // EN: set the first item.
                    // JA: 最初の項目を設定する
                    level.lobbyState[optName1].modData[optName2] = arrayData[0];
                }
                // EN: To end the function at the last item
                // JA: 最後の項目で機能を終了する場合は
                else
                {
                    // EN: Disable specified features
                    // JA: 指定の機能を無効にする
                    self thread [[ optFunc ]]( );
                    wait 0.01;
                }
            }
            
            // EN: End loop
            // JA: ループ終了
            break;
        }

        // EN: If you need to display a message
        // JA: メッセージを表示する必要がある場合
        if ( IsDefined( notice ) )
        {
            // EN: If the function does not end at the last item,
            // JA: 最後の項目で機能を終了しない場合は
            if ( !IsDefined( lastEnd ) )
            {
                // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                // JA: 画面中央に「[通知] 機能名 : 要素名」という文章を表示する
                self ShowCenterMessage( self.curLang , "Notice" , optName2 , undefined , level.lobbyState[optName1].modData[optName2] , prefix );
            }
            // EN: To end the function at the last item
            // JA: 最後の項目で機能を終了する場合は
            else
            {
                // EN: If the parent variable of the specified function exists
                // JA: 指定の機能の親変数が存在する場合
                if ( IsDefined( level.lobbyState[optName1] ) )
                {
                    // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                    // JA: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                    self ShowCenterMessage( self.curLang , "Notice" , optName1 , undefined , level.lobbyState[optName1].modData[optName2] , prefix );
                }
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : General-purpose functions for performing functions that perform loop processing
// JA : ループ処理を行う機能を実行するための汎用関数
//++++++++++++++++++++++++++++++
ExecLoopFunction( optName , optFunc , loopTime )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN: Set the specified effect name as the function termination trigger
    // JA: 指定の機能名を関数の終了トリガーとする
    self Endon( "finalize_" + optName );


    // EN: Use the specified function name as the function termination trigger
    // JA: 指定の機能の初期化処理を行う
    self [[ optFunc ]]( optName , level.MOD_DEFINE.MOD_INITIALIZE );


    // EN: Loop until specified variable no longer exists
    // JA: 指定の変数が存在しなくなるまでループ
    while ( IsDefined( self.optionsState[optName] ) )
    {
        // EN: Performs in-loop processing of specified function
        // JA: 指定の機能のループ中処理を行う
        self [[ optFunc ]]( optName , level.MOD_DEFINE.MOD_PROCESSING );

        // EN: Wait for the specified time
        // JA: 指定時間分待機する
        wait loopTime;
    }
    
    // EN: Perform termination processing for the specified function
    // JA: 指定の機能の終了処理を行う
    self [[ optFunc ]]( optName , level.MOD_DEFINE.MOD_FINALIZE );
}



//++++++++++++++++++++++++++++++
// EN : Play the effect starting from the specified object
// JA : 指定したオブジェクトを起点にエフェクトを再生する
//++++++++++++++++++++++++++++++
PlayEffectToObject( time , objData , fxName , tagName , loopFx , locationBase , locationFix , angleType , angleRange , stopFx )
{
    // EN : If the specified object exists
    // JA : 指定されたオブジェクトが存在する場合
    if ( IsDefined( objData ) )
    {
        // EN: Set the specified effect name as the function termination trigger
        // JA: 指定のエフェクト名を関数の終了トリガーとする
        objData Endon( "end_" + fxName );
    }

    // EN : If a tag name is specified and the object does not have a tag, fix the tag name.
    // JA : タグ名が指定されていて、そのオブジェクトがタグを持っていない場合は、タグ名を修正する
    if ( IsDefined( tagName ) )
    {
        if ( scripts\engine\utility::HasTag( objData.model , tagName ) == false )
        {
            tagName = "tag_origin";
        }
    }

    // EN : To end the tag effect that is currently playing
    // JA : 再生中のタグエフェクトを終了する場合
    if ( IsDefined( stopFx ) )
    {
        StopFXOnTag( scripts\engine\utility::GetFX( fxName ) , objData , tagName );

        // EN: Set the specified option name as the function termination trigger
        // JA: 指定のエフェクト名の終了トリガーを通知する
        objData Notify( "end_" + fxName );
        return;
    }
    
    // EN : If adjustment coordinates are not specified, initialize them.
    // JA : 調整座標を指定されてない場合は、初期化しておく
    if ( !IsDefined( locationFix ) )    { locationFix = ( 0 , 0 , 0 ); }

    // EN: infinite loop
    // JA: 無限ループ
    while ( true )
    {
        // EN : If the specified object exists
        // JA : 指定されたオブジェクトが存在する場合
        if ( IsDefined( objData ) )
        {
            // EN : If a tag name is specified, play the effect at the coordinates of the tag name
            // JA : タグ名が指定されている場合、タグ名の座標にエフェクトを再生する
            if ( IsDefined( tagName ) )
            {
                PlayFxOnTag(    scripts\engine\utility::GetFX( fxName ) , objData , tagName );
            }
            // EN : If no tag name is specified, play the effect at a location shifted from the object to the modified coordinates.
            // JA : タグ名が指定されていない場合、オブジェクトから修正座標にずらした場所にエフェクトを再生する
            else
            {
                if ( IsDefined( angleType ) )
                {
                    switch ( angleType )
                    {
                        case "Up":      locationFix = AnglesToUp( objData.angles ) * angleRange; break;
                        case "Forward": locationFix = AnglesToForward( objData.angles ) * angleRange; break;
                        case "Left":    locationFix = AnglesToLeft( objData.angles ) * angleRange; break;
                        case "Right":   locationFix = AnglesToRight( objData.angles ) * angleRange; break;
                    }
                }

                PlayFX(         scripts\engine\utility::GetFX( fxName ) , objData.origin + locationFix );
            }
        }
        // EN : If the specified object does not exist
        // JA : 指定されたオブジェクトが存在しない場合
        else
        {
            // EN : If basic coordinates are specified, Generate effect at specified coordinates
            // JA : 基本座標が指定されている場合、指定された座標にエフェクトを生成する
            if ( IsDefined( locationBase ) )
            {
                PlayFX(         scripts\engine\utility::GetFX( fxName ) , locationBase + locationFix );
            }

            // EN : In the case of loop processing, the loop is interrupted because there is no means to terminate it.
            // JA : ループ処理の場合、終了するための手段を実装していないため、ループを中断する
            if ( IsDefined( loopFx ) ) { break; }
        }

        // EN : Break the loop if it does not loop infinitely
        // JA : 無限ループしない場合、ループを中断する
        if ( !IsDefined( loopFx ) ) { break; }
        
        wait time;
    }
}



//++++++++++++++++++++++++++++++
// EN : Obtain a trace in the front direction
// JA : 正面方向へのトレースを取得する
//++++++++++++++++++++++++++++++
GetPlayerForwardTrace( useTrace , useEye , traceLength , locationFix )
{
    // EN: Get eye location
    // JA: 目の座標を取得
    l_EyeLocation = self GetEye( );
    // EN: Get front direction
    // JA: 正面方向を取得
    l_ForwardAngle = AnglesToForward( self GetPlayerAngles( ) );

    // EN: When to use tracing
    // JA: トレースを使用する場合
    if ( IsDefined( useTrace ) ) 
    {
        // EN: Get the end coordinates (Distance ahead multiplied by the specified value in the front direction)
        // JA: 終了座標を取得（正面方向に 指定した数値分 倍先の距離）
        l_EndLocation = l_EyeLocation + ( l_ForwardAngle * traceLength );
        // EN: Fly a ray from the start coordinate to the end coordinate and obtain information about the hit data.
        // JA: 開始座標から終了座標へ向けて、レイを飛ばし、ヒットしたデータの情報を取得する
        return scripts\engine\trace::_Bullet_Trace( l_EyeLocation , l_EndLocation , 0 , undefined );
    }
    // EN: When not to use tracing
    // JA: トレースを使用しない場合
    else
    {
        // EN: If there is no information on correction coordinates, define them temporarily.
        // JA: 修正座標の情報が無い場合、仮で定義しておく
        if ( !isDefined( locationFix ) )
        {
            locationFix = ( 0 , 0 , 0 );
        }

        l_EndLocation = [];
        
        // EN: When not using player eye coordinates
        // JA: プレイヤーの目の座標を使わない場合
        if ( !isDefined( useEye ) )
        {
            l_EndLocation = self.origin;
        }
        // EN: When using player eye coordinates
        // JA: プレイヤーの目の座標を使う場合
        else
        {
            l_EndLocation = l_EyeLocation;
        }
        
        // EN: Adjust coordinates
        // JA: 座標の調整を行う
        l_EndLocation = l_EndLocation + VectorScale( l_ForwardAngle , traceLength ) + locationFix;
        // EN: Get coordinate results
        // JA: 座標結果を取得する
        return l_EndLocation;
    }
}



//++++++++++++++++++++++++++++++
// EN : Obtains a frontal trace that matches the angle of the specified object
// JA : 指定したオブジェクトの角度に合わせた、正面方向のトレースを取得する
//++++++++++++++++++++++++++++++
GetAngleTrace( object , upRange , centerRange , forwardRange , leftRange , rightRange , lrUpscaleFix , endRange, endUpscale , endTrace )
{
    if ( !IsDefined( object ) )         { return; }
    l_Location["Start"] = object.origin;

    if ( IsDefined( upRange ) )         { l_Location["Start"]       += AnglesToUp( object.angles ) * upRange; }
    if ( IsDefined( centerRange ) )     { l_Location["Start"]       += AnglesToForward( object.angles ) * centerRange; }
    if ( IsDefined( forwardRange ) )    { l_Location["Forward"]     = l_Location["Start"]  + ( AnglesToForward( object.angles ) * forwardRange ); }
    if ( IsDefined( leftRange ) )       { l_Location["Left"]        = l_Location["Start"]  + AnglesToLeft( object.angles ) * leftRange; }
    if ( IsDefined( rightRange ) )      { l_Location["Right"]       = l_Location["Start"]  + AnglesToRight( object.angles ) * rightRange; }
    if ( IsDefined( lrUpscaleFix ) )
    {
        if ( IsDefined( leftRange ) )   { l_Location["Left"]        += AnglesToUp( object.angles ) * lrUpscaleFix; }
        if ( IsDefined( rightRange ) )  { l_Location["Right"]       += AnglesToUp( object.angles ) * lrUpscaleFix; }
    }
    if ( IsDefined( endRange ) )        { l_Location["End"]         = l_Location["Start"] + ( AnglesToForward( object.angles ) * endRange ); }
    if ( IsDefined( endUpscale ) )      { l_Location["EndDown"]     = l_Location["Start"] + ( AnglesToUp( object.angles ) * endUpscale ); }
    if ( IsDefined( endTrace ) )
    {
        l_Point = scripts\engine\trace::_Bullet_Trace( l_Location["Start"] , l_Location["End"] , 0 , undefined );
        l_Location["EndTrace"] = l_Point["position"]; }

    return l_Location;
}



//++++++++++++++++++++++++++++++
// EN : Wait for a bullet to be fired and process the specified event by matching the weapon information.
// JA : 銃弾の発射を待機し、武器情報の照合一致により、指定のイベントを処理する
//++++++++++++++++++++++++++++++
WaitFireBullets( optName1 , optName2 , optFunc , notice , specificWeapon , effectData , endDeath )
{
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    // EN : If you want to disable the function when you die
    // JA : 死んだ時に機能を無効化したい場合
    if ( IsDefined( endDeath ) )
    {
        // EN : This function ends processing if "you die"
        // JA : この関数は「自分が死んだ」場合に処理を終了する
        self Endon( "death" );
    }
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名を関数の終了トリガーとする
    self Endon( "end_" + optName1 );
    
    // EN: If an effect is specified, allow the effect to occur on fire.
    // JA: エフェクトが指定されている場合、発射時にエフェクトを発生できるようにする
    if ( IsDefined( effectData ) )
    {
        self.optionsState[optName1].effectData = effectData;
    }

    // EN: Make it a variable so that you can adjust the distance of the coordinates to get when firing a gun
    // JA: 銃発射時の取得先の座標の距離を調整できるように変数化する
    self.optionsState[optName1].modData["TraceLength"] = 1000000;

    // EN: infinite loop
    // JA: 無限ループ
    while ( true )
    {
        // EN: wait until the bullet is fired
        // JA: 銃弾を発射するまで待機する
        self WaitTill( "weapon_fired" );

        // EN: If the specified variable does not exist, end the loop processing
        // JA: 指定の変数が存在しない場合は、ループ処理を終了する
        if ( !IsDefined( self.optionsState[optName1] ) ) { break; }
        if ( IsDefined( optName2 ) )
        {
            if ( !IsDefined( self.optionsState[optName1].modData[optName2] ) ) { break; }
        }
        
        // EN: Activates with specific weapons
        // JA: 特定の武器で発動する場合
        if ( IsDefined( specificWeapon ) )
        {
            // EN: If there is no weapon data linked to the specified variable, end the loop process.
            // JA: 指定の変数に連携する武器データが存在しない場合は、ループ処理を終了する
            if ( !IsDefined( self.optionsState[optName1].weaponData ) ) { break; }
            
            // EN: If the fired weapon and the weapon linked to the specified variable do not match, restart the process.
            // JA: 発射された武器と、指定の変数に連携する武器が一致しない場合は、処理をやり直す
            if ( GetCompleteWeaponName( self GetCurrentWeapon( ) ) != self.optionsState[optName1].weaponData ) { continue; }
        }

        // EN : Obtain trace results for a specified number of distances in the front direction
        // JA : 正面方向へ 指定した数値分先 の距離のトレース結果を取得する
        l_EndLocation = self GetPlayerForwardTrace( true , true , self.optionsState[optName1].modData["TraceLength"] );
        
        // EN: If coordinate information has been obtained
        // JA: 座標情報が取得できている場合
        if ( IsDefined( l_EndLocation["position"] ) )
        {
            // EN: If effect data exists
            // JA: エフェクトデータが存在する場合
            if ( IsDefined( self.optionsState[optName1].effectData ) )
            {
                // EN: Play the effect at the obtained coordinates
                // JA: 取得した座標にエフェクトを再生する
                PlayEffectToObject(
                    /* time */          0.01 ,
                    /* objData */       undefined,
                    /* fxName */        self.optionsState[optName1].effectData ,
                    /* tagName */       undefined ,
                    /* loopFx */        undefined ,
                    /* locationBase */  l_EndLocation["position"] ,
                    /* locationFix */   undefined ,
                    /* angleType */     undefined ,
                    /* angleRange */    undefined ,
                    /* stopFx */        undefined
                    );
            }

            if ( IsDefined( notice ) )
            {
                // EN: Display the text "[Notification] Request to specified coordinates: function name" in the center of the screen.
                // JA: 画面中央に「[通知] 指定座標に要請 : 機能名」という文章を表示する
                self ShowCenterMessage( self.curLang , "Notice" , "RequestLocation" , optName1 , undefined , undefined );
            }

            // EN: Execute the specified function in a subthread (with coordinate arguments)
            // JA: 指定した関数をサブスレッドで実行する（座標引数付き）
            self thread [[ optFunc ]]( l_EndLocation["position"] );
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Set physical strength to receive damage
// JA : ダメージを受け取る体力設定を行う
//++++++++++++++++++++++++++++++
CreateDamagingSystem( healthMin , healthMax , damagedFx , breakedFx , damagedSe , breakedSe , endDelete , optName , ownerUser )
{
    // EN: If maximum health is not specified, do not proceed further.
    // JA: 最大体力が指定されていない場合は、この先の処理を行わない
    if ( !isDefined( healthMax ) ) { return; }


    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    
    // EN: Set the owner of this object if specified
    // JA: このオブジェクトの所有者が指定されている場合は設定する
    if ( isDefined( ownerUser ) )
    {
        self.owner          = ownerUser;
        self.team           = ownerUser.team;
        self.pers["team"]   = ownerUser.team;
    }


    // EN : allow yourself to take damage
    // JA : 自分自身がダメージを受けられるようにする
    self SetCanDamage( true );
    
    // EN: If minimum health is specified
    // JA: 最低体力が指定されている場合
    if ( isDefined( healthMin ) )
    {
        // EN: Randomly determine maximum health
        // JA: 最大体力をランダムで決める
        self.health = RandomIntRange( healthMin , healthMax );
    }
    // EN: If minimum health is not specified
    // JA: 最低体力が指定されていない場合
    else
    {
        // EN: Set maximum health
        // JA: 最大体力を設定
        self.health = healthMax;
    }
    self.maxhealth = self.health;

    // EN: Infinite loop until stamina runs out
    // JA: 体力が無くなるまで無限ループ
    while ( 0 < self.health )
    {
        // EN: wait to take damage
        // JA: ダメージを受けるのを待機する
        self WaitTill( "damage" , damagedSize , playerInfo , var_2 , damagedPoint , damageType , var_5 , var_6 , var_7 , var_8 , weaponName , var_10 , var_11 , var_12 , killstreakInfo );

        // EN: Reduces health by the amount of damage received
        // JA: 受けたダメージ分体力を減らす
        self.health = self.health - damagedSize;

        // EN: If you still have the energy
        // JA: 体力がまだある場合
        if ( 0 < self.health )
        {
            // EN: If a damage effect is specified
            // JA: ダメージエフェクトが指定されている場合
            if ( isDefined( damagedFx ) )
            {
                // EN: Generates an effect at the damaged coordinates
                // JA: ダメージを受けた座標にエフェクトを発生させる
                PlayEffectToObject(
                    /* time */          0.01 ,
                    /* objData */       undefined,
                    /* fxName */        damagedFx ,
                    /* tagName */       undefined ,
                    /* loopFx */        undefined ,
                    /* locationBase */  damagedPoint ,
                    /* locationFix */   undefined ,
                    /* angleType */     undefined ,
                    /* angleRange */    undefined ,
                    /* stopFx */        undefined
                    );
            }
            // EN: If damage sound effects are specified
            // JA: ダメージサウンドエフェクトが指定されている場合
            if ( isDefined( damagedSe ) )
            {
                // EN: Regenerate SE at damaged coordinates
                // JA: ダメージを受けた座標にSEを再生させる
                PlaySoundAtPos( damagedPoint , damagedSe );
            }
        }
        // EN: If you run out of energy
        // JA: 体力が無くなった場合
        else
        {
            // EN: If a destruction effect is specified
            // JA: 破壊エフェクトが指定されている場合
            if ( isDefined( breakedFx ) )
            {
                // EN: Play a destruction effect at your center point
                // JA: 自分の中心点に破壊エフェクトを再生する
                PlayEffectToObject(
                    /* time */          0.01 ,
                    /* objData */       undefined,
                    /* fxName */        breakedFx ,
                    /* tagName */       undefined ,
                    /* loopFx */        undefined ,
                    /* locationBase */  self.origin ,
                    /* locationFix */   undefined ,
                    /* angleType */     undefined ,
                    /* angleRange */    undefined ,
                    /* stopFx */        undefined
                    );
            }
            // EN: If a destruction sound effect is specified
            // JA: 破壊サウンドエフェクトが指定されている場合
            if ( isDefined( breakedSe ) )
            {
                // EN: Regenerate SE at damaged coordinates
                // JA: ダメージを受けた座標にSEを再生させる
                PlaySoundAtPos( damagedPoint , breakedSe );
            }
            
            // EN: break the loop
            // JA: ループを中断する
            break;
        }
    }

    // EN: When deleting a model when it runs out of health
    // JA: 体力が無くなった時にモデルを削除する場合
    if ( IsDefined( endDelete ) )
    {
        WaitFrame( );

        // EN: delete yourself
        // JA: 自分自身を削除する
        self Delete( );
    }
    // EN: If the model is not deleted when it runs out of health
    // JA: 体力が無くなった時にモデルを削除しない場合
    else
    {
        // EN: Notify termination trigger due to destruction of specified option name
        // JA: 指定のオプション名の破壊による終了トリガーを通知する
        self Notify( "breaked_" + optName );
        if ( IsDefined( ownerUser ) )
        {
            ownerUser Notify( "breaked_" + optName );
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Creates the specified object at a specified multiple distance from your eye.
// JA : 自分の眼先から指定した倍数先の距離に、指定したオブジェクトを作成
//++++++++++++++++++++++++++++++
CreateEntityObject( notice , spawnLocation , spawnLength , objectName , objectCollide , angleSync , objectAngle , healthMin , healthMax , damagedFx , breakedFx , damagedSe , breakedSe , endDelete , optName )
{
    // EN: If the object data to be created does not exist, generate an error and do not process.
    // JA: 作成するオブジェクトデータが存在無い場合は、エラーを出して処理しない
    if ( !isDefined( objectName ) )
    {
        return;
    }

    l_ObjectLocation = [];
        // EN : Get the creation coordinates of the object (Place it in front of you, a specified number of minutes away from you)
        // JA : 生成先距離の指定がある場合
    if ( IsDefined( spawnLength ) )
    {
        // EN : Get the creation coordinates of the object (Place it in front of you, a specified number of minutes away from you)
        // JA : オブジェクトの生成座標を取得（正面方向に 指定数分 倍先の距離、自分の目の前にする）
        l_ObjectLocation = self GetPlayerForwardTrace( undefined , true , spawnLength , ( 0 , 0 , -10 ) );
    }

    // EN: If coordinates are specified, give priority to that information.
    // JA: 座標指定がある場合はその情報を優先する
    if ( isDefined( spawnLocation ) )
    {
        l_ObjectLocation = spawnLocation;
    }

    // EN : Create an empty 3D model at the generation position
    // JA : 生成位置に空の3Dモデルを作成する
    l_NewObject = Spawn( "script_model" , l_ObjectLocation );
    // EN : Set model data
    // JA : モデルデータを設定する
    l_NewObject SetModel( objectName );

    // EN: When object collision detection is required
    // JA: オブジェクトの衝突判定が必要な場合
    if ( isDefined( objectCollide ) )
    {
        // EN: Get the entity data of the generated object
        // JA: 生成するオブジェクトのエンティティデータを取得する
        l_EntityData = GetEnt( objectName, "targetname" );
        // EN: Set collision detection for generated objects
        // JA: 生成したオブジェクトに衝突判定を設定する
        l_NewObject CloneBrushModelToScriptModel( l_EntityData );
    }
    
    l_ObjectAngle = [];
    // EN: If "X-axis rotation setting" is enabled
    // JA: "X軸回転設定" が 有効 になっている場合
    if ( isDefined( angleSync ) )
    {
        l_ObjectAngle = self GetPlayerAngles( );
        if ( isDefined( l_ObjectAngle ) ) { l_ObjectAngle = ( l_ObjectAngle[0] , l_ObjectAngle[1] , 0 ); }
    }
    // EN: If "X-axis rotation setting" is disabled
    // JA: "X軸回転設定" が 無効 になっている場合
    else
    {
        l_ObjectAngle = self GetPlayerAngles( );
        if ( isDefined( l_ObjectAngle ) ) { l_ObjectAngle = ( 0 , l_ObjectAngle[1] , 0 ); }
    }
    
    // EN: If there is an angle specification, that information takes precedence.
    // JA: 角度指定がある場合はその情報を優先する
    if ( isDefined( objectAngle ) )
    {
        l_ObjectAngle = objectAngle;
    }
    
    // EN: Set the angle of the generated object
    // JA: 生成したオブジェクトの角度を設定する
    l_NewObject.angles = l_ObjectAngle;

    // EN: If maximum health is specified
    // JA: 最大体力が指定されている場合
    if ( isDefined( healthMax ) )
    {
        l_NewObject thread CreateDamagingSystem( healthMin , healthMax , damagedFx , breakedFx , damagedSe , breakedSe , endDelete , optName , self );
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( isDefined( notice ) )
    {
        // EN: Display the text "[Notification] Create Object: object name" in the center of the screen
        // JA: 画面中央に「[通知] オブジェクトを作成 : オブジェクト名」という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , objectName , undefined );
    }

    return l_NewObject;
}



//++++++++++++++++++++++++++++++
// EN : give specified weapon
// JA : 指定した武器を与える
//++++++++++++++++++++++++++++++
ProvideWeapon( weaponID , inProjectile , onlyGroup , attachmentID , camoID , akimbo , changeHand , notice )
{ 
    l_WeaponArray = [];
    l_CamoArray = [];
    l_CamoID = camoID;

    // EN : If the weapon type is specified as "random"
    // JA : 武器種類が「ランダム」と指定されている場合
    if ( weaponID == "Random" )
    {
        // EN : Loop for the number of weapon type groups
        // JA : 武器種類のグループ数分ループ
        for ( weaponType = 0; weaponType <= 7; weaponType++ )
        {
            // EN : Assemble the weapon type string “weapon_??”
            // JA : 「weapon_??」という武器種類の文字列を組み立てる
            l_WeaponType = "weapon_";
            switch ( weaponType )
            {
                case 0: l_WeaponType += "assault"; break;
                case 1: l_WeaponType += "smg"; break;
                case 2: l_WeaponType += "lmg"; break;
                case 3: l_WeaponType += "sniper"; break;
                case 4: l_WeaponType += "dmr"; break;
                case 5: l_WeaponType += "shotgun"; break;
                case 6: l_WeaponType += "pistol"; break;
                case 7: l_WeaponType += "projectile"; break;
            }
            // EN : Add the assembled weapon type string to the array
            // JA : 組み立てた武器種類の文字列を配列に追加する
            l_WeaponArray = scripts\engine\utility::Array_Add( l_WeaponArray , l_WeaponType );
        }

        // EN : Exclude explosives from array if random weapons do not include explosives
        // JA : ランダム武器に爆発物を含めない場合は、配列から爆発物を除外する
        if ( !IsDefined( inProjectile ) )
        {
            l_WeaponArray = scripts\engine\utility::Array_Remove( l_WeaponArray , "weapon_projectile" );
        }

        // EN : If a single weapon group is specified, recreate the weapon group array to only have one.
        // JA : 単一の武器グループの指定がある場合は、武器グループ配列を作り直して1個だけにする
        if ( IsDefined( onlyGroup ) )
        {
            l_WeaponArray = undefined;
            l_WeaponArray = [];
            l_WeaponArray[0] = onlyGroup;
        }
    }
    
    // EN : If the camouflage type is specified
    // JA : 迷彩種類が指定されている場合
    if ( IsDefined( camoID ) )
    {
        // EN : If the camouflage type is specified as "random"
        // JA : 迷彩種類が「ランダム」と指定されている場合
        if ( camoID == "Random" )
        {
            // EN : Loop for the number of camouflage types
            // JA : 迷彩種類の個数分ループ
            for ( camoSize = 0; camoSize <= 11; camoSize++ )
            {
                // EN : Loop for the number of camouflage type groups
                // JA : 迷彩種類のグループ数分ループ
                for ( camoType = 0; camoType <= 9; camoType++ )
                {
                    l_CamoType = "camo_";

                    // EN : If the current loop count is less than 10, fill in 0 with the prefix
                    // JA : 今のループ回数が10回未満であれば、プレフィックスで0を補完する
                    if ( camoSize < 10 ) { l_CamoType += "0"; }
                    l_CamoType += "" + (camoSize + 1);

                    // EN : Assemble a camouflage type string like "camo_01a"
                    // JA : 「camo_01a」のような迷彩種類の文字列を組み立てる
                    switch ( camoType )
                    {
                        case 0: l_CamoType += "a"; break;
                        case 1: l_CamoType += "b"; break;
                        case 2: l_CamoType += "c"; break;
                        case 3: l_CamoType += "d"; break;
                        case 4: l_CamoType += "e"; break;
                        case 5: l_CamoType += "f"; break;
                        case 6: l_CamoType += "g"; break;
                        case 7: l_CamoType += "h"; break;
                        case 8: l_CamoType += "i"; break;
                        case 9: l_CamoType += "j"; break;
                    }
                    // EN : Add the assembled camouflage type string to the array
                    // JA : 組み立てた迷彩種類の文字列を配列に追加する
                    l_CamoArray = scripts\engine\utility::Array_Add( l_CamoArray , l_CamoType );
                }
            }
        }
    }

    while ( true )
    {
        // EN : If the camouflage type is specified
        // JA : 迷彩種類が指定されている場合
        if ( IsDefined( camoID ) )
        {
            // EN : If the camouflage type is specified as "random"
            // JA : 迷彩種類が「ランダム」と指定されている場合
            if ( camoID == "Random" )
            {
                // EN : Pick a camouflage type randomly from the array
                // JA : 配列内からランダムに迷彩種類を取り出す
                l_CamoID = scripts\engine\utility::Random( l_CamoArray );
            }
        }
        // EN : If the camouflage type is not specified
        // JA : 迷彩種類が指定されていない場合
        else
        {
            // EN : Leave camouflage type unspecified
            // JA : 迷彩種類を未指定とする
            l_CamoID = undefined;
        }

        // EN : If the weapon type is not specified as "random"
        // JA : 武器種類が「ランダム」と指定されていない場合
        if ( weaponID != "Random" )
        {
            // EN : If attachment ID is specified
            // JA : アタッチメントIDが指定されている場合
            if ( IsDefined( attachmentID ) )
            {
                // EN : If the attachment ID is not specified as "random"
                // JA : アタッチメントIDが "ランダム" と指定されていない場合
                if ( attachmentID != "Random" )
                {
                    // EN : Add attachment ID to weapon ID
                    // JA : 武器IDにアタッチメントIDを追加する
                    weaponID += attachmentID;
                }
            }

            // EN : Generate weapon data from the specified weapon type and camouflage type.
            // JA : 指定の武器種類、迷彩種類から、武器データを生成する
            l_WeaponBuild = scripts\mp\class::BuildWeapon( scripts\mp\utility\weapon::GetWeaponRootName( weaponID ) , undefined , l_CamoID , undefined , undefined , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            
            // EN : Get random attachment
            // JA : ランダムアタッチメント取得
            l_WeaponBuild = ProvideRandomAttachment( l_WeaponBuild , attachmentID );
            
            // EN : Get the full weapon name from the generated weapon data
            // JA : 生成された武器データから、完全な武器名を取得する
            l_WeaponName = GetCompleteWeaponName( l_WeaponBuild );
            // EN : Gives the specified weapon and returns the result whether it was successful or not.
            // JA : 指定した武器を与えて、成功したかどうかの結果を返す
            l_WeaponData = self ConfigureWeapon( l_WeaponName , undefined , changeHand , undefined , akimbo , notice );
            return l_WeaponData;
        }
        // EN : If the weapon type is specified as "random"
        // JA : 武器種類が「ランダム」と指定されている場合
        else
        {
            // EN : Pick a weapon type randomly from the array
            // JA : 配列内からランダムに武器種類を取り出す
            l_WeaponGroupID = scripts\engine\utility::Random( l_WeaponArray );
            // EN : Randomly select a weapon from the weapon types
            // JA : 武器種類からランダムに武器を選ぶ
            l_WeaponID = scripts\mp\utility\weapon::GetRandomWeaponFromGroup( l_WeaponGroupID );
            // EN : Generate weapon data from the specified weapon type and camouflage type.
            // JA : 指定の武器種類、迷彩種類から、武器データを生成する
            l_WeaponBuild = scripts\mp\class::BuildWeapon( l_WeaponID , undefined , l_CamoID , undefined , undefined , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            
            // EN : If generated weapon data exists
            // JA : 生成された武器データが存在する場合
            if ( IsDefined( l_WeaponBuild ) )
            {
                // EN : Get random attachment
                // JA : ランダムアタッチメント取得
                l_WeaponBuild = ProvideRandomAttachment( l_WeaponBuild , attachmentID );

                // EN : Get the full weapon name from the generated weapon data
                // JA : 生成された武器データから、完全な武器名を取得する
                l_WeaponName = GetCompleteWeaponName( l_WeaponBuild );
                // EN : Gives the specified weapon and returns the result whether it was successful or not.
                // JA : 指定した武器を与えて、成功したかどうかの結果を返す
                l_Weapon = self ConfigureWeapon( l_WeaponName , undefined , changeHand , true , akimbo , notice );
                if ( l_Weapon != undefined )
                {
                    l_WeaponData = l_Weapon;
                    return l_WeaponData;
                }
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Get random attachment
// JA : ランダムアタッチメント取得
//++++++++++++++++++++++++++++++
ProvideRandomAttachment( weaponBuild , attachmentID )
{
    l_WeaponBuild = weaponBuild;

    // EN : If attachment ID is specified
    // JA : アタッチメントIDが指定されている場合
    if ( IsDefined( attachmentID ) )
    {
        // EN : If the attachment ID is specified as "random"
        // JA : アタッチメントIDが "ランダム" と指定されている場合
        if ( attachmentID == "Random" )
        {
            // EN : Randomly determine the number of attachments
            // JA : アタッチメントの個数をランダムに決める
            l_AttachmentMax = RandomIntRange( 1 , 8 );
            // EN : Loop for the number of attachments
            // JA : アタッチメントの個数分ループ
            for ( attachCount = 0; attachCount < l_AttachmentMax; attachCount++ )
            {
                // EN : Get attachment types that can be set in weapon data
                // JA : 武器データに設定可能なアタッチメント種類を取得する
                l_AttachmentData = scripts\mp\weapons::GetRandomGraveRobberAttachment( l_WeaponBuild );
                // EN : If attachment data exists
                // JA : アタッチメントデータが存在する場合
                if ( IsDefined( l_AttachmentData ) )
                {
                    // EN : Add attachment to weapon data
                    // JA : 武器データにアタッチメントを追加する
                    l_WeaponFullData = scripts\mp\weapons::AddAttachmentToWeapon( l_WeaponBuild , l_AttachmentData );
                    // EN : Update weapon data if weapon data integration is successful
                    // JA : 武器データの統合が成功している場合、武器データを更新する
                    if ( IsDefined( l_WeaponFullData ) )
                    {
                        l_WeaponBuild = l_WeaponFullData;
                    }
                }
            }
        }
    }

    return l_WeaponBuild;
}



//++++++++++++++++++++++++++++++
// EN : Give or take away the specified weapon
// JA : 指定した武器を与えるか、もしくは取り上げる
//++++++++++++++++++++++++++++++
ConfigureWeapon( weaponData , takeHand , changeHand , randomChoose , akimbo , notice )
{
    l_WeaponData = weaponData;
    l_TextID = "FailedBuildWeapon";

    // EN : If you already have the specified weapon
    // JA : 既に指定された武器を持っている場合
    if ( self HasWeapon( weaponData ) )
    {
        // EN : When picking up a weapon
        // JA : 武器を取り上げる場合
        if ( IsDefined( takeHand ) )
        {
            // EN : Pick up the specified weapon and initialize the weapon data
            // JA : 指定された武器を取り上げて、武器データを初期化する
            self scripts\cp_mp\utility\inventory_utility::_TakeWeapon( weaponData );
            l_WeaponData = undefined;
            
            // EN : Set text id
            // JA : テキストIDを設定
            l_TextID = "TakedWeapon";

            // EN : Waits a millisecond to confirm that the weapon is no longer in your possession.
            // JA : 武器が手元から無くなったことを確認するため、ミリ秒待機する
            WaitFrame( );
        }
        // EN : When giving a weapon
        // JA : 武器を与える場合
        else
        {
            // EN : If this specified weapon is a randomly generated weapon
            // JA : この指定の武器が、ランダムで生成された武器の場合
            if ( IsDefined( randomChoose ) )
            {
                // EN : Set the result of random generation failure because you already have the same weapon
                // JA : 既に同じ武器を持っているため、ランダム生成に失敗した結果を設定する
                l_WeaponData = undefined;
            }
        }
    }
    // EN : If you do not have the specified weapon
    // JA : 指定された武器を持っていない場合
    else
    {
        // EN : When picking up a weapon
        // JA : 武器を取り上げる場合
        if ( IsDefined( takeHand ) )
        {
            // EN : Set the result of failing to pick up a weapon because you no longer have one
            // JA : 既に武器を持っていないため、武器の取り上げに失敗した結果を設定する
            l_WeaponData = undefined;
        }
        // EN : When giving a weapon
        // JA : 武器を与える場合
        else
        {
            // EN : give specified weapon
            // JA : 指定した武器を与える
            self scripts\cp_mp\utility\inventory_utility::_GiveWeapon( weaponData , undefined , akimbo , 1 );
            self SetSpawnWeapon( weaponData , 1 );
            
            // EN: Gives maximum ammo for that weapon
            // JA: その武器の最大弾薬数を与える
            self GiveMaxAmmo( weaponData );
            
            // EN : Set text id
            // JA : テキストIDを設定
            l_TextID = "GetWeapon";
        }
    }
    
    // EN : When switching weapons
    // JA : 武器を切り替える場合
	if ( IsDefined( changeHand ) )
    {
        // EN : If the specified weapon exists
        // JA : 指定された武器が存在する場合
        if ( IsDefined( l_WeaponData ) )
        {
            // EN : switch weapons
            // JA : 武器を切り替える
            self scripts\cp_mp\utility\inventory_utility::_SwitchToWeapon( weaponData );
        }
        // EN : If the specified weapon does not exist
        // JA : 指定された武器が存在しない場合
        else
        {
            // EN : If you don't have any weapons in hand
            // JA : 今手に持っている武器が何もない場合
            if ( IsNullWeapon( self GetCurrentWeapon( ) ) )
            {
                // EN : If you have a main weapon, switch to that weapon.
                // JA : メイン武器を所持していれば、その武器に切り替える
                if ( IsDefined( self.primaryweapon ) )
                {
                    self scripts\cp_mp\utility\inventory_utility::_SwitchToWeapon( self.primaryweapon );
                }
            }
        }
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( IsDefined( notice ) )
    {
        // EN: Display the text "[Notification] Weapon operation status: Weapon ID" in the center of the screen.
        // JA: 画面中央に "[通知] 武器の操作状態 : 武器ID" という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , l_TextID , undefined , weaponData , undefined );
    }

    // EN : Return weapon processing results
    // JA : 武器の処理結果を返す
    return l_WeaponData;
}



//++++++++++++++++++++++++++++++
// EN : Get the coordinates that are multiples ahead of the specified coordinates
// JA : 指定の座標に対して、倍数分先の座標を取得する
//++++++++++++++++++++++++++++++
VectorScale( location , length )
{
    return ( location[0] * length , location[1] * length , location[2] * length );
}



//++++++++++++++++++++++++++++++
// EN : Generates a grenade of the specified type
// JA : 指定した種類のグレネードを生成する
//++++++++++++++++++++++++++++++
CreateMagicGrenade( owner , weaponID , pStart , pEnd , time )
{
    // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate
    // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす
    l_Grenade = MagicGrenadeManual( weaponID , pStart , pEnd , time );
    l_Grenade SetEntityOwner( owner );
    l_Grenade SetOtherEnt( owner );
    l_Grenade SetScriptablePartState( "launch" , "active" , 0 );
    l_Grenade SetScriptablePartState( "trail" , "active" , 0 );
    l_Grenade SetScriptablePartState( "launch" , "on" , 0 );
    l_Grenade thread OnModdedGrenadesAnimationTrigger( time );
}



//++++++++++++++++++++++++++++++
// EN : Explosion animation execution process after waiting for grenade after generation
// JA : 生成後のグレネードの待機後の爆発アニメーション実行処理
//++++++++++++++++++++++++++++++
OnModdedGrenadesAnimationTrigger( time )
{
    wait time;
    if ( IsDefined( self ) )
    self SetScriptablePartState( "effects" , "explode" , 0 );
}



//++++++++++++++++++++++++++++++
// EN : Change language
// JA : 言語を変更する
//++++++++++++++++++++++++++++++
ChangeLanguage( )
{
    // EN: Change the current language to the language selected in the mod menu
    // JA: 現在の言語を、モッドメニューで選択中の言語に変更する
    self.curLang = self.modSystem.menuOptionCurrent;
    
    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    self ModMenuTextUpdate( );
}



//++++++++++++++++++++++++++++++
// EN : Display text when an item with an unimplemented function is selected
// JA : 未実装機能の項目が選択された時に文章を表示する
//++++++++++++++++++++++++++++++
UnimplementedFunction( )
{
    self ShowCenterMessage( self.curLang , "Notice" , "UnimplementedFunction" , undefined , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Empty function that displays nothing
// JA : 何も表示しない空の関数
//++++++++++++++++++++++++++++++
EmptyFunction( )
{

}



//++++++++++++++++++++++++++++++
// EN : Change mod menu opening/closing animation
// JA : モッドメニューの開閉アニメーションを変更する
//++++++++++++++++++++++++++++++
OnfModMenuOpenCloseAnimation( )
{
    // EN : Create or destroy a "ChangeOpenCloseAnimation" variable
    // JA : "ChangeOpenCloseAnimation" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "ChangeOpenCloseAnimation" ,
        /* optFunc */       ::EmptyFunction ,
        /* message */       undefined ,
        /* optArg1 */       undefined ,
        /* optArg2 */       undefined ,
        /* optArg3 */       undefined ,
        /* optArg4 */       undefined ,
        /* optArg5 */       undefined ,
        /* optArg6 */       undefined ,
        /* optArg7 */       undefined ,
        /* weaponID */      undefined ,
        /* inProjectile */  undefined ,
        /* onlyGroup */     undefined ,
        /* attachmentID */  undefined ,
        /* camoID */        undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the background animation of the mod menu
// JA : モッドメニューの背景アニメーションを変更する
//++++++++++++++++++++++++++++++
OnfModMenuBackgroundAnimation( )
{
    // EN : Create or destroy a "SwitchBackgroundAnimation" variable
    // JA : "SwitchBackgroundAnimation" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "SwitchBackgroundAnimation" ,
        /* optFunc */       ::EmptyFunction ,
        /* message */       undefined ,
        /* optArg1 */       undefined ,
        /* optArg2 */       undefined ,
        /* optArg3 */       undefined ,
        /* optArg4 */       undefined ,
        /* optArg5 */       undefined ,
        /* optArg6 */       undefined ,
        /* optArg7 */       undefined ,
        /* weaponID */      undefined ,
        /* inProjectile */  undefined ,
        /* onlyGroup */     undefined ,
        /* attachmentID */  undefined ,
        /* camoID */        undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the number of text lines in the mod menu
// JA : モッドメニューのテキスト行数を変更する
//++++++++++++++++++++++++++++++
OnfModMenuTextNumberLine( )
{
    // EN : Create or destroy a "SwitchTextNumberLine" variable
    // JA : "SwitchTextNumberLine" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "SwitchTextNumberLine" ,
        /* optFunc */       ::EmptyFunction ,
        /* message */       undefined ,
        /* optArg1 */       undefined ,
        /* optArg2 */       undefined ,
        /* optArg3 */       undefined ,
        /* optArg4 */       undefined ,
        /* optArg5 */       undefined ,
        /* optArg6 */       undefined ,
        /* optArg7 */       undefined ,
        /* weaponID */      undefined ,
        /* inProjectile */  undefined ,
        /* onlyGroup */     undefined ,
        /* attachmentID */  undefined ,
        /* camoID */        undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "ForceRespawnPoint"
// JA : 機能 "ForceRespawnPoint" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfForceRespawnPoint( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "ForceRespawnPoint" variable
    // JA : "ForceRespawnPoint" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "ForceRespawnPoint" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "ForceRespawnPoint" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateForceRespawnPoint ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "ForceRespawnPoint" at the coordinates of the launch destination.
// JA : 機能 "ForceRespawnPoint" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateForceRespawnPoint( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    l_OptName = "ForceRespawnPoint";
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );
    WaitFrame( );

    // EN: Create a flag object
    // JA: 旗オブジェクトを作成する
    l_Object = self CreateEntityObject(
        /* notice */        undefined ,
        /* spawnLocation */ location ,
        /* spawnLength */   undefined ,
        /* objectName */    "military_dom_flag_neutral" ,
        /* objectCollide */ true ,
        /* angleSync */     undefined ,
        /* objectAngle */   undefined ,
        /* healthMin */     undefined ,
        /* healthMax */     undefined ,
        /* damagedFx */     undefined ,
        /* breakedFx */     undefined ,
        /* damagedSe */     undefined ,
        /* breakedSe */     undefined ,
        /* endDelete */     undefined ,
        /* optName */       undefined
        );
    
    // EN: If the creation of the flag object was successful
    // JA: 旗オブジェクトの作成が成功していた場合
    if ( IsDefined( l_Object ) )
    {
        // EN: remember flag object
        // JA: 旗オブジェクトを記憶する
        level.lobbyState["ForceRespawnPoint" + "_Flag"] = l_Object;
        // EN: Start the animation process for the flag object
        // JA: 旗オブジェクトのアニメーション処理を開始する
        l_Object thread AnimatedForceRespawnPoint( l_OptName );
    }
}



//++++++++++++++++++++++++++++++
// EN : Animation processing of the housing of the function "ForceRespawnPoint"
// JA : 機能 "ForceRespawnPoint" の筐体のアニメーション処理
//++++++++++++++++++++++++++++++
AnimatedForceRespawnPoint( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "ForceRespawnPoint" is destroyed, terminate processing in this function
    // JA : 機能 "ForceRespawnPoint" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    // EN : Create various objects
    // JA : 各種オブジェクトを作成する
    l_Rotate        = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ self.origin + ( 0 , 0 , 150 ) ,     /* spawnLength */   undefined , /* objectName */ "tag_origin" );
    l_Decoration    = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ l_Rotate.origin + ( 100 , 0 , 0 ) , /* spawnLength */   undefined , /* objectName */ "veh8_mil_air_mquebec8_small" , /* objectCollide */ undefined , /* angleSync */ undefined , /* objectAngle */ ( 0 , 90 , 0 ) );
    //l_Move          = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ self.origin ,                       /* spawnLength */   undefined , /* objectName */ "tag_origin" );
    
    // EN : Link (synchronize) decorative objects to the central rotation object
    // JA : 装飾オブジェクトを中央の回転用オブジェクトにリンク（同期）する
    l_Decoration LinkTo( l_Rotate );

    // EN : Play effects on various objects in subthreads
    // JA : 各種オブジェクトにエフェクトをサブスレッドで再生させる
    //l_Move thread PlayEffectToObject(       /* time */ 0.25 , /* objData */ l_Move ,        /* fxName */ "equipment_sparks" ,       /* tagName */ undefined , /* loopFx */ true );
    //l_Decoration thread PlayEffectToObject( /* time */ 0.25 , /* objData */ l_Decoration ,  /* fxName */ "juggernaut_crate_vfx" ,   /* tagName */ undefined , /* loopFx */ true );
    l_Decoration thread PlayEffectToObject( /* time */ 0.25 , /* objData */ l_Decoration ,  /* fxName */ "equipment_sparks" ,   /* tagName */ undefined , /* loopFx */ true );
    
    // EN : Make the function termination process of the function "ForceRespawnPoint" wait in a subthread
    // JA : 機能 "ForceRespawnPoint" の機能終了処理をサブスレッドで待機させる
    self thread OnEndForceRespawnPoint( optName , l_Rotate , l_Decoration );

    // EN : Loop processing while function "ForceRespawnPoint" is enabled
    // JA : 機能 "ForceRespawnPoint" が有効の間はループ処理を行う
    while ( IsDefined( level.lobbyState["ForceRespawnPoint"] ) )
    {
        //l_Move MoveTo( self.origin + ( 0 , 0 , 100 ) , 2 );
        l_Rotate RotateYaw( 360 , 3 );
        wait 3;
        //l_Move MoveTo( self.origin , 2 );
        //l_Rotate RotateYaw( 360 , 3 );
        //wait 3;
    }
}



//++++++++++++++++++++++++++++++
// EN : Function end processing for function "ForceRespawnPoint"
// JA : 機能 "ForceRespawnPoint" の機能終了処理
//++++++++++++++++++++++++++++++
OnEndForceRespawnPoint( optName , obj1 , obj2 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : Wait until function "ForceRespawnPoint" finishes
    // JA : 機能 "ForceRespawnPoint" が終了されるまで待機する
    level WaitTill( "end_lobby_" + optName );

    obj1 Delete( );
    obj2 Delete( );
    self Delete( );
    level.lobbyState["ForceRespawnPoint" + "_Flag"] = undefined;
}



//++++++++++++++++++++++++++++++
// EN : Add bot
// JA : bot を追加する
//++++++++++++++++++++++++++++++
ExecAddBot( )
{

    level.bots_ignore_team_balance = 1;
    setdvar( "MSLNRKRRKK", "1" );
    //level thread [[ level.bot_funcs["bots_spawn"] ]]( 1, "autoassign" );
    level thread scripts\mp\bots\bots::Spawn_Bots( 1 , "autoassign" , undefined , undefined , undefined , "recruit" );
    wait 0.5;
    //level thread scripts\mp\bots\bots::Spawn_Bots( 1 , "allies" , undefined , undefined , "spawned_allies" , "recruit" );
    //wait 0.5;
    //level thread scripts\mp\bots\bots::Spawn_Bots( 1 , "axis" , undefined , undefined , "spawned_enemies" , "recruit" );
    //wait 0.5;
    setmatchdata( "hasBots", 1 );
    
    //level thread scripts\mp\bots\bots::Spawn_Bots( 1 , undefined , undefined , undefined , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Kick bot
// JA : bot をキックする
//++++++++++++++++++++++++++++++
ExecKickBot( )
{
    // EN: Get information on all participating players
    // JA: 参加中の全プレイヤー情報を取得
    foreach( player in level.players )
    {
        if ( IsBot( player ) || isai( player ) )
        {
            Kick( player GetEntityNumber( ) );
            break;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Invisible"
// JA : 機能 "Invisible" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfInvisible( )
{
    // EN : Execute ExecInvisible( ) or exit depending on the existence state of the "Invisible" variable
    // JA : "Invisible" 変数の存在状態に合わせて、 ExecInvisible( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "Invisible" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "Invisible" ,
        /* optArg2 */   /* optFunc */   ::ExecInvisible ,
        /* optArg3 */   /* loopTime */  1 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Invisible"
// JA : 機能 "Invisible" の実行中の処理
//++++++++++++++++++++++++++++++
ExecInvisible( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: hide one's appearance
        // JA: 姿を非表示にする
        self PlayerHide( );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        // EN: show appearance
        // JA: 姿を表示する
        self PlayerShow( );
    }
}



//  //++++++++++++++++++++++++++++++
//  // EN : Switch the enable/disable state of the function "NoRecoil"
//  // JA : 機能 "NoRecoil" の有効/無効を切り替える
//  //++++++++++++++++++++++++++++++
//  OnfNoRecoil( )
//  {
//      // EN : Execute ExecNoRecoil( ) or exit depending on the existence state of the "NoRecoil" variable
//      // JA : "NoRecoil" 変数の存在状態に合わせて、 ExecNoRecoil( )関数 を実行するか終了する
//      self SwitchOnfSelfFunction(
//          /* optName */                   "NoRecoil" ,
//          /* optFunc */                   ::ExecLoopFunction ,
//          /* message */                   undefined ,
//          /* optArg1 */   /* optName */   "NoRecoil" ,
//          /* optArg2 */   /* optFunc */   ::ExecNoRecoil ,
//          /* optArg3 */   /* loopTime */  1 ,
//          /* optArg4 */                   undefined ,
//          /* optArg5 */                   undefined ,
//          /* optArg6 */                   undefined ,
//          /* optArg7 */                   undefined ,
//          /* weaponID */                  undefined ,
//          /* inProjectile */              undefined ,
//          /* onlyGroup */                 undefined ,
//          /* attachmentID */              undefined ,
//          /* camoID */                    undefined 
//          );
//  }
//  
//  
//  
//  //++++++++++++++++++++++++++++++
//  // EN : Processing during execution of the function "NoRecoil"
//  // JA : 機能 "NoRecoil" の実行中の処理
//  //++++++++++++++++++++++++++++++
//  ExecNoRecoil( optName , procStage )
//  {
//      // EN: Initialization process
//      // JA: 初期化処理
//      if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
//      {
//          self.optionsState[optName + "KickScale"] = self GetViewKickScale( );
//      }
//      // EN: Running process
//      // JA: 実行中処理
//      else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
//      {
//          // EN: Eliminate recoil when firing a gun
//          // JA: 銃発砲時の反動を無くす
//          self Player_RecoilScaleOn( 0 );
//          self SetViewKickScale( 0 );
//      }
//      // EN: End processing
//      // JA: 終了処理
//      else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
//      {
//          // EN: Enable recoil when firing a gun
//          // JA: 銃発砲時の反動を有効にする
//          self Player_RecoilScaleOn( 100 );
//          self SetViewKickScale( self.optionsState[optName + "KickScale"] );
//  
//          self.optionsState[optName + "KickScale"] = undefined;
//      }
//  }



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "ThirdPerson"
// JA : 機能 "ThirdPerson" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfThirdPerson( )
{
    // EN : Execute ExecThirdPerson( ) or exit depending on the existence state of the "ThirdPerson" variable
    // JA : "ThirdPerson" 変数の存在状態に合わせて、 ExecThirdPerson( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "ThirdPerson" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "ThirdPerson" ,
        /* optArg2 */   /* optFunc */   ::ExecThirdPerson ,
        /* optArg3 */   /* loopTime */  1 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "ThirdPerson"
// JA : 機能 "ThirdPerson" の実行中の処理
//++++++++++++++++++++++++++++++
ExecThirdPerson( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {

    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        self SetCameraThirdPerson( true );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        self SetCameraThirdPerson( false );
    }
}



//++++++++++++++++++++++++++++++
// EN : Commit suicide
// JA : 自殺する
//++++++++++++++++++++++++++++++
ExecSuicide( )
{
    // EN: commit suicide
    // JA: 自分を自殺させる
    self Suicide( );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "SaveLoadLocation"
// JA : 機能 "SaveLoadLocation" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfSaveLoadLocation( )
{
    // EN : Execute ExecSaveLoadLocation( ) or exit depending on the existence state of the "SaveLoadLocation" variable
    // JA : "SaveLoadLocation" 変数の存在状態に合わせて、 ExecSaveLoadLocation( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "SaveLoadLocation" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "SaveLoadLocation" ,
        /* optArg2 */   /* optFunc */   ::ExecSaveLoadLocation ,
        /* optArg3 */   /* loopTime */  0.05 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "SaveLoadLocation"
// JA : 機能 "SaveLoadLocation" の実行中の処理
//++++++++++++++++++++++++++++++
ExecSaveLoadLocation( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: While the tactical throw button is pressed
        // JA: タクティカルを投げるボタンが押されている間
        if ( self GetKeycodePressed( "Tactical" , "Tactical" ) )
        {
            // EN: When the "Jump" button is pressed
            // JA: 「ジャンプ」ボタンが押されたら
            if ( self GetKeycodePressed( "Jump" , "Jump" ) )
            {
                // EN: Remember your current coordinates
                // JA: 今いる座標を記憶する
                self.optionsState[optName].modData["Location"] = self.origin;
                // EN: Display the specified text in the center of the screen
                // JA: 画面中央に指定の文章を表示する
                self ShowCenterMessage( self.curLang , "Notice" , "SaveLocation" , undefined , self.origin , undefined );
                wait 0.3;
            }
            // EN: When the "Crouch/Prone" button is pressed
            // JA: 「しゃがみ・伏せ」ボタンが押されたら
            else if ( self GetKeycodePressed( "Stance" , "Stance" ) )
            {
                // EN: If the coordinates are memorized, move to those coordinates.
                // JA: 座標が記憶されていれば、その座標に移動する
                if ( IsDefined( self.optionsState[optName].modData["Location"] ) )
                {
                    self SetOrigin( self.optionsState[optName].modData["Location"] );
                    // EN: Display the specified text in the center of the screen
                    // JA: 画面中央に指定の文章を表示する
                    self ShowCenterMessage( self.curLang , "Notice" , "LoadLocation" , undefined , self.optionsState[optName].modData["Location"] , undefined );
                    wait 0.3;
                }
            }
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
    }
}




//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "ChangeMovementSpeed"
// JA : 機能 "ChangeMovementSpeed" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfChangeMovementSpeed( )
{
    // EN : Execute ExecChangeMovementSpeed( ) or exit depending on the existence state of the "ChangeMovementSpeed" variable
    // JA : "ChangeMovementSpeed" 変数の存在状態に合わせて、 ExecChangeMovementSpeed( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "ChangeMovementSpeed" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "ChangeMovementSpeed" ,
        /* optArg2 */   /* optFunc */   ::ExecChangeMovementSpeed ,
        /* optArg3 */   /* loopTime */  1 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "ChangeMovementSpeed"
// JA : 機能 "ChangeMovementSpeed" の実行中の処理
//++++++++++++++++++++++++++++++
ExecChangeMovementSpeed( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
        // EN: Set initial movement speed to double
        // JA: 初期の移動速度を2倍に設定する
        if ( !IsDefined( self.optionsState[optName].modData["Speed"] ) ) { self.optionsState[optName].modData["Speed"] = 2; }
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: Set your movement speed to the currently set speed
        // JA: 自分の移動速度を設定中の速度にする
        self SetMoveSpeedScale( self.optionsState[optName].modData["Speed"] );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        // EN: Return your movement speed to default
        // JA: 自分の移動速度をデフォルトに戻す
        self SetMoveSpeedScale( 1 );
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the movement speed of the function "ChangeMovementSpeed" (with notification)
// JA : 機能 "ChangeMovementSpeed" の 移動速度 を変更する （通知有り）
//++++++++++++++++++++++++++++++
SwitchMovementSpeed( )
{
    self ChangeMovementSpeed( true );
}



//++++++++++++++++++++++++++++++
// EN : Change the movement speed of the function "ChangeMovementSpeed" (with or without notification specified)
// JA : 機能 "ChangeMovementSpeed" の 移動速度 を変更する  （通知の有無の指定有り）
//++++++++++++++++++++++++++++++
ChangeMovementSpeed( notice )
{
    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array     = [];
    
    l_Array[0]  = 2;
    l_Array[1]  = 3;           
    l_Array[2]  = 4;
    l_Array[3]  = 5;
    l_Array[4]  = 6;
    l_Array[5]  = 7;
    l_Array[6]  = 8;
    l_Array[7]  = 9;
    l_Array[8]  = 10;

    self ChangeSelfParameter( "ChangeMovementSpeed" , "Speed" , "Value_x" , ::OnfChangeMovementSpeed , l_Array , notice , true );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Godmode"
// JA : 機能「無敵」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfGodmode( )
{
    // EN : Execute ExecGodmode( ) or exit depending on the existence state of the "Godmode" variable
    // JA : 「Godmode」変数の存在状態に合わせて、ExecGodmode( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "Godmode" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "Godmode" ,
        /* optArg2 */   /* optFunc */   ::ExecGodmode ,
        /* optArg3 */   /* loopTime */  1 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Godmode"
// JA : 機能 "無敵" の実行中の処理
//++++++++++++++++++++++++++++++
ExecGodmode( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: If your current health is less than 10,000
        // JA: 現在の体力が 10000 を下回ったら
        if ( self.health < 10000 )
        {
            // EN: Increase health to 99999999
            // JA: 体力を 99999999 に上げる
            self.maxhealth  = 99999999;
            self.health     = 99999999;
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        // EN: return to normal strength
        // JA: 通常の体力に戻す
        self.maxhealth  = 100;
        self.health     = 100;
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "BindNoclip"
// JA : 機能 "BindNoclip" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfBindNoclip( )
{
    // EN : Execute ExecBindNoclip( ) or exit depending on the existence state of the "BindNoclip" variable
    // JA : "BindNoclip" 変数の存在状態に合わせて、 ExecBindNoclip( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "BindNoclip" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "BindNoclip" ,
        /* optArg2 */   /* optFunc */   ::ExecBindNoclip ,
        /* optArg3 */   /* loopTime */  0.05 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "BindNoclip"
// JA : 機能 "BindNoclip" の実行中の処理
//++++++++++++++++++++++++++++++
ExecBindNoclip( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: When the "Tactical Throw" button is pressed
        // JA: "タクティカル投球" ボタンが押されたら
        if ( self GetKeycodePressed( "Tactical" , "Tactical" ) )
        {
            // EN: When the "Melee Attack" button is pressed
            // JA: 「近接攻撃」ボタンが押されたら
            if ( self GetKeycodePressed( "Melee" , "Melee" ) )
            {
                // EN: If the object used for flight processing has not been created yet
                // JA: 飛行処理に使うオブジェクトがまだ生成されてない場合
                if ( !IsDefined( self.optionsState[optName + "LinkObject"] ) )
                {
                    // EN: Create a transparent object used for flight processing with your own coordinates and angle
                    // JA: 飛行処理に使う透明なオブジェクトを、自分の座標、角度で作成する
                    self.optionsState[optName + "LinkObject"]           = Spawn( "script_model" , self.origin );
			        self.optionsState[optName + "LinkObject"].angles    = self.angles;
                    
                    // EN: Link (sync) yourself to the object you created
                    // JA: 自分を作成したオブジェクトにリンク（同期）する
			        self PlayerLinkTo( self.optionsState[optName + "LinkObject"] , undefined , 0 );

                    // EN: Display the specified text in the center of the screen
                    // JA: 画面中央に指定の文章を表示する
                    self ShowCenterMessage( self.curLang , "Enabled" , "BindNoclipDiscription" , undefined , undefined , undefined );
                }
                // EN: If the object used for flight processing has already been generated
                // JA: 飛行処理に使うオブジェクトが生成済みの場合
                else
                {
                    // EN: Unlink (synchronize) yourself from the created object
                    // JA: 作成したオブジェクトから自分のリンク（同期）を解除する
			        self UnLink( );
                    
                    // EN: Delete the created object
                    // JA: 作成したオブジェクトを削除する
                    self.optionsState[optName + "LinkObject"] Delete( );
                    self.optionsState[optName + "LinkObject"] = undefined;
                    
                    // EN: Display the specified text in the center of the screen
                    // JA: 画面中央に指定の文章を表示する
                    self ShowCenterMessage( self.curLang , "Disabled" , "BindNoclipDiscription" , undefined , undefined , undefined );
                }

                wait 0.3;
            }
            // EN: While the "Melee Attack" button is not pressed
            // JA: 「近接攻撃」ボタンが押されていない間
            else
            {
                // EN: If the object used for flight processing has already been generated
                // JA: 飛行処理に使うオブジェクトが生成済みの場合
                if ( IsDefined( self.optionsState[optName + "LinkObject"] ) )
                {
                    // EN: When the "Run/Hold your breath" button is pressed
                    // JA: 「走る・息止め」ボタンが押されたら
                    if ( self GetKeycodePressed( "Sprint" , "Sprint" ) )
                    {
                        // EN : Get the coordinates of a distance 200 times ahead in the front direction and move the created object to those coordinates.
                        // JA : 正面方向へ 200 倍先の距離の座標を取得し、作成したオブジェクトをその座標へ移動する
                        self.optionsState[optName + "LinkObject"].origin = self GetPlayerForwardTrace( undefined , undefined , 350 );
                    }
                    // EN: When the "Run/Breathe Hold" button is not pressed
                    // JA: 「走る・息止め」ボタンが押されていない時
                    else
                    {
                        // EN : Get the coordinates of a distance 20 times ahead in the front direction and move the created object to those coordinates.
                        // JA : 正面方向へ 20 倍先の距離の座標を取得し、作成したオブジェクトをその座標へ移動する
                        self.optionsState[optName + "LinkObject"].origin = self GetPlayerForwardTrace( undefined , undefined , 20 );
                    }
                }
            }
        }
        
        // EN: If the object used for flight processing has already been generated
        // JA: 飛行処理に使うオブジェクトが生成済みの場合
        if ( IsDefined( self.optionsState[optName + "LinkObject"] ) )
        {
            self.optionsState[optName + "LinkObject"].angles = self GetPlayerAngles( );
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        // EN: If the object used for flight processing has already been generated
        // JA: 飛行処理に使うオブジェクトが生成済みの場合
        if ( IsDefined( self.optionsState[optName + "LinkObject"] ) )
        {
            // EN: Unlink (synchronize) yourself from the created object
            // JA: 作成したオブジェクトから自分のリンク（同期）を解除する
            self UnLink( );
            
            // EN: Delete the created object
            // JA: 作成したオブジェクトを削除する
            self.optionsState[optName + "LinkObject"] Delete( );
            self.optionsState[optName + "LinkObject"] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
// JA : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
//++++++++++++++++++++++++++++++
ExecNuclearExplosion( location , owner )
{
    // EN : Play the sound of a nuclear explosion starting from the specified coordinates
    // JA : 指定した座標を起点に、核爆発のサウンドを再生させる
    PlaySoundAtPos( location , "iw8_nuke_impact_low" );
    PlaySoundAtPos( location , "iw8_nuke_incoming_blast_wave" );
    PlaySoundAtPos( location , "iw8_nuke_blast" );
    PlaySoundAtPos( location , "iw8_nuke_blast_tail" );
    
    // EN : Play nuclear explosion effect at specified coordinates
    // JA : 指定した座標に核爆発のエフェクトを再生させる
    PlayEffectToObject( 0.01 , undefined , "nuke_atomize_body"             , undefined , false , location , undefined );
    PlayEffectToObject( 0.01 , undefined , "nuke_rolling_death"            , undefined , false , location , undefined );
    PlayEffectToObject( 0.01 , undefined , "vfx_nuke_zone_5000_static_s"   , undefined , false , location , undefined );

    // EN : Change the nuclear explosion effect model caused by game mode
    // JA : ゲームモードによって発生させる核爆発エフェクトモデルを変更する
    l_ModelID = "";
    if ( scripts\mp\utility\game::getgametype() != "br" )   { l_ModelID = "ks_nuke_mp"; }
    else                                                    { l_ModelID = "ks_nuke_br"; }

    // EN : Generate an animated model of a nuclear explosion at specified coordinates
    // JA : 指定した座標に核爆発のアニメーションモデルを生成する
    l_NukeAnim = self CreateEntityObject(
        /* notice */        undefined ,
        /* spawnLocation */ location ,
        /* spawnLength */   undefined ,
        /* objectName */    l_ModelID ,
        /* objectCollide */ undefined ,
        /* angleSync */     undefined ,
        /* objectAngle */   undefined ,
        /* healthMin */     undefined ,
        /* healthMax */     undefined ,
        /* damagedFx */     undefined ,
        /* breakedFx */     undefined ,
        /* damagedSe */     undefined ,
        /* breakedSe */     undefined ,
        /* endDelete */     undefined ,
        /* optName */       undefined
        );
    // l_NukeAnim = Spawn( "script_model" , location );
    // l_NukeAnim SetModel( "ks_nuke_mp" );
    l_NukeAnim SetScriptablePartState( "explode" , "on" , 0 );
    
    // EN : As an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径50000の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    self RadiusDamage( location , 50000 , 50000 , 50000 , owner , "MOD_EXPLOSIVE" , "nuke_mp" );
    
    // EN : Causes an earthquake with a strength of 0.4 for 5 seconds within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径 50000 の範囲まで、 0.4 の威力の地震を 5秒間 起こす
    Earthquake( 0.4 , 5 , location , 50000 );
    wait 5;
    
    // EN : As an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径50000の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    self RadiusDamage( location , 25000 , 25000 , 25000 , owner , "MOD_EXPLOSIVE" , "nuke_mp" );

    // EN : Causes an earthquake with a strength of 0.3 for 1 seconds within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径 50000 の範囲まで、 0.3 の威力の地震を 1秒間 起こす
    Earthquake( 0.3 , 1 , location , 50000 );

    // EN : When the animation of the created nuclear explosion model finishes playing, delete the object.
    // JA : 作成した核爆発モデルのアニメーション再生が終了したら、オブジェクトを削除する
    wait 25;
    l_NukeAnim Delete( );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Advanced forge mode"
// JA : 機能「Advanced forge mode」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfAdvancedForgeMode( )
{
    // EN : Execute ExecAdvancedForgeMode( ) or exit depending on the existence state of the "AdvancedForgeMode" variable
    // JA : 「AdvancedForgeMode」変数の存在状態に合わせて、ExecAdvancedForgeMode 関数を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "AdvancedForgeMode" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "AdvancedForgeMode" ,
        /* optArg2 */   /* optFunc */   ::ExecAdvancedForgeMode ,
        /* optArg3 */   /* loopTime */  0.01 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  undefined ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              undefined ,
        /* camoID */                    undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Advanced forge mode"
// JA : 機能「Advanced forge mode」の実行中の処理
//++++++++++++++++++++++++++++++
ExecAdvancedForgeMode( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MOD_DEFINE.MOD_INITIALIZE )
    {
        // EN : If the generated model data has not been created, set it with the initial value.
        // JA : 生成モデルデータが作られていない場合、初期値で設定する
        if ( !IsDefined( self.optionsState[optName].modData["ChangeSpawnedModel"] ) )
        {
            self.optionsState[optName].modData["ChangeSpawnedModel"] = "military_crate_large_stackable_01_dummy";
        }
        // EN : If the generation interval is not defined, set the initial value
        // JA : 生成インターバルが定義されていない場合、初期値を設定する
        if ( !IsDefined( self.optionsState[optName].modData["ChangeSpawnedTime"] ) )
        {
            self.optionsState[optName].modData["ChangeSpawnedTime"] = 0.05;
        }
        // EN : Create an array to manage the created objects
        // JA : 作成したオブジェクトを管理する配列を作成する
        if ( !IsDefined( self.optionsState[optName + "_ObjectCount"] ) )
        {
            self.optionsState[optName + "_ObjectCount"] = [];
        }
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MOD_DEFINE.MOD_PROCESSING )
    {
        // EN: While the "Aim" button is pressed
        // JA: "エイム" ボタンが押されている間
        if ( self GetKeycodePressed( "Ads" , "Ads" ) )
        {
            // EN: While the "Use" button is also pressed at the same time
            // JA: "使用" ボタンも同時に押されている間
            if ( self GetKeycodePressed( "Use" , "Use" ) )
            {
                // EN: When not in object acquisition loop processing
                // JA: オブジェクト取得ループ処理に入っていない場合
                if ( !isDefined( self.optionsState[optName].modData["Looping"] ) )
                {
                    // EN: the stored object data is discarded.
                    // JA: 記憶していたオブジェクトデータを破棄する
                    self.optionsState[optName].modData["Object"] = undefined;

                    // EN: Set that object acquisition loop processing has entered
                    // JA: オブジェクト取得ループ処理に入ったと設定する
                    self.optionsState[optName].modData["Looping"] = true;

                    while ( true )
                    {
                        // EN: The infinite loop ends when the "Use" button is released.
                        // JA: 「使用」ボタンが離されたら無限ループ終了
                        if ( self GetKeycodePressed( "Use" , "Use" ) == false )
                        {
                            self.optionsState[optName].modData["Looping"] = undefined;
                            break;
                        }
                        
                        // EN: If there are no remembered objects
                        // JA: 記憶されているオブジェクトが無い場合
                        if ( !isDefined( self.optionsState[optName].modData["Object"] ) )
                        {
                            // EN : Obtain trace results 1000000 times further away in the front direction
                            // JA : 正面方向へ 1000000 倍先の距離のトレース結果を取得する
                            l_HitResult = self GetPlayerForwardTrace( true , true , 1000000 );
                            // scripts\engine\trace::Ray_Trace( l_EyeLocation , l_EndLocation , self , scripts\engine\trace::Create_World_Contents( ) );
                        
                            // EN: If object data exists at the location of the hit
                            // JA: ヒットした先にオブジェクトデータが存在したら
                            if ( isDefined( l_HitResult["entity"] ) )
                            {
                                // EN: Remember object information
                                // JA: オブジェクト情報を記憶する
                                self.optionsState[optName].modData["Object"] = l_HitResult["entity"];
                            }
                        }
                        // EN: If there is a remembered object
                        // JA: 記憶されているオブジェクトがある場合
                        else
                        {
                            // EN: When the button to throw tactical is pressed
                            // JA: タクティカルを投げるボタンが押されたら
                            if ( self GetKeycodePressed( "Tactical" , "Tactical" ) )
                            {
                                // EN: Display the text "[Notification] Delete Object: object name" in the center of the screen
                                // JA: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
                                self ShowCenterMessage( self.curLang , "Notice" , "DeleteObject" , undefined , self.optionsState[optName].modData["Object"].model , undefined );
                                
                                // EN: Delete an object
                                // JA: オブジェクトを削除する
                                self.optionsState[optName].modData["Object"] Delete( );
                            }
                            else
                            {
                                // EN : Obtain the corrected coordinates of a distance 100 times ahead in the front direction, shifted slightly downward.
                                // JA : 正面方向へ 100 倍先の距離の、若干下にずらした修正座標を取得する
                                l_ObjectLocation = self GetPlayerForwardTrace( undefined , true , 100 , ( 0 , 0 , -10 ) );

                                // EN: Set object coordinates
                                // JA: オブジェクトの座標を設定する
                                self.optionsState[optName].modData["Object"] SetOrigin( l_ObjectLocation );
                                self.optionsState[optName].modData["Object"].origin = l_ObjectLocation;
                                
                                // EN: If "X-axis rotation setting" is enabled
                                // JA: "X軸回転設定" が 有効 になっている場合
                                if ( isDefined( self.optionsState[optName].modData["RotateXAxis"] ) )
                                {
                                    l_ObjectAngle = self GetPlayerAngles( );
                                    l_ObjectAngle = ( l_ObjectAngle[0] , l_ObjectAngle[1] , 0 );
                                }
                                // EN: If "X-axis rotation setting" is disabled
                                // JA: "X軸回転設定" が 無効 になっている場合
                                else
                                {
                                    l_ObjectAngle = self GetPlayerAngles( );
                                    l_ObjectAngle = ( 0 , l_ObjectAngle[1] , 0 );
                                }
                                // EN: Set the object angle
                                // JA: オブジェクトの角度を設定する
                                self.optionsState[optName].modData["Object"].angles = l_ObjectAngle;

                                // EN: Display the text "[Notification] Get object: object name" in the center of the screen.
                                // JA: 画面中央に「[通知] オブジェクトを取得 : オブジェクト名」という文章を表示する
                                self ShowCenterMessage( self.curLang , "Notice" , "GetObject" , undefined , self.optionsState[optName].modData["Object"].model , undefined );
                            }
                        }

                        wait 0.01;
                    }
                }
            }
        }
        // EN: When the "Aim" button is not pressed
        // JA: "エイム" ボタンが押されていない時に
        else
        {
            // EN: While the "Use" button is pressed
            // JA: 「使用」ボタンが押されている間
            if ( self GetKeycodePressed( "Use" , "Use" ) )
            {
                // EN: When the "Reload" button is pressed (If using a controller, use the "Tactical Throw" button)
                // JA: 「リロード」ボタンが押されたら（コントローラーの場合は「タクティカル投球」ボタン）
                if ( self GetKeycodePressed( "Reload" , "Tactical" ) )
                {
                    // EN: Generate the model data being set up in front of you, 100 times ahead of you.
                    // JA: 正面方向に 100 倍先の距離、自分の目の前に、設定中のモデルデータを生成する
                    l_Object = self CreateEntityObject(
                        /* notice */        true ,
                        /* spawnLocation */ undefined ,
                        /* spawnLength */   100 ,
                        /* objectName */    self.optionsState[optName].modData["ChangeSpawnedModel"] ,
                        /* objectCollide */ true ,
                        /* angleSync */     self.optionsState[optName].modData["RotateXAxis"] ,
                        /* objectAngle */   undefined ,
                        /* healthMin */     1000 ,
                        /* healthMax */     2000 ,
                        /* damagedFx */     "money" ,
                        /* breakedFx */     "claymore_explode" ,
                        /* damagedSe */     "recondrone_damaged" ,
                        /* breakedSe */     "veh_apache_explode_mp" ,
                        /* endDelete */     true ,
                        /* optName */       undefined
                        );

                    // EN: Add the created object to the managed list
                    // JA: 作成されたオブジェクトを管理リストに追加する
                    if ( IsDefined( l_Object ) )
                    {
                        self.optionsState[optName + "_ObjectCount"][self.optionsState[optName + "_ObjectCount"].size] = l_Object;
                    }

                    // EN: Wait for specified interval
                    // JA: 指定インターバル分待機する
                    wait self.optionsState[optName].modData["ChangeSpawnedTime"];
                }
                // EN: When the "Melee Attack" button is pressed
                // JA: 「近接攻撃」ボタンが押されたら
                else if ( self GetKeycodePressed( "Melee" , "Melee" ) )
                {
                    // EN: Generate memorized object data in front of you, 100 times further away.
                    // JA: 正面方向に 100 倍先の距離、自分の目の前に、記憶していたオブジェクトデータを生成する
                    l_Object = self CreateEntityObject(
                        /* notice */        true ,
                        /* spawnLocation */ undefined ,
                        /* spawnLength */   100 ,
                        /* objectName */    self.optionsState[optName].modData["Object"].model ,
                        /* objectCollide */ true ,
                        /* angleSync */     self.optionsState[optName].modData["RotateXAxis"] ,
                        /* objectAngle */   undefined ,
                        /* healthMin */     100 ,
                        /* healthMax */     500 ,
                        /* damagedFx */     "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
                        /* breakedFx */     "med_transport_explode" ,
                        /* damagedSe */     "ks_a10_fire_dist_crack" ,
                        /* breakedSe */     "iw8_rc_plane_engine_exp" ,
                        /* endDelete */     true ,
                        /* optName */       undefined
                        );

                    // EN: Add the created object to the managed list
                    // JA: 作成されたオブジェクトを管理リストに追加する
                    if ( IsDefined( l_Object ) )
                    {
                        self.optionsState[optName + "_ObjectCount"][self.optionsState[optName + "_ObjectCount"].size] = l_Object;
                    }

                    // EN: Wait for specified interval
                    // JA: 指定インターバル分待機する
                    wait self.optionsState[optName].modData["ChangeSpawnedTime"];
                }
                // EN: When the "Lethal" button is pressed
                // JA: 「リーサル」ボタンが押されたら
                else if ( self GetKeycodePressed( "Lethal" , "Lethal" ) )
                {
                    // EN: Change the generated model
                    // JA: 生成するモデルを変更する
                    self SwitchForgeModeModel( );
                    wait 0.3;
                }
                // EN: When the "Jump" button is pressed
                // JA: 「ジャンプ」ボタンが押されたら
                else if ( self GetKeycodePressed( "Jump" , "Jump" ) )
                {
                    // EN: Toggle X-axis rotation settings
                    // JA: X軸回転設定を切り替える
                    self OnfForgeModeRotateXAxis( );
                    wait 0.3;
                }
                // EN: When the "Crouch/Prone" button is pressed
                // JA: 「しゃがみ・伏せ」ボタンが押されたら
                else if ( self GetKeycodePressed( "Stance" , "Stance" ) )
                {
                    // EN: Switch on/off of the process generated at the launch destination
                    // JA: 発射先に生成する処理の有無効化を切り替える
                    self OnfForgeModeFiredCreate( );
                    wait 0.3;
                }
            }
            // EN: While the "Melee Attack" button is pressed
            // JA: "近接攻撃" ボタンが押されている間
            else if ( self GetKeycodePressed( "Melee" , "Melee" ) )
            {
                // EN: When the "Jump" button is pressed
                // JA: 「ジャンプ」ボタンが押されたら
                if ( self GetKeycodePressed( "Jump" , "Jump" ) )
                {
                    // EN: Switch generation interval
                    // JA: 生成インターバルを切り替える
                    self SwitchForgeModeSpawnedTime( );
                    wait 0.3;
                }
                // EN: When the "Crouch/Prone" button is pressed
                // JA: 「しゃがみ・伏せ」ボタンが押されたら
                else if ( self GetKeycodePressed( "Stance" , "Stance" ) )
                {
                    // EN: Delete the last created object
                    // JA: 最後に作成したオブジェクトを削除する
                    self ExecForgeModeDeleteLastObject( );
                    wait 0.3;
                }
            }
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MOD_DEFINE.MOD_FINALIZE )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// EN : Enable/disable suboption "RotateXAxis" of function "AdvancedForgeMode"
// JA : 機能 "AdvancedForgeMode" の サブオプション "RotateXAxis" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfForgeModeRotateXAxis( )
{
    self SwitchOnfSubFunction(
        /* optName1 */  "AdvancedForgeMode" ,
        /* optName2 */  "RotateXAxis" ,
        /* optData */   true ,
        /* optFunc */   undefined ,
        /* notice */    true ,
        /* optArg1 */   undefined ,
        /* optArg2 */   undefined ,
        /* optArg3 */   undefined,
        /* optArg4 */   undefined ,
        /* optArg5 */   undefined ,
        /* optArg6 */   undefined ,
        /* optArg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Enable/disable suboption "FiredCreate" of function "AdvancedForgeMode"
// JA : 機能 "AdvancedForgeMode" の サブオプション "FiredCreate" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfForgeModeFiredCreate( )
{
    self SwitchOnfSubFunction(
        /* optName1 */                          "AdvancedForgeMode" ,
        /* optName2 */                          "FiredCreate" ,
        /* optData */                           true ,
        /* optFunc */                           ::WaitFireBullets ,
        /* notice */                            true ,
        /* optArg1 */   /* optName1 */          "AdvancedForgeMode" ,
        /* optArg2 */   /* optName2 */          "FiredCreate" ,
        /* optArg3 */   /* optFunc */           ::CreateObjectToFiredLocation ,
        /* optArg4 */   /* notice */            undefined ,
        /* optArg5 */   /* specificWeapon */    undefined ,
        /* optArg6 */   /* effectData */        undefined ,
        /* optArg7 */   /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Switch the type of suboption "ChangeSpawnedTime" of function "AdvancedForgeMode"
// JA : 機能 "AdvancedForgeMode" の サブオプション "ChangeSpawnedTime" の種類を切り替える
//++++++++++++++++++++++++++++++
SwitchForgeModeSpawnedTime( )
{
    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array     = [];
    
    l_Array[0]  = 0.01;
    l_Array[1]  = 0.02;
    l_Array[2]  = 0.03;
    l_Array[3]  = 0.04;
    l_Array[4]  = 0.05;
    l_Array[5]  = 0.06;
    l_Array[6]  = 0.07;
    l_Array[7]  = 0.08;
    l_Array[8]  = 0.09;
    l_Array[9]  = 0.1;
    l_Array[10] = 0.15;
    l_Array[11] = 0.2;
    l_Array[12] = 0.25;
    l_Array[13] = 0.3;
    l_Array[14] = 0.4;
    l_Array[15] = 0.5;
    l_Array[16] = 0.6;
    l_Array[17] = 0.7;
    l_Array[18] = 0.8;
    l_Array[19] = 0.9;
    l_Array[20] = 1.0;

    self ChangeSelfParameter( "AdvancedForgeMode" , "ChangeSpawnedTime" , undefined , ::OnfAdvancedForgeMode , l_Array , true , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Delete the last object created with the function "AdvancedForgeMode"
// JA : 機能 "AdvancedForgeMode" で作成したオブジェクトの内、最後のオブジェクトを削除する
//++++++++++++++++++++++++++++++
ExecForgeModeDeleteLastObject( )
{
    l_OptName = "AdvancedForgeMode";

    if ( IsDefined( self.optionsState[l_OptName+ "_ObjectCount"] ) )
    {
        if ( 0 < self.optionsState[l_OptName + "_ObjectCount"].size )
        {
            self.optionsState[l_OptName + "_ObjectCount"][( self.optionsState[l_OptName + "_ObjectCount"].size - 1 )] Delete( );
            self.optionsState[l_OptName + "_ObjectCount"][( self.optionsState[l_OptName + "_ObjectCount"].size - 1 )] = undefined;
            
            // EN: Display the text "[Notification] Delete Object: object name" in the center of the screen
            // JA: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
            self ShowCenterMessage( self.curLang , "Notice" , "DeleteLastObject" , undefined , ( self.optionsState[l_OptName + "_ObjectCount"].size - 1 ) , undefined );
        }
        else
        {
            self.optionsState[l_OptName + "_ObjectCount"] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Create an object at the firing destination coordinates while the suboption "FiredCreate" of the function "Advanced forge mode" is enabled.
// JA : 機能 "Advanced forge mode" の サブオプション "FiredCreate" が有効中に、発射先の座標にオブジェクトを作成する
//++++++++++++++++++++++++++++++
CreateObjectToFiredLocation( location )
{
    // EN: Generate the model data being set at the specified coordinates
    // JA: 指定された座標に、設定中のモデルデータを生成する
    location = location + ( 0 , 0 , -10 );
    l_Object = self CreateEntityObject(
        /* notice */        true ,
        /* spawnLocation */ location ,
        /* spawnLength */   undefined ,
        /* objectName */    self.optionsState["AdvancedForgeMode"].modData["ChangeSpawnedModel"] ,
        /* objectCollide */ true ,
        /* angleSync */     self.optionsState["AdvancedForgeMode"].modData["RotateXAxis"] ,
        /* objectAngle */   undefined ,
        /* healthMin */     1000 ,
        /* healthMax */     5000 ,
        /* damagedFx */     "money" ,
        /* breakedFx */     "claymore_explode" ,
        /* damagedSe */     "recondrone_damaged" ,
        /* breakedSe */     "veh_apache_explode_mp" ,
        /* endDelete */     true ,
        /* optName */       undefined
        );

    // EN: Add the created object to the managed list
    // JA: 作成されたオブジェクトを管理リストに追加する
    if ( IsDefined( l_Object ) )
    {
        self.optionsState["AdvancedForgeMode" + "_ObjectCount"][self.optionsState["AdvancedForgeMode" + "_ObjectCount"].size] = l_Object;
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the model type of the function "Advanced forge mode"
// JA : 機能「Advanced forge mode」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
SwitchForgeModeModel( )
{
    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array     = [];
    
    l_Array[0]  = "military_crate_large_stackable_01_dummy";
    l_Array[1]  = "military_crate_large_stackable_01_jugg";
    l_Array[2]  = "military_crate_field_upgrade_01";
    l_Array[3]  = "military_carepackage_01_juggernaut";
    l_Array[4]  = "military_carepackage_01_enemy";
    l_Array[5]  = "military_carepackage_01_friendly";
    l_Array[6]  = "com_plasticcase_beige_big_iw6";
    l_Array[7]  = "veh8_mil_air_mquebec8_small";                // Extra small heli
    l_Array[8]  = "veh8_mil_air_mquebec8_small_east";
    l_Array[9]  = "veh8_mil_air_lbravo";                        // Small heli with animation
    l_Array[10]  = "veh8_mil_air_lbravo_mp";
    l_Array[11]  = "veh8_mil_air_lbravo_east_mp";
    l_Array[12]  = "veh8_mil_air_lbravo_personnel_mp_flyable";
    l_Array[13]  = "veh8_mil_air_ahotel64_ks_mp";                // Big heli
    l_Array[14]  = "veh8_mil_air_ahotel64_ks_east_mp";
    l_Array[15] = "veh8_mil_air_palfa";                         // Extra big heli
    l_Array[16] = "veh8_mil_air_palfa_east";
    l_Array[17] = "veh8_ind_air_bombing_drone";                 // Extra small plane
    l_Array[18] = "veh8_mil_air_mquebec9_small";                // UAV
    l_Array[19] = "veh8_mil_air_mquebec9_small_east";
    l_Array[20] = "veh8_mil_air_auniform";                      // Stealth jet
    l_Array[21] = "veh8_mil_air_auniform_east";
    l_Array[22] = "veh8_mil_air_suniform25";                    // Fighter jet not draw inside
    l_Array[23] = "veh8_mil_air_suniform25_west";
    l_Array[24] = "veh8_mil_air_alfa10";                        // Fighter jet draw inside
    l_Array[25] = "veh8_mil_air_alfa10_east";
    l_Array[26] = "veh8_mil_air_halfa_mp";
    l_Array[27] = "veh8_mil_air_halfa_east_mp";
    l_Array[28] = "veh8_mil_air_acharlie130";                   // AC130 draw inside
    l_Array[29] = "veh8_mil_air_acharlie130_ks";
    l_Array[30] = "veh8_mil_air_acharlie130_ks_east";
    l_Array[31] = "veh8_mil_air_acharlie130_small";
    l_Array[32] = "veh8_mil_lnd_atango_physics_mp";             // Small 4 cycle car
    l_Array[33] = "military_carepackage_01_friendly";
    l_Array[34] = "military_crate_large_stackable_01_jugg";
    l_Array[35] = "veh8_mil_lnd_whotel";
    l_Array[36] = "wmd_vm_missile_cruise_warhead";
    l_Array[37] = "misc_wm_ascender";
    l_Array[38] = "offhand_wm_deployable_cover";
    l_Array[39] = "misc_wm_flarestick";
    l_Array[40] = "military_crate_field_upgrade_01";
    l_Array[41] = "prop_flag_neutral";
    l_Array[42] = "military_dom_flag_neutral";
    l_Array[43] = "military_dom_flag_west";
    l_Array[44] = "ctf_game_flag_east";
    l_Array[45] = "military_dogtags_iw8";
    l_Array[46] = "military_dogtags_iw8_blue";
    l_Array[47] = "military_dogtags_iw8_orange";
    l_Array[48] = "military_dogtags_iw8_green";
    l_Array[49] = "military_dogtags_iw8_purple";
    l_Array[50] = "military_dogtags_iw8_gold";

    self ChangeSelfParameter( "AdvancedForgeMode" , "ChangeSpawnedModel" , undefined , ::OnfAdvancedForgeMode , l_Array , true , undefined );
}



//++++++++++++++++++++++++++++++
// EN : generate a vehicle
// JA : 乗り物を生成する
//++++++++++++++++++++++++++++++
ExecSpawnVehicle( )
{
    // EN : Define information to create a vehicle
    // JA : 乗り物を作成する情報を定義
    l_SpawnData = SpawnStruct( );
    l_SpawnData.origin = self GetPlayerForwardTrace( undefined , true , 300 , undefined );
    l_SpawnData.angles = self GetPlayerAngles( );
    l_SpawnData.owner = self;
    l_SpawnData.spawntype = "GAME_MODE";

    l_SpawnVec = undefined;

    // EN : Branch vehicle generated from currently selected item
    // JA : 現在選択中の項目から生成する乗り物を分岐
    switch ( self.modSystem.menuOptionCurrent )
    {
        case 0:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "apc_russian", l_SpawnData ); break;
        case 1:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "cop_car", l_SpawnData ); break;
        case 2:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "technical", l_SpawnData ); break;
        case 3:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "large_transport", l_SpawnData ); break;
        case 4:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "light_tank", l_SpawnData ); break;
        case 5:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "cargo_truck", l_SpawnData ); break;
        case 6:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "hoopty", l_SpawnData ); break;
        case 7:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "hoopty_truck", l_SpawnData ); break;
        case 8:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "jeep", l_SpawnData ); break;
        case 9:     l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "medium_transport", l_SpawnData ); break;
        case 10:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "pickup_truck", l_SpawnData ); break;
        case 11:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "tac_rover", l_SpawnData ); break;
        case 12:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "van", l_SpawnData ); break;
        case 13:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "atv", l_SpawnData ); break;
        case 14:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "little_bird", l_SpawnData ); break;
        case 15:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "little_bird", l_SpawnData ); break;
        case 16:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "little_bird", l_SpawnData ); break;
        case 17:    l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "little_bird", l_SpawnData ); break;
    }

    // EN : If you were able to create a vehicle
    // JA : 乗り物を作成出来ていた場合
    if ( IsDefined( l_SpawnVec ) )
    {
        // EN : Set speed and health
        // JA : 速度と体力を設定
        l_SpawnVec Vehicle_SetSpeed( 100000 , 100000 , 50000 );
        l_SpawnVec.maxHealth = 100000;
        l_SpawnVec.health = l_SpawnVec.maxHealth;

        // EN : Branch vehicle generated from currently selected item
        // JA : 現在選択中の項目から生成する乗り物を分岐
        switch ( self.modSystem.menuOptionCurrent )
        {
            case 15:
                // EN : fix coordinates
                // JA : 座標を調整する
                l_Location = GetAngleTrace(
                    /* object */        l_SpawnVec ,
                    /* upRange */       -200 ,
                    /* centerRange */   500 ,
                    /* forwardRange */  undefined ,
                    /* leftRange */     300 ,
                    /* rightRange */    300 ,
                    /* lrUpscaleFix */  -200 ,
                    /* endRange */      undefined ,
                    /* endUpscale */    undefined ,
                    /* endTrace */      undefined
                    );
                // EN : Create an 3D model
                // JA : 3Dモデルを作成する
                l_FakeModelID01 = "veh8_mil_air_palfa";
                l_FakeModelID02 = "veh8_mil_air_ahotel64_ks_mp";
                l_FakeModelID03 = "veh8_mil_air_ahotel64_ks_mp";
                if ( scripts\mp\utility\game::GetGameType( ) == "br" )
                {
                    l_FakeModelID01 = "veh8_mil_lnd_atango_physics_mp";
                    l_FakeModelID02 = "veh8_mil_air_mquebec8_small";
                    l_FakeModelID03 = "veh8_mil_air_mquebec8_small";
                }
                l_FakeModelData01 = self CreateEntityObject( undefined , l_Location["Start"] , undefined , l_FakeModelID01 , undefined , undefined , l_SpawnVec.angles );
                l_FakeModelData02 = self CreateEntityObject( undefined , l_Location["Left"] , undefined , l_FakeModelID02 , undefined , undefined , l_SpawnVec.angles );
                l_FakeModelData03 = self CreateEntityObject( undefined , l_Location["Right"] , undefined , l_FakeModelID03 , undefined , undefined , l_SpawnVec.angles );
                // EN : Link (sync) a 3D model to yourself
                // JA : 3Dモデルを自分にリンク（同期）する
                l_FakeModelData01 LinkTo( l_SpawnVec );
                l_FakeModelData02 LinkTo( l_SpawnVec );
                l_FakeModelData03 LinkTo( l_SpawnVec );
                // EN : Register the process when a vehicle is destroyed
                // JA : 乗り物が破壊された時の処理を登録する
                l_SpawnVec thread OnWaitingDeathVehicle( self , l_FakeModelData01 , l_FakeModelData02 , l_FakeModelData03 );
                // EN : Custom Little Bird running process
                // JA : カスタムリトルバードの実行中の処理
                l_SpawnVec thread OnProcessCustomLittleBird( l_FakeModelData01 , l_FakeModelData02 , l_FakeModelData03 );
                break;
                
            case 16:
                // EN : fix coordinates
                // JA : 座標を調整する
                l_Location = GetAngleTrace(
                    /* object */        l_SpawnVec ,
                    /* upRange */       -250 ,
                    /* centerRange */   350 ,
                    /* forwardRange */  300 ,
                    /* leftRange */     300 ,
                    /* rightRange */    300 ,
                    /* lrUpscaleFix */  -200 ,
                    /* endRange */      undefined ,
                    /* endUpscale */    undefined ,
                    /* endTrace */      undefined
                    );
                // EN : Create an 3D model
                // JA : 3Dモデルを作成する
                l_FakeModelID01 = "veh8_mil_air_suniform25";
                l_FakeModelID02 = "veh8_mil_air_suniform25_west";
                l_FakeModelID03 = "veh8_mil_air_auniform";
                l_FakeModelID04 = "veh8_mil_air_auniform";
                if ( scripts\mp\utility\game::GetGameType( ) == "br" )
                {
                    l_FakeModelID01 = "veh8_mil_air_alfa10";
                    l_FakeModelID02 = "veh8_mil_air_alfa10_east";
                    l_FakeModelID03 = "veh8_mil_air_auniform";
                    l_FakeModelID04 = "veh8_mil_air_auniform";
                }
                l_FakeModelData01 = self CreateEntityObject( undefined , l_Location["Start"] , undefined , l_FakeModelID01 , undefined , undefined , l_SpawnVec.angles );
                l_FakeModelData02 = self CreateEntityObject( undefined , l_Location["Forward"] , undefined , l_FakeModelID02 , undefined , undefined , l_SpawnVec.angles );
                l_FakeModelData03 = self CreateEntityObject( undefined , l_Location["Left"] , undefined , l_FakeModelID03 , undefined , undefined , l_SpawnVec.angles );
                l_FakeModelData04 = self CreateEntityObject( undefined , l_Location["Right"] , undefined , l_FakeModelID04 , undefined , undefined , l_SpawnVec.angles );
                
                // EN : Link (sync) a 3D model to yourself
                // JA : 3Dモデルを自分にリンク（同期）する
                l_FakeModelData01 LinkTo( l_SpawnVec );
                l_FakeModelData02 LinkTo( l_SpawnVec );
                l_FakeModelData03 LinkTo( l_SpawnVec );
                l_FakeModelData04 LinkTo( l_SpawnVec );
                // EN : Register the process when a vehicle is destroyed
                // JA : 乗り物が破壊された時の処理を登録する
                l_SpawnVec thread OnWaitingDeathVehicle( self , l_FakeModelData01 , l_FakeModelData02 , l_FakeModelData03 , l_FakeModelData04 );
                // EN : Custom Little Bird running process
                // JA : カスタムリトルバードの実行中の処理
                l_SpawnVec thread OnProcessCustomLittleBird( l_FakeModelData02 , l_FakeModelData01 , l_FakeModelData03 , l_FakeModelData04 );
                break;

            case 17:
                // EN : fix coordinates
                // JA : 座標を調整する
                l_Location = GetAngleTrace(
                    /* object */        l_SpawnVec ,
                    /* upRange */       -200 ,
                    /* centerRange */   100 ,
                    /* forwardRange */  undefined ,
                    /* leftRange */     undefined ,
                    /* rightRange */    undefined ,
                    /* lrUpscaleFix */  undefined ,
                    /* endRange */      undefined ,
                    /* endUpscale */    undefined ,
                    /* endTrace */      undefined
                    );
                // EN : Create an 3D model
                // JA : 3Dモデルを作成する
                l_FakeModelID01 = "veh8_mil_air_suniform25";
                if ( scripts\mp\utility\game::GetGameType( ) == "br" )
                {
                    l_FakeModelID01 = "veh8_mil_air_alfa10";
                }
                l_FakeModelData01 = self CreateEntityObject( undefined , l_Location["Start"] , undefined , l_FakeModelID01 , undefined , undefined , l_SpawnVec.angles );
                // EN : Link (sync) a 3D model to yourself
                // JA : 3Dモデルを自分にリンク（同期）する
                l_FakeModelData01 LinkTo( l_SpawnVec );
                // EN : Register the process when a vehicle is destroyed
                // JA : 乗り物が破壊された時の処理を登録する
                l_SpawnVec thread OnWaitingDeathVehicle( self , l_FakeModelData01 );
                // EN : Custom Little Bird running process
                // JA : カスタムリトルバードの実行中の処理
                l_SpawnVec thread OnProcessCustomLittleBird( l_FakeModelData01 );
                break;
        }
    }

    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , l_SpawnVec.modelname , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Custom Little Bird running process
// JA : カスタムリトルバードの実行中の処理
//++++++++++++++++++++++++++++++
OnProcessCustomLittleBird( object01 , object02 , object03 , object04 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );

    // EN : Flag to determine whether the vehicle is on board
    // JA : 乗車中かどうかを判断するフラグ
    l_Ride = false;
    l_Player = undefined;

    while ( true )
    {
        // EN: If no one is riding Little Bird yet
        // JA: まだ誰もリトルバードに乗っていない場合
        if ( l_Ride == false )
        {
            // EN: Get information on all participating players
            // JA: 参加中の全プレイヤー情報を取得
            foreach( player in level.players )
            {
                // EN: If the distance between Little Bird and the player is less than 250
                // JA: リトルバードとプレイヤーの距離が 250 未満の場合
                if ( Distance( self.origin , player.origin ) < 250 )
                {
                    // EN: If the player is in a vehicle
                    // JA: そのプレイヤーが乗り物に乗っている場合
                    if ( player scripts\cp_mp\utility\player_utility::IsInVehicle( ) )
                    {
                        // EN: Switch to in-ride processing
                        // JA: 乗車中の処理に切り替える
                        player thread OnProcessRidePlayerFromCustomLittleBird( object01 , object02 , object03 , object04 );
                        l_Player = player;
                        l_Ride = true;
                        break;
                    }
                }
            }
        }
        // EN: If you are riding Little Bird
        // JA: リトルバードに乗っている場合
        else
        {
            // EN: If there is a player riding Little Bird
            // JA: リトルバードに乗っているプレイヤーが存在する場合
            if ( IsDefined( l_Player ) )
            {
                // EN: When that player exits the vehicle
                // JA: そのプレイヤーが乗り物から降りたら
                if ( l_Player scripts\cp_mp\utility\player_utility::IsInVehicle( ) == false )
                {
                    // EN: Switch to ride waiting processing
                    // JA: 乗車待機処理に切り替える
                    l_Player Notify( "end_" + "CustomLittleBirdPlayer" );
                    WaitFrame( );
                    l_Player = undefined;
                    l_Ride = false;
                }
            }
            // EN: If there is no player riding Little Bird
            // JA: リトルバードに乗っているプレイヤーが存在しない場合
            else
            {
                // EN: Switch to ride waiting processing
                // JA: 乗車待機処理に切り替える
                l_Ride = false;
            }
        }
        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Handling players while riding a custom Little Bird
// JA : カスタムリトルバードに乗車中のプレイヤーの処理
//++++++++++++++++++++++++++++++
OnProcessRidePlayerFromCustomLittleBird( object01 , object02 , object03 , object04 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名を関数の終了トリガーとする
    self Endon( "end_" + "CustomLittleBirdPlayer" );

    // EN: Variables for performing special attacks
    // JA: 特殊攻撃を実行するための変数
    l_ThunderStrike = false;
    l_ThunderObject = undefined;

    while ( true )
    {
        // EN: If the player is in a vehicle
        // JA: そのプレイヤーが乗り物に乗っている場合
        if ( self scripts\cp_mp\utility\player_utility::IsInVehicle( ) )
        {
            // EN: When the "Tactical Throw" button is not pressed
            // JA: "タクティカル投球" ボタンが押されていない間
            if ( self GetKeycodePressed( "Tactical" , "Tactical" ) == false )
            {
                // EN: If a special attack is in progress
                // JA: 特殊攻撃が実行中の場合
                if ( l_ThunderStrike == true )
                {
                    // EN: Send launch notification to special attack aircraft
                    // JA: 特殊攻撃用の機体に発射通知を送る
                    l_ThunderObject Notify( "ThunderObject_Release" );
                    // EN: End special attack
                    // JA: 特殊攻撃を終了する
                    l_ThunderStrike = false;
                }

                // EN: While the "Attack" button is pressed
                // JA: "攻撃" ボタンが押されている間
                if ( self GetKeycodePressed( "Attack" , "Attack" ) == true )
                {
                    // EN: If there are various objects, launch a missile from below diagonally in front of the object.
                    // JA: 各種オブジェクトが存在する場合、そのオブジェクトの斜め前方下からミサイルを発射する
                    if ( IsDefined( object01 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object01 ,
                            /* upRange */       -100 ,
                            /* centerRange */   300 ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      1000000 ,
                            /* endUpscale */    undefined ,
                            /* endTrace */      undefined
                            );
                        scripts\cp_mp\utility\weapon_utility::_MagicBullet( MakeWeapon( "iw8_la_gromeo_mp" ) , l_Location["Start"] , l_Location["End"] , self );
                        wait 0.05;
                    }
                    if ( IsDefined( object02 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object02 ,
                            /* upRange */       -100 ,
                            /* centerRange */   300 ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      1000000 ,
                            /* endUpscale */    undefined ,
                            /* endTrace */      undefined
                            );
                        scripts\cp_mp\utility\weapon_utility::_MagicBullet( MakeWeapon( "iw8_la_gromeo_mp" ) , l_Location["Start"] , l_Location["End"] , self );
                        wait 0.05;
                    }
                    if ( IsDefined( object03 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object03 ,
                            /* upRange */       -100 ,
                            /* centerRange */   300 ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      1000000 ,
                            /* endUpscale */    undefined ,
                            /* endTrace */      undefined
                            );
                        scripts\cp_mp\utility\weapon_utility::_MagicBullet( MakeWeapon( "iw8_la_gromeo_mp" ) , l_Location["Start"] , l_Location["End"] , self );
                        wait 0.05;
                    }
                    if ( IsDefined( object04 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object04 ,
                            /* upRange */       -100 ,
                            /* centerRange */   300 ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      1000000 ,
                            /* endUpscale */    undefined ,
                            /* endTrace */      undefined
                            );
                        scripts\cp_mp\utility\weapon_utility::_MagicBullet( MakeWeapon( "iw8_la_gromeo_mp" ) , l_Location["Start"] , l_Location["End"] , self );
                        wait 0.05;
                    }
                }
                // EN: When the "Melee Attack" button is pressed
                // JA: 「近接攻撃」ボタンが押されたら
                if ( self GetKeycodePressed( "Melee" , "Melee" ) == true )
                {
                    // EN: If various objects exist, drop a grenade of the specified type directly below the object.
                    // JA: 各種オブジェクトが存在する場合、そのオブジェクトの真下に指定の種類のグレネードを落とす
                    if ( IsDefined( object01 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object01 ,
                            /* upRange */       -150 ,
                            /* centerRange */   undefined ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      undefined ,
                            /* endUpscale */    -2000 ,
                            /* endTrace */      undefined
                            );
                        // EN: Generates a specified type of grenade and launches it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した種類のグレネードを生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicGrenade( self , "flash_grenade_mp" , l_Location["Start"] , l_Location["EndDown"] , 5 );
                        wait 0.05;
                    }
                    if ( IsDefined( object02 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object02 ,
                            /* upRange */       -150 ,
                            /* centerRange */   undefined ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      undefined ,
                            /* endUpscale */    -2000 ,
                            /* endTrace */      undefined
                            );
                        // EN: Generates a specified type of grenade and launches it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した種類のグレネードを生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicGrenade( self , "flash_grenade_mp" , l_Location["Start"] , l_Location["EndDown"] , 5 );
                        wait 0.05;
                    }
                    if ( IsDefined( object03 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object03 ,
                            /* upRange */       -150 ,
                            /* centerRange */   undefined ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      undefined ,
                            /* endUpscale */    -2000 ,
                            /* endTrace */      undefined
                            );
                        // EN: Generates a specified type of grenade and launches it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した種類のグレネードを生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicGrenade( self , "flash_grenade_mp" , l_Location["Start"] , l_Location["EndDown"] , 5 );
                        wait 0.05;
                    }
                    if ( IsDefined( object04 ) )
                    {
                        l_Location = GetAngleTrace(
                            /* object */        object04 ,
                            /* upRange */       -150 ,
                            /* centerRange */   undefined ,
                            /* forwardRange */  undefined ,
                            /* leftRange */     undefined ,
                            /* rightRange */    undefined ,
                            /* lrUpscaleFix */  undefined ,
                            /* endRange */      undefined ,
                            /* endUpscale */    -2000 ,
                            /* endTrace */      undefined
                            );
                        // EN: Generates a specified type of grenade and launches it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した種類のグレネードを生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicGrenade( self , "flash_grenade_mp" , l_Location["Start"] , l_Location["EndDown"] , 5 );
                        wait 0.05;
                    }
                }
            }
            // EN: When the "Tactical Throw" button is pressed
            // JA: "タクティカル投球" ボタンが押されている間
            else
            {
                // EN: If the special attack has not started yet
                // JA: 特殊攻撃がまだ始まっていない場合
                if ( l_ThunderStrike == false )
                {
                    // EN: launch special attack
                    // JA: 特殊攻撃を開始する
                    l_ThunderStrike = true;
                    
                    l_Location = GetAngleTrace(
                        /* object */        object01 ,
                        /* upRange */       undefined ,
                        /* centerRange */   500 ,
                        /* forwardRange */  undefined ,
                        /* leftRange */     undefined ,
                        /* rightRange */    undefined ,
                        /* lrUpscaleFix */  undefined ,
                        /* endRange */      undefined ,
                        /* endUpscale */    undefined ,
                        /* endTrace */      undefined
                        );

                    // EN: Generate a special attack aircraft
                    // JA: 特殊攻撃用の機体を生成する
                    l_ThunderObject = self CreateEntityObject( undefined , l_Location["Start"] , undefined , object01.model , undefined , undefined , object01.angles );

                    // EN : Execute custom Little Bird special attack processing
                    // JA : カスタムリトルバードの特殊攻撃の処理を実行する
                    l_ThunderObject thread OnLinkCustomLittleBird( object01 );
                    l_ThunderObject thread OnChargeCustomLittleBird( object01 );
                    l_ThunderObject thread OnLauncherCustomLittleBird( self , object01 );
                }
                // EN: If a special attack is in progress
                // JA: 特殊攻撃が実行中の場合
                else
                {
                    // EN: When there is no special attack aircraft
                    // JA: 特殊攻撃用の機体が存在しない場合
                    if ( !IsDefined( l_ThunderObject ) )
                    {
                        // EN: End special attack
                        // JA: 特殊攻撃を終了する
                        l_ThunderStrike = true;
                    }
                    // EN: If there is a special attack aircraft
                    // JA: 特殊攻撃用の機体が存在する場合
                    else
                    {
                        // EN: Send rotation notification to special attack aircraft
                        // JA: 特殊攻撃用の機体に回転通知を送る
                        l_ThunderObject Notify( "ThunderObject_Spinning" );
                    }
                }
            }
        }
        // EN: When that player exits the vehicle
        // JA: そのプレイヤーが乗り物から降りたら
        else
        {
            // EN: End of loop processing
            // JA: ループ処理終了
            break;
        }
        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Link processing during custom Little Bird's special attack
// JA : カスタムリトルバードの特殊攻撃中のリンク処理
//++++++++++++++++++++++++++++++
OnLinkCustomLittleBird( object01 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN : This function ends the process when "I received the launch command"
    // JA : この関数は「自分が発射指令を受け取った」場合に処理を終了する
    self Endon( "ThunderObject_Release" );

    while ( true )
    {
        // EN : If the parent custom little bird is destroyed, end the process
        // JA : 親元のカスタムリトルバードが破壊された場合、処理を終了する
        if ( !IsDefined( object01 ) )
        {
            break;
        }
        // EN: Update object angle and coordinates to custom Little Bird tip
        // JA: オブジェクトの角度と座標を、カスタムリトルバードの先端に更新する
        l_Location = GetAngleTrace(
            /* object */        object01 ,
            /* upRange */       undefined ,
            /* centerRange */   500 ,
            /* forwardRange */  undefined ,
            /* leftRange */     undefined ,
            /* rightRange */    undefined ,
            /* lrUpscaleFix */  undefined ,
            /* endRange */      undefined ,
            /* endUpscale */    undefined ,
            /* endTrace */      undefined
            );
        self.origin = l_Location["Start"];
        WaitFrame( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Custom Little Bird special attack charging process
// JA : カスタムリトルバードの特殊攻撃のチャージ中処理
//++++++++++++++++++++++++++++++
OnChargeCustomLittleBird( object01 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    // EN : This function ends the process when "I received the launch command"
    // JA : この関数は「自分が発射指令を受け取った」場合に処理を終了する
    self Endon( "ThunderObject_Release" );

    // EN: Decide the direction of rotation
    // JA: 回転方向を決める
    self.RotatePath = scripts\engine\utility::Cointoss( );
    // EN: Number of seconds to make one 360° rotation
    // JA: 360°を1回転するための秒数
    self.RotateTime = 0.5;
    // EN: Whether the effect is occurring
    // JA: エフェクトが発生しているかどうか
    l_Effect = false;

    // EN : Plane plays a sound effect on a loop
    // JA : 機体がループでサウンドエフェクトを再生する
    self PlayLoopSound( "iw8_cruise_missile_plr" );

    while ( true )
    {
        // EN: Wait for object movement command
        // JA: オブジェクトの動作指令を待機する

        // EN: Waiting for aircraft spin command
        // JA: 機体の回転指令を待機する
        self WaitTill( "ThunderObject_Spinning" );

        // EN : If the parent custom little bird is destroyed, delete the object and end the process
        // JA : 親元のカスタムリトルバードが破壊された場合、オブジェクトを削除し、処理を終了する
        if ( !IsDefined( object01 ) )
        {
            self Delete( );
            break;
        }

        self.angles = object01.angles;

        // EN: For clockwise rotation
        // JA: 右回転の場合
        if ( self.RotatePath == false )
        {
            // EN: Rotate up to 360° in the specified number of seconds
            // JA: 指定した秒数で 360° まで回転する
            self RotateRoll( 360 , self.RotateTime );
        }
        // EN: For left rotation
        // JA: 左回転の場合
        else
        {
            // EN: Rotate up to -360° in the specified number of seconds
            // JA: 指定した秒数で -360° まで回転する
            self RotateRoll( -360 , self.RotateTime );
        }
        
        // EN: wait until rotation is complete
        // JA: 回転が終わるまで待機する
        wait self.RotateTime;
        
        // EN: If the time required for one rotation is less than 0.25 seconds
        // JA: 1回転 にかかる時間が 0.25秒 を切った場合
        if ( self.RotateTime < 0.25 )
        {
            // EN: Generates an effect on both wings if it does not already have an effect
            // JA: まだエフェクトが発生していない場合、両翼にエフェクトを発生させる
            if ( l_Effect == false )
            {
                l_Effect = true;
                
                self thread PlayEffectToObject(
                    /* time */          0.05 ,
                    /* objData */       self ,
                    /* fxName */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
                    /* tagName */       undefined ,
                    /* loopFx */        true ,
                    /* locationBase */  undefined ,
                    /* locationFix */   undefined ,
                    /* angleType */     "Left" ,
                    /* angleRange */    500 ,
                    /* stopFx */        undefined
                    );
                
                self thread PlayEffectToObject(
                    /* time */          0.05 ,
                    /* objData */       self ,
                    /* fxName */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
                    /* tagName */       undefined ,
                    /* loopFx */        true ,
                    /* locationBase */  undefined ,
                    /* locationFix */   undefined ,
                    /* angleType */     "Right" ,
                    /* angleRange */    500 ,
                    /* stopFx */        undefined
                    );
            }
        }
        
        // EN: Subtract the number of seconds until the time required for one rotation is less than 0.1 seconds.
        // JA: 1回転 にかかる時間が 0.1秒 を切るまで、秒数を減算する
        if ( 0.1 < ( self.RotateTime - 0.05 ) )
        {
            self.RotateTime -= 0.05;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Custom Little Bird's special attack firing process
// JA : カスタムリトルバードの特殊攻撃の発射処理
//++++++++++++++++++++++++++++++
OnLauncherCustomLittleBird( owner , object01 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );

    // EN: Waiting for aircraft launch command
    // JA: 機体の発射指令を待機する
    self WaitTill( "ThunderObject_Release" );
    
    // EN : If the parent custom little bird is destroyed, end the process
    // JA : 親元のカスタムリトルバードが破壊された場合、処理を終了する
    if ( !IsDefined( object01 ) ) { return; }

    // EN : Stops the looping sound effect that plane was playing
    // JA : 機体が再生していたループサウンドエフェクトを停止する
    self StopLoopSound( "iw8_cruise_missile_plr" );

    // EN: If the time required for one rotation is 0.25 seconds or more
    // JA: 1回転 にかかる時間が 0.25秒 以上の場合
    if ( 0.25 <= self.RotateTime )
    {
        // EN: Regenerate SE at damaged coordinates
        // JA: 機体の座標にSEを再生させる
        PlaySoundAtPos( self.origin , "veh_apache_explode_mp" );
        // EN: blow up the aircraft
        // JA: 機体を爆破する
        PlayEffectToObject(
            /* time */          0.01 ,
            /* objData */       undefined ,
            /* fxName */        "large_transport_explode" ,
            /* tagName */       undefined ,
            /* loopFx */        undefined ,
            /* locationBase */  self.origin ,
            /* locationFix */   undefined ,
            /* angleType */     undefined ,
            /* angleRange */    undefined ,
            /* stopFx */        undefined
            );
        wait 0.01;
        self Delete( );
    }
    // EN: If the time required for one rotation is less than 0.25 seconds
    // JA: 1回転 にかかる時間が 0.25秒 未満の場合
    else
    {
        // EN: Regenerate SE at damaged coordinates
        // JA: 機体の座標にSEを再生させる
        PlaySoundAtPos( self.origin , "mp_hq_activate_sfx" );
        // EN: Update object angle and coordinates to custom Little Bird tip
        // JA: 機体を射出する座標を取得する
        l_Location = GetAngleTrace(
            /* object */        self ,
            /* upRange */       undefined ,
            /* centerRange */   500 ,
            /* forwardRange */  undefined ,
            /* leftRange */     undefined ,
            /* rightRange */    undefined ,
            /* lrUpscaleFix */  undefined ,
            /* endRange */      7500 ,
            /* endUpscale */    undefined ,
            /* endTrace */      true
            );
            
        // EN: Move the aircraft to the impact point in 3 seconds
        // JA: 機体を着弾地点まで 3秒 で移動させる
        self MoveTo( l_Location["EndTrace"] , 3 );
        
        // EN: For clockwise rotation
        // JA: 右回転の場合
        if ( self.RotatePath == false )
        {
            // EN: Rotates up to 360° x 30 in the time required for one rotation
            // JA: 360° x 30 まで、1回転に要する時間分で回転する
            self RotateRoll( ( 360 * 30 ) , 3 );
        }
        // EN: For left rotation
        // JA: 左回転の場合
        else
        {
            // EN: Rotates up to -360° x 30 in the time required for one rotation
            // JA: -360° x 30 まで、1回転に要する時間分で回転する
            self RotateRoll( ( -360 * 30 ) , 3 );
        }
        // EN: Wait until movement and rotation are complete
        // JA: 移動、回転が完了するまで待機する
        wait 3;
        
        // EN : Generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
        // JA : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
        self thread ExecNuclearExplosion( l_Location["EndTrace"] , owner );

        // EN : Wait a moment and delete the object
        // JA : 少し待機してオブジェクトを削除する
        wait 0.1;
        self Delete( );
    }
}



//++++++++++++++++++++++++++++++
// EN : What to do when a vehicle is destroyed
// JA : 乗り物が破壊された時の処理
//++++++++++++++++++++++++++++++
OnWaitingDeathVehicle( owner , object01 , object02 , object03 , object04 )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    // EN : Wait for yourself to "dead"
    // JA : 自分が「死んだ」ことを待つ
    self WaitTill( "death" );

    if ( IsDefined( object01 ) ) { object01 Delete( ); }
    if ( IsDefined( object02 ) ) { object02 Delete( ); }
    if ( IsDefined( object03 ) ) { object03 Delete( ); }
    if ( IsDefined( object04 ) ) { object04 Delete( ); }

    // EN : Generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
    // JA : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
    self thread ExecNuclearExplosion( self.origin , owner );
}






//++++++++++++++++++++++++++++++
// EN : Teleport all players to your location
// JA : 全プレイヤーを自分の場所にテレポートさせる
//++++++++++++++++++++++++++++++
ExecTeleportToMeForALLPlayers( )
{
    // EN: Get information on all participating players
    // JA: 参加中の全プレイヤー情報を取得
    for ( targetUser = 0; targetUser < level.players.size; targetUser++ )
    {
        ExecTeleportTo( level.players[targetUser] , self );
    }
}





//++++++++++++++++++++++++++++++
// EN : Generic function to teleport players
// JA : プレイヤーをテレポートさせるための汎用関数
//++++++++++++++++++++++++++++++
ExecTeleportTo( user1 , user2 )
{
    // EN: If the target player is the same, the operation will not be possible and the process will end.
    // JA: 操作する対象のプレイヤーが同一の場合、操作できないため処理を終了する
    if ( user1 == user2 )
    {
        return;
    }

    // EN : Teleports the specified opponent to the specified opponent's coordinates.
    // JA : 指定した相手を、指定した相手の座標にテレポートさせる
    user1 SetOrigin( user2.origin );

    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    user1 ShowCenterMessage( user1.curLang , "Notice" , "TeleportToHim" , undefined , user2.name , undefined );
    user2 ShowCenterMessage( user2.curLang , "Notice" , "TeleportToMe"  , undefined , user1.name , undefined );
}





//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "FerrisWheel"
// JA : 機能 "FerrisWheel" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfFerrisWheel( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "FerrisWheel" variable
    // JA : "FerrisWheel" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "FerrisWheel" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "FerrisWheel" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateFerrisWheel ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "FerrisWheel" at the coordinates of the launch destination.
// JA : 機能 "FerrisWheel" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateFerrisWheel( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    l_optName = "FerrisWheel";

    // EN : If the function "FerrisWheel" is destroyed, terminate processing in this function
    // JA : 機能 "FerrisWheel" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + l_optName );
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_optName );
    WaitFrame( );
    
    l_ObjArray      = [];
    l_ObjArray[0]   = l_optName + "_Attach";
    l_ObjArray[1]   = l_optName + "_Link";
    l_ObjDel        = [];
    l_ObjDel[0]     = false;
    l_ObjDel[1]     = false;
    l_listArray     = [];
    l_listArray[0]  = l_optName + "_Body";
    l_listArray[1]  = l_optName + "_Seats";
    l_listArray[2]  = l_optName + "_Legs";
    l_listDel       = [];
    l_listDel[0]    = false;
    l_listDel[1]    = true;
    l_listDel[2]    = true;

    // EN : Execute the completion wait process for the function "FerrisWheel"
    // JA : 機能 "FerrisWheel" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */  "claymore_explode" , /* discFxID */      "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  true ,              /* nukePoint */     location ,                      /* owner */     self ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );
    
    level.lobbyState[l_optName].modData["Origin"] = location - (0,0,40);
    level.lobbyState[l_optName].modData["ChangeSpeedFerrisWheel"] = 1;
    
    level.lobbyState[l_optName + "_Legs"] = [];
    level.lobbyState[l_optName + "_Seats"] = [];
    level.lobbyState[l_optName + "_Body"] = [];
    
    level.lobbyState[l_optName + "_Attach"] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (0,0,420), "tag_origin");
    level.lobbyState[l_optName + "_Link"] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (0,0,40), "tag_origin");
    
    time = .05;

    
    l_ModelID = "military_carepackage_01_friendly";
    if ( scripts\mp\utility\game::GetGameType( ) == "br" )
    {
        if ( l_ModelID == "military_carepackage_01_friendly" ) { l_ModelID = "com_plasticcase_beige_big_iw6"; }
    }
    
    for(a=0;a<2;a++) for(e=0;e<30;e++)
        level.lobbyState[l_optName + "_Body"][level.lobbyState[l_optName + "_Body"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (-45 + (a*90),0,420) + (0,sin(e*12)*280, cos(e*12)*280), "military_crate_field_upgrade_01",(e*12,90,0),time);
    for(a=0;a<2;a++) for(b=0;b<5;b++) for(e=0;e<15;e++)
        level.lobbyState[l_optName + "_Body"][level.lobbyState[l_optName + "_Body"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (-45 + (a*90), 0, 420) + (0, sin(e*24)*(40 + b*50), cos(e*24)*(40 + b*50) ), "military_crate_field_upgrade_01",(90+(e*24),90,0),time); 
    for(e=0;e<15;e++)
        level.lobbyState[l_optName + "_Seats"][level.lobbyState[l_optName + "_Seats"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (0,0,420) + (0,sin(e*24)*280, cos(e*24)*280), l_ModelID,(0,0,e*-24),time);
    for(e=0;e<3;e++)
        level.lobbyState[l_optName + "_Legs"][level.lobbyState[l_optName + "_Legs"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (82-e*82,0,420),l_ModelID,(0,0,0),time);
    for(e=0;e<2;e++) for(a=0;a<8;a++) 
        level.lobbyState[l_optName + "_Legs"][level.lobbyState[l_optName + "_Legs"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (-95+e*190,-190,55) + (0,a*25,a*50),l_ModelID,(-65,90,0),time);
    for(e=0;e<2;e++) for(a=0;a<8;a++)
        level.lobbyState[l_optName + "_Legs"][level.lobbyState[l_optName + "_Legs"].size] = modelSpawner(level.lobbyState[l_optName].modData["Origin"] + (-95+e*190,190,55) + (0,a*-25,a*50),l_ModelID,(65,90,0),time);

    foreach(model in level.lobbyState[l_optName + "_Body"])
        model linkTo(level.lobbyState[l_optName + "_Attach"]);
    foreach(model in level.lobbyState[l_optName + "_Seats"])
        model linkTo(level.lobbyState[l_optName + "_Attach"]);
        
    level.lobbyState[l_optName + "_Attach"] thread RotateFerrisWheel( l_optName );
    level.lobbyState[l_OptName + "_Attach"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 400 , "Delta" );
    level.lobbyState[l_optName + "_Attach"] thread OnDestroyDetachPlayers( l_optName );
}



//++++++++++++++++++++++++++++++
// EN : Rotate the casing of the function "FerrisWheel"
// JA : 機能 "FerrisWheel" の筐体を回転させる
//++++++++++++++++++++++++++++++
RotateFerrisWheel( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "FerrisWheel" is destroyed, terminate processing in this function
    // JA : 機能 "FerrisWheel" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );
    
    while( true )
    {
        for(a=0;a<360;a+=level.lobbyState[optName].modData["ChangeSpeedFerrisWheel"]) 
        {
            self rotateTo((0,self.angles[1],a),.2);
            wait .05;
        }
        for(a=360;a<0;a-=level.lobbyState[optName].modData["ChangeSpeedFerrisWheel"])
        {
            self rotateTo((0,self.angles[1],a),.2);
            wait .05;
        }
        wait .05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the rotation speed of the casing of the function "FerrisWheel"
// JA : 機能 "FerrisWheel" の筐体の回転速度を変更する
//++++++++++++++++++++++++++++++
SwitchFerrisWheelRotateSpeed( )
{
    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array     = [];
    
    l_Array[0]  = 1;
    l_Array[1]  = 2;
    l_Array[2]  = 3;
    l_Array[3]  = 4;
    l_Array[4]  = 5;
    l_Array[5]  = 6;
    l_Array[6]  = 7;
    l_Array[7]  = 8;
    l_Array[8]  = 9;
    l_Array[9]  = 10;
    l_Array[10] = 12;
    l_Array[11] = 14;
    l_Array[12] = 16;
    l_Array[13] = 18;
    l_Array[14] = 20;
    l_Array[15] = 25;
    l_Array[16] = 30;
    l_Array[17] = 40;
    l_Array[18] = 50;

    self ChangeLevelParameter( "FerrisWheel" , "ChangeSpeedFerrisWheel" , undefined , ::OnfFerrisWheel , l_Array , true , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Fireball"
// JA : 機能 "Fireball" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfFireball( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "Fireball" variable
    // JA : "Fireball" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "Fireball" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "Fireball" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateFireball ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "Fireball" at the coordinates of the launch destination.
// JA : 機能 "Fireball" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateFireball( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon("game_ended");
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon("disconnect");

    l_OptName = "Fireball";

    // EN : If the function "Fireball" is destroyed, terminate processing in this function
    // JA : 機能 "Fireball" が破壊されたら、この関数内の処理を終了する
    level Endon("end_lobby_" + l_OptName);

    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify("end_" + l_OptName);
    WaitFrame();
    
    l_ObjArray      = [];                       l_ObjDel        = [];
    l_ObjArray[0]   = l_OptName + "_Link";      l_ObjDel[0]     = true;
    
    l_listArray     = [];                       l_listDel       = [];
    l_listArray[0]  = l_OptName + "_Track";     l_listDel[0]    = false;
    l_listArray[1]  = l_OptName + "_Seats";     l_listDel[1]    = true;
    l_listArray[2]  = l_OptName + "_Cart";      l_listDel[2]    = true;

    // EN : Execute the completion wait process for the function "Vertigo"
    // JA : 機能 "Vertigo" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */   "claymore_explode" , /* discFxID */     "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  undefined ,         /* nukePoint */     undefined ,                     /* owner */     undefined ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );

    
    level.lobbyState[l_OptName + "_Track"] = [];
    
    level.lobbyState[l_OptName + "_Cart"]       = [];
    level.lobbyState[l_OptName + "_Seats"] = [];
    
    origin = location;
    angles = self.angles;
    
    level.lobbyState[l_OptName + "_Link"] = modelSpawner( origin + (0,0,356), "tag_origin", angles );
    level.lobbyState[l_OptName + "_Track"][0] = modelSpawner( origin, "military_crate_field_upgrade_01", angles, .05 );
    
    for(e=0;e<38;e++)
    {
        previous_track = level.lobbyState[l_OptName + "_Track"][level.lobbyState[l_OptName + "_Track"].size-1];
        level.lobbyState[l_OptName + "_Track"][level.lobbyState[l_OptName + "_Track"].size] = modelSpawner( previous_track.origin + (anglesToForward(previous_track.angles) * 57) + (anglesToUp(previous_track.angles) * 4.615), "military_crate_field_upgrade_01", previous_track.angles - (9.23, 0, 0), .05 );
    }
    
    model = "offhand_wm_deployable_cover";
    for(e=0;e<4;e++)
    {
        level.lobbyState[l_OptName + "_Seats"][e] = modelSpawner(level.lobbyState[l_OptName + "_Track"][e].origin + (0,0,6), "tag_origin", level.lobbyState[l_OptName + "_Track"][e].angles);
        
        level.lobbyState[l_OptName + "_Cart"][level.lobbyState[l_OptName + "_Cart"].size] = modelSpawner(level.lobbyState[l_OptName + "_Track"][e].origin + (0,0,28) + (anglesToForward(level.lobbyState[l_OptName + "_Track"][e].angles)*(-20)), model, (level.lobbyState[l_OptName + "_Track"][e].angles[0]+180, level.lobbyState[l_OptName + "_Track"][e].angles[1], level.lobbyState[l_OptName + "_Track"][e].angles[2]+90));
        
        if(e < 3)
            level.lobbyState[l_OptName + "_Cart"][level.lobbyState[l_OptName + "_Cart"].size] = modelSpawner(level.lobbyState[l_OptName + "_Track"][e].origin + (0,0,28) + (anglesToForward(level.lobbyState[l_OptName + "_Track"][e].angles)*(20)), model, (level.lobbyState[l_OptName + "_Track"][e].angles[0], level.lobbyState[l_OptName + "_Track"][e].angles[1], level.lobbyState[l_OptName + "_Track"][e].angles[2]+90));
        else
            level.lobbyState[l_OptName + "_Cart"][level.lobbyState[l_OptName + "_Cart"].size] = modelSpawner(level.lobbyState[l_OptName + "_Track"][e].origin + (0,0,28) + (anglesToForward(level.lobbyState[l_OptName + "_Track"][e].angles)*(20)), model, level.lobbyState[l_OptName + "_Track"][e].angles);
         
        level.lobbyState[l_OptName + "_Cart"][level.lobbyState[l_OptName + "_Cart"].size] = modelSpawner(level.lobbyState[l_OptName + "_Track"][e].origin + (0,0,10), "military_crate_large_stackable_01_dummy", level.lobbyState[l_OptName + "_Track"][e].angles); 
            
        for(b=(e*2);b<level.lobbyState[l_OptName + "_Cart"].size;b++)
            level.lobbyState[l_OptName + "_Cart"][b] linkTo(level.lobbyState[l_OptName + "_Seats"][e]);
        
        level.lobbyState[l_OptName + "_Seats"][e] linkto( level.lobbyState[l_OptName + "_Link"] );    
    }
    
    //thread array_thread(level.lobbyState[l_OptName + "_Seats"], ::monitorSeats, "Fireball", level.lobbyState[l_OptName + "_Seats"] );
    level.lobbyState[l_OptName + "_Link"] thread MovementFireball( l_OptName );
        
    level.lobbyState[l_OptName + "_Link"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 500 , "Absolute" );
    level.lobbyState[l_OptName + "_Link"] thread OnDestroyDetachPlayers( l_OptName );
}



//++++++++++++++++++++++++++++++
// EN : Function "Fireball" housing behavior processing
// JA : 機能 "Fireball" の筐体の挙動処理
//++++++++++++++++++++++++++++++
MovementFireball( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon("game_ended");
    // EN : If the function "Fireball" is destroyed, terminate processing in this function
    // JA : 機能 "Fireball" が破壊されたら、この関数内の処理を終了する
    level Endon("end_lobby_" + optName);

    while( isDefined(self) )
    {
        self RotatePitch( -40, 2.1, 1, 1 ); //-30
        wait 2.4;
        self RotatePitch( 90, 2.1, 1, 1 ); //30
        wait 2.4;
        
        for(e=0;e<5;e++)
        {
            self RotatePitch( -100 - (e*30), 2.1, 1, 1 ); 
            wait 2.3;
            self RotatePitch( 120 + (e*30), 2.1, 1, 1 ); 
            wait 2.3; 
        }
        self RotatePitch( -1220, 6, 1, 1 ); 
        
        for(e=0;e<120;e++)
        {
            effect = SpawnFx( level._effect["emp_detonation"], level.lobbyState[optName + "_Seats"][0].origin + AnglesToUp( level.lobbyState[optName + "_Seats"][0].angles ) * 20 );
            TriggerFX( effect );
            wait .05;
        }
        wait 6;
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Vertigo"
// JA : 機能 "Vertigo" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfVertigo( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "Vertigo" variable
    // JA : "Vertigo" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "Vertigo" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "Vertigo" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateVertigo ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "Vertigo" at the coordinates of the launch destination.
// JA : 機能 "Vertigo" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateVertigo( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    l_OptName = "Vertigo";

    // EN : If the function "Vertigo" is destroyed, terminate processing in this function
    // JA : 機能 "Vertigo" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + l_OptName );
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );
    WaitFrame( );
    
    l_ObjArray      = [];                       l_ObjDel        = [];
    l_ObjArray[0]   = l_OptName + "_Link";      l_ObjDel[0]     = true;
    
    l_listArray     = [];                       l_listDel       = [];
    l_listArray[0]  = l_OptName + "_Pole";      l_listDel[0]    = false;
    l_listArray[1]  = l_OptName + "_Seats";     l_listDel[1]    = true;
    l_listArray[2]  = l_OptName + "_Circle";    l_listDel[2]    = true;

    // EN : Execute the completion wait process for the function "Vertigo"
    // JA : 機能 "Vertigo" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */   "claymore_explode" , /* discFxID */     "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  undefined ,         /* nukePoint */     undefined ,                     /* owner */     undefined ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );

    origin = location + (0,0,15);
    
    level.lobbyState[l_OptName + "_Link"] = modelSpawner(origin, "tag_origin");
    
    level.lobbyState[l_OptName + "_Pole"] = [];
    level.lobbyState[l_OptName + "_Seats"] = [];
    level.lobbyState[l_OptName + "_Circle"] = [];
    for(i = 0; i < 25; i++) for(x = 0; x < 8; x++)
        level.lobbyState[l_OptName + "_Pole"][level.lobbyState[l_OptName + "_Pole"].size] = modelSpawner(origin+(cos(x*45)*25,sin(x*45)*25, i*57), "military_crate_field_upgrade_01", (90,(x*45)+90,0), .05);
    for(i = 0; i < 8; i++)
        level.lobbyState[l_OptName + "_Seats"][level.lobbyState[l_OptName + "_Seats"].size] = modelSpawner(origin+(cos(i*45)*75,sin(i*45)*75, 10), "military_crate_large_stackable_01_dummy", (0,(i*45)+90,0), .05);
        
    for(w = 0; w < 2; w++)
    {
        if(w == 1)
            level.lobbyState[l_OptName + "_Link"] rotateTo(level.lobbyState[l_OptName + "_Link"].angles+(0,22.5,0), .05);
        for(i = 0; i < 3; i++) for(x = 0; x < 8; x++)
            level.lobbyState[l_OptName + "_Circle"][level.lobbyState[l_OptName + "_Circle"].size] = modelSpawner(origin+(cos(x*45)*((i*30)+60),sin(x*45)*((i*30)+60), 120), "com_plasticcase_beige_big_iw6", (0,(x*45)+90,0), .05);
        
        foreach(package in level.lobbyState[l_OptName + "_Circle"])
            package linkTo(level.lobbyState[l_OptName + "_Link"]);    
    }    
        
    foreach(seat in level.lobbyState[l_OptName + "_Seats"])  
        seat linkTo(level.lobbyState[l_OptName + "_Link"]);
    //thread array_thread(level.lobbyState[l_OptName + "_Seats"], ::monitorSeats, "Vertigo", level.lobbyState[l_OptName + "_Seats"] );
    
    level.lobbyState[l_OptName + "_Link"] thread MovementVertigo( l_OptName , origin, origin + (0,0,1260) );
    
    level.lobbyState[l_OptName + "_Link"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 300 , "Default" );
    level.lobbyState[l_OptName + "_Link"] thread OnDestroyDetachPlayers( l_OptName );
}



//++++++++++++++++++++++++++++++
// EN : Function "Vertigo" housing behavior processing
// JA : 機能 "Vertigo" の筐体の挙動処理
//++++++++++++++++++++++++++++++
MovementVertigo( optName , start_z, end_z )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "Vertigo" is destroyed, terminate processing in this function
    // JA : 機能 "Vertigo" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    direction = -1;
    while( IsDefined( self ) )
    {
        if( direction == -1 )
        {
            direction = 1;
            self moveTo(end_z, 10, 5, 5);
            wait 10;
            random = randomIntRange(2, 5);
            //self vibrate(self.origin+(1,1,0), .2, .3, random);
            earthquake(.4, .6, self.origin, 300);
            wait random;
        }
        else
        {
            direction = -1;
            self moveTo(start_z, 1, .05, .05);
            wait 1;
            //self vibrate(self.origin+(1,1,0), .4, .6, 4);
            earthquake(.6, .8, self.origin, 300);
            wait 4;
        }
        wait .05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Centrox"
// JA : 機能 "Centrox" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfCentrox( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "Centrox" variable
    // JA : "Centrox" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "Centrox" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "Centrox" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateCentrox ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "Centrox" at the coordinates of the launch destination.
// JA : 機能 "Centrox" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateCentrox( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    l_OptName = "Centrox";

    // EN : If the function "Centrox" is destroyed, terminate processing in this function
    // JA : 機能 "Centrox" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + l_OptName );
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );
    WaitFrame( );
    
    l_ObjArray      = [];                       l_ObjDel        = [];
    l_ObjArray[0]   = l_OptName + "_Move";      l_ObjDel[0]     = true;
    
    l_listArray     = [];                       l_listDel       = [];
    l_listArray[0]  = l_OptName + "_Body";      l_listDel[0]    = false;
    l_listArray[1]  = l_OptName + "_Seats";     l_listDel[1]    = true;
    l_listArray[2]  = l_OptName + "_Center";    l_listDel[2]    = true;
    l_listArray[3]  = l_OptName + "_Lights";    l_listDel[3]    = true;

    // EN : Execute the completion wait process for the function "Centrox"
    // JA : 機能 "Centrox" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */  "claymore_explode" , /* discFxID */      "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  undefined ,         /* nukePoint */     undefined ,                     /* owner */     undefined ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );
    
    level.lobbyState[l_OptName + "_Body"]        = [];
    level.lobbyState[l_OptName + "_Seats"]  = [];
    level.lobbyState[l_OptName + "_Center"] = [];
    level.lobbyState[l_OptName + "_Lights"] = [];
    
    origin             = location + (40,0,20);
    level.lobbyState[l_OptName + "_Move"] = modelSpawner( origin, "tag_origin" );
    
    wait 1;
    
    time = .1;

    l_ModelID = "military_carepackage_01_friendly";

    for(e = 0; e < 4; e++) for(i = 0; i < 6; i++)
    {
        switch ( e )
        {
            case 0: l_ModelID = "military_carepackage_01_friendly"; break;
            case 1: l_ModelID = "military_carepackage_01_friendly"; break;
            case 2: l_ModelID = "veh8_mil_air_mquebec8_small"; break;
            case 3: l_ModelID = "ctf_game_flag_east"; break;
        }
        if ( scripts\mp\utility\game::GetGameType( ) == "br" )
        {
            if ( l_ModelID == "military_carepackage_01_friendly" ) { l_ModelID = "com_plasticcase_beige_big_iw6"; }
        }

        level.lobbyState[l_OptName + "_Center"][level.lobbyState[l_OptName + "_Center"].size] = modelSpawner(origin + (cos(i*60)*20,sin(i*60)*20, e*57), l_ModelID, (90,(i*60)+90,90), time, level.airDropCrateCollision);//Center
    }
    for(i = 0; i < 15; i++)
        level.lobbyState[l_OptName + "_Body"][level.lobbyState[l_OptName + "_Body"].size] = modelSpawner(origin + (cos(i*24)*60,sin(i*24)*60, -20), "military_crate_field_upgrade_01", (0,(i*24),0), time, level.airDropCrateCollision);//floor inner 
    for(i = 0; i < 25; i++)
        level.lobbyState[l_OptName + "_Body"][level.lobbyState[l_OptName + "_Body"].size] = modelSpawner(origin + (cos(i*14.4)*120,sin(i*14.4)*120, -20), "military_crate_field_upgrade_01", (0,(i*14.4),0), time, level.airDropCrateCollision);//floor outer 
    for(i = 0; i < 30; i++)
    {
        level.lobbyState[l_OptName + "_Body"][level.lobbyState[l_OptName + "_Body"].size] = modelSpawner(origin + (cos(i*12)*160,sin(i*12)*160, 20), "military_crate_field_upgrade_01", (90,(i*12)+90,90), time, level.airDropCrateCollision);//Wall
        
        if( level.lobbyState[l_OptName + "_Body"].size != 68 && level.lobbyState[l_OptName + "_Body"].size != 69 && level.lobbyState[l_OptName + "_Body"].size != 70 )
        {
            level.lobbyState[l_OptName + "_Lights"][level.lobbyState[l_OptName + "_Lights"].size] = modelSpawner(origin + (cos(i*12)*150,sin(i*12)*150, RandomIntRange( 10, 30 )), "tag_origin", (90,(i*12)+90,90), time);//Lights
            wait .05;
            playFxOnTag(scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ), level.lobbyState[l_OptName + "_Lights"][level.lobbyState[l_OptName + "_Lights"].size-1], "tag_origin");
        }
    }
    for(i = 0; i < 10; i++)
        level.lobbyState[l_OptName + "_Body"][level.lobbyState[l_OptName + "_Body"].size] = modelSpawner(origin + (cos(i*36)*155,sin(i*36)*155, 20), "military_crate_field_upgrade_01", (90,(i*36)+90,90), time);//Seats Visual  
    for(i = 0; i < 10; i++)
        level.lobbyState[l_OptName + "_Seats"][level.lobbyState[l_OptName + "_Seats"].size] = modelSpawner(origin + (cos(i*36)*145,sin(i*36)*145, 0), "tag_origin", (0,(i*36)+180,0));//Seats   
        
    level.lobbyState[l_OptName + "_Body"][68] MoveTo(level.lobbyState[l_OptName + "_Body"][67].origin, .3);//Doors Open
    level.lobbyState[l_OptName + "_Body"][69] MoveTo(level.lobbyState[l_OptName + "_Body"][40].origin, .3);//Doors Open 
    
    foreach( model in level.lobbyState[l_OptName + "_Lights"] )
        model linkto( level.lobbyState[l_OptName + "_Move"] );
    foreach( model in level.lobbyState[l_OptName + "_Seats"] )
        model LinkTo( level.lobbyState[l_OptName + "_Move"] ); 
    // thread array_thread(level.lobbyState[l_OptName + "_Seats"], ::monitorSeats, "Centrox", level.lobbyState[l_OptName + "_Seats"] );
        
    level.lobbyState[l_OptName + "_Move"] thread MovementCentrox( l_OptName );
    
    level.lobbyState[l_OptName + "_Move"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 300 , "Absolute" );
    level.lobbyState[l_OptName + "_Move"] thread OnDestroyDetachPlayers( l_OptName );
}



//++++++++++++++++++++++++++++++
// EN : Function "Centrox" housing behavior processing
// JA : 機能 "Centrox" の筐体の挙動処理
//++++++++++++++++++++++++++++++
MovementCentrox( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "Centrox" is destroyed, terminate processing in this function
    // JA : 機能 "Centrox" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    while(isDefined(self))
    {
        level waittill(optName + "_RidePlayer");
        
        level.lobbyState[optName + "_Body"][68] MoveTo(level.lobbyState[optName + "_Body"][67].origin+(10,31,0), .3);
        level.lobbyState[optName + "_Body"][69] MoveTo(level.lobbyState[optName + "_Body"][40].origin+(-10,-31,0), .3);
        wait .5; 
        
        foreach(model in level.lobbyState[optName + "_Body"])
            model LinkTo( level.lobbyState[optName + "_Move"] ); 
            
        wait .1;
        self MoveTo( (self.origin[0], self.origin[1], self.origin[2] + 90), 5 );
        
        wait 5;
        earthquake(.4, 1, self.origin, 300);  
        
        sign  = 1;
        speed = 4;
        for(e=0;e<4;e++)
        {
            if( e > 1 )
                sign = -1;
            for(i=0;i<40;i++)
            {
                self RotateTo( self.angles + ( .6 * sign, speed, 0 ), .5 );
                if( e > 1 )
                    speed--;
                else if( speed < 180 )
                    speed++;
                wait .3;
            }
        }
        wait 1;

        //self vibrate(self.origin+(1,1,0), .2, .3, 6);  
        earthquake(.4, 1, self.origin, 300);    
        self MoveTo( (self.origin[0], self.origin[1], self.origin[2] - 90), 5 );
        
        wait 5;
        foreach(model in level.lobbyState[optName + "_Body"])
            model Unlink( level.lobbyState[optName + "_Move"] );    
            
        wait .3;
        level.lobbyState[optName + "_Body"][68] MoveTo(level.lobbyState[optName + "_Body"][67].origin, .3);
        level.lobbyState[optName + "_Body"][69] MoveTo(level.lobbyState[optName + "_Body"][40].origin, .3);
        
        // EN: Get information on all participating players
        // JA: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // EN: If the player is still on board
            // JA: まだプレイヤーが搭乗している場合
            if ( IsDefined( player.optionsState[optName + "_Ride"] ) )
            {
                // EN: Unlink players and seats
                // JA: プレイヤーと座席のリンクを解除する
                player Unlink( );

                // EN: Set player posture to standing, making prone and running possible
                // JA: プレイヤーの姿勢を 立ち に設定し、伏せと走りを可能にする
                player SetStance( "stand" );
                player AllowSprint( true );
                player AllowProne( true );

                // EN: Return player coordinates to pre-boarding coordinates
                // JA: プレイヤーの座標を搭乗前の座標に戻す
                // player SetOrigin( player.optionsState[optName + "_Origin"] );
                
                // EN: Assume that the seat is not occupied.
                // JA: その座席に未搭乗であるとする
                player.optionsState[optName + "_Ride"] = undefined;
                player.optionsState[optName + "_Origin"] = undefined;
            }
        }
        wait .3;
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "MerryGoRound"
// JA : 機能 "MerryGoRound" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfMerryGoRound( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "MerryGoRound" variable
    // JA : "MerryGoRound" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "MerryGoRound" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "MerryGoRound" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateMerryGoRound ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "MerryGoRound" at the coordinates of the launch destination.
// JA : 機能 "MerryGoRound" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateMerryGoRound( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );
    
    l_optName = "MerryGoRound";

    // EN : If the function "MerryGoRound" is destroyed, terminate processing in this function
    // JA : 機能 "MerryGoRound" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + l_optName );
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_optName );
    WaitFrame( );
    
    l_ObjArray      = [];                       l_ObjDel        = [];
    l_ObjArray[0]   = l_optName + "_Move";      l_ObjDel[0]     = true;
    
    l_listArray     = [];                       l_listDel       = [];
    l_listArray[0]  = l_optName + "_Body";      l_listDel[0]    = true;
    l_listArray[1]  = l_optName + "_Seats";     l_listDel[1]    = true;
    l_listArray[2]  = l_optName + "_SeatTag";   l_listDel[2]    = true;
    l_listArray[3]  = l_optName + "_Lights";    l_listDel[3]    = true;

    // EN : Execute the completion wait process for the function "MerryGoRound"
    // JA : 機能 "MerryGoRound" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */  "claymore_explode" , /* discFxID */      "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  undefined ,         /* nukePoint */     undefined ,                     /* owner */     undefined ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );

    level.lobbyState[l_optName].modData["ChangeSpeedMerryGoRound"]           = 6;
    level.lobbyState[l_optName + "_Body"]         = [];
    level.lobbyState[l_optName + "_Seats"]    = [];
    level.lobbyState[l_optName + "_SeatTag"] = [];
    level.lobbyState[l_optName + "_Lights"]   = [];
    level.lobbyState[l_optName + "_Move"]     = modelSpawner(location + (0,0,35) , "tag_origin");
    //modelSpawner(self.origin + (0,0,35) + anglesToForward(self getPlayerAngles())*20, "tag_origin");
    
    sizes       = [0,43,75,107,138,170];
    sizesSeats  = [93,139];
    sizesLights = [104,138];

    num = 0;
    time = .05;

    l_ModelID = "military_carepackage_01_enemy";
    if ( scripts\mp\utility\game::GetGameType( ) == "br" )
    {
        if ( l_ModelID == "military_carepackage_01_enemy" ) { l_ModelID = "com_plasticcase_beige_big_iw6"; }
    }

    wait .5;
    for(e = 0; e < 3; e++) for(i = 0; i < 6; i++)
        level.lobbyState[l_optName + "_Body"][level.lobbyState[l_optName + "_Body"].size] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (cos(i*60) * 13, sin(i*60) * 13, 15 + e*55), l_ModelID, (90, (i*60) + 90, 0), time, level.airDropCrateCollision );
    
    for(z = 0; z < 2; z++) for(e = 0; e < 6; e++) for(i = 0; i < 6*e; i++)
    {
        switch ( z )
        {
            case 0: l_ModelID = "military_crate_large_stackable_01_dummy"; break;
            case 1: l_ModelID = "military_crate_field_upgrade_01"; break;
        }
        level.lobbyState[l_optName + "_Body"][level.lobbyState[l_optName + "_Body"].size] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (cos(i*360 / (6*e)) * sizes[e], sin(i*360 / (6*e)) * sizes[e], -20 + 180*z), l_ModelID, (0, (i* 360 / (6*e)) + 90, 0), time, level.airDropCrateCollision );
        level.lobbyState[l_optName + "_Body"][level.lobbyState[l_optName + "_Body"].size -1] linkTo(level.lobbyState[l_optName + "_Move"]);
    }
    
    for(e = 0; e < 10; e++) 
    {
        level.lobbyState[l_optName + "_Lights"][e] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (cos(e*36) * sizesLights[e%2], sin(e*36) * sizesLights[e%2], 148), "tag_origin", (0, (e*36), 0), time );
        level.lobbyState[l_optName + "_Lights"][e+10] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (cos(e*36) * 168, sin(e*36) * 168, 148), "tag_origin", (0, (e*36), 0), time);
        wait .05;
        playFxOnTag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ) , level.lobbyState[l_optName + "_Lights"][e], "tag_origin");
        playFxOnTag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ) , level.lobbyState[l_optName + "_Lights"][e+10], "tag_origin");

        if      ( e % 4 == 0 ) { l_ModelID = "veh8_mil_air_mquebec8_small"; }
        else if ( e % 4 == 1 ) { l_ModelID = "veh8_mil_lnd_atango_physics_mp"; }
        else if ( e % 4 == 2 ) { l_ModelID = "wmd_vm_missile_cruise_warhead"; }
        else if ( e % 4 == 3 ) { l_ModelID = "veh8_mil_lnd_whotel"; }
        
        level.lobbyState[l_optName + "_Seats"][level.lobbyState[l_optName + "_Seats"].size] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (cos(e*36) * sizesSeats[e%2], sin(e*36) * sizesSeats[e%2], 12), l_ModelID, (0, (e*36), 0), time );
        level.lobbyState[l_optName + "_SeatTag"][level.lobbyState[l_optName + "_SeatTag"].size] = modelSpawner(level.lobbyState[l_optName + "_Move"].origin + (0, 0, 12), "tag_origin", (0, (e*36), 0), time);
        
        level.lobbyState[l_optName + "_Seats"][level.lobbyState[l_optName + "_Seats"].size -1] linkTo(level.lobbyState[l_optName + "_SeatTag"][level.lobbyState[l_optName + "_SeatTag"].size -1]);
    } 
    
    level.lobbyState[l_optName + "_Move"] thread RotateMerryGoRound( l_optName );
    foreach(tags in level.lobbyState[l_optName + "_SeatTag"])
    {
        tags thread RotateMerryGoRound( l_optName );
        tags thread MoveSeatsMerryGoRound( l_optName );
        //tags thread monitorSeats( "Merry Go Round", level.lobbyState[l_optName + "_Seats"] );
        
        level.lobbyState[l_optName + "_Seats"][ num ] linkTo( tags );
        level.lobbyState[l_optName + "_Lights"][ num ] linkTo( level.lobbyState[l_optName + "_Move"] );
        level.lobbyState[l_optName + "_Lights"][ num + 10 ] linkTo( level.lobbyState[l_optName + "_Move"] );
        num++;
    }
    
    level.lobbyState[l_OptName + "_Move"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 300 , "Default" );
    level.lobbyState[l_optName + "_Move"] thread OnDestroyDetachPlayers( l_optName );
    //thread array_thread(level.lobbyState[l_optName + "_Seats"], ::monitorSeats, "Merry Go Round", level.lobbyState[l_optName + "_Seats"] );
}



//++++++++++++++++++++++++++++++
// EN : Move seats in function "MerryGoRound"
// JA : 機能 "MerryGoRound" の座席を移動させる
//++++++++++++++++++++++++++++++
MoveSeatsMerryGoRound( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "MerryGoRound" is destroyed, terminate processing in this function
    // JA : 機能 "MerryGoRound" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    while(isDefined(self))
    {
        RandNum = randomfloatrange(1,3);
        self moveZ(65,RandNum,.4,.4);
        wait RandNum;
        RandNum = randomfloatrange(1,3);
        self moveZ(-65,RandNum,.4,.4);
        wait RandNum;
    }
}



//++++++++++++++++++++++++++++++
// EN : Rotate the casing of the function "MerryGoRound"
// JA : 機能 "MerryGoRound" の筐体を回転させる
//++++++++++++++++++++++++++++++
RotateMerryGoRound( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "MerryGoRound" is destroyed, terminate processing in this function
    // JA : 機能 "MerryGoRound" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );
    // EN : When the speed of the function "MerryGoRound" is changed, finish processing in this function
    // JA : 機能 "MerryGoRound" の速度が変更されたら、この関数内の処理を終了する
    level Endon("ChangeSpeed_" + optName );
    
    while(isDefined(self))
    {
        self rotateYaw(360, level.lobbyState[optName].modData["ChangeSpeedMerryGoRound"]);
        wait level.lobbyState[optName].modData["ChangeSpeedMerryGoRound"];
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the rotation speed of the casing of the function "MerryGoRound"
// JA : 機能 "MerryGoRound" の筐体の回転速度を変更する
//++++++++++++++++++++++++++++++
SwitchMerryGoRoundRotateSpeed( )
{
    l_optName = "MerryGoRound";

    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array     = [];
    
    l_Array[0]  = 50;
    l_Array[1]  = 40;
    l_Array[2]  = 30;
    l_Array[3]  = 25;
    l_Array[4]  = 20;
    l_Array[5]  = 18;
    l_Array[6]  = 16;
    l_Array[7]  = 14;
    l_Array[8]  = 12;
    l_Array[9]  = 10;
    l_Array[10] = 9;
    l_Array[11] = 8;
    l_Array[12] = 7;
    l_Array[13] = 6;
    l_Array[14] = 5;
    l_Array[15] = 4;
    l_Array[16] = 3;
    l_Array[17] = 2;
    l_Array[18] = 1;
    l_Array[19] = 0.9;
    l_Array[20] = 0.8;
    l_Array[21] = 0.7;
    l_Array[22] = 0.6;
    l_Array[23] = 0.5;
    l_Array[24] = 0.4;
    l_Array[25] = 0.3;
    l_Array[26] = 0.2;
    l_Array[27] = 0.1;

    self ChangeLevelParameter( l_optName , "ChangeSpeed" + l_optName , undefined , ::OnfMerryGoRound , l_Array , true , undefined );

    if ( IsDefined( level.lobbyState[l_OptName + "_Move"] ) )
    {
        wait 0.1;
        level Notify("ChangeSpeed_" + l_OptName);
        level.lobbyState[l_OptName + "_Move"] thread RotateMerryGoRound( l_OptName );
        foreach(tags in level.lobbyState[l_OptName + "_SeatTag"])
        {
            tags thread RotateMerryGoRound(l_OptName);
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "TheClaw"
// JA : 機能 "TheClaw" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfTheClaw( )
{
    // EN : Execute WaitFireBullets( ) or exit depending on the existence state of the "TheClaw" variable
    // JA : "TheClaw" 変数の存在状態に合わせて、 "WaitFireBullets" 関数を実行するか終了する
    self SwitchOnfLevelFunction(
        /* optName */                               "TheClaw" ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               "PleaseShooting" ,
        /* optArg1 */       /* optName1 */          "TheClaw" ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::CreateTheClaw ,
        /* optArg4 */       /* notice */            true ,
        /* optArg5 */       /* specificWeapon */    undefined ,
        /* optArg6 */       /* effectData */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
        /* optArg7 */       /* endDeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// EN : Create a casing for the function "TheClaw" at the coordinates of the launch destination.
// JA : 機能 "TheClaw" の筐体を、発射先の座標に作成する
//++++++++++++++++++++++++++++++
CreateTheClaw( location )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends the process if "you disconnect from the room"
    // JA : この関数は「自分が部屋から切断した」場合に処理を終了する
    self Endon( "disconnect" );

    l_OptName = "TheClaw";

    // EN : If the function "TheClaw" is destroyed, terminate processing in this function
    // JA : 機能 "TheClaw" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + l_OptName );
    
    // EN: Set the specified option name as the function termination trigger
    // JA: 指定のオプション名の終了トリガーを通知する
    self Notify( "end_" + l_OptName );
    WaitFrame( );

    l_ObjArray      = [];
    l_ObjArray[0]   = l_OptName + "_Attach";
    l_ObjArray[1]   = l_OptName + "_Link";
    l_ObjDel        = [];
    l_ObjDel[0]     = false;
    l_ObjDel[1]     = false;
    l_listArray     = [];
    l_listArray[0]  = l_OptName + "_Legs";
    l_listArray[1]  = l_OptName + "_Boxes";
    l_listArray[2]  = l_OptName + "_Seats";
    l_listDel       = [];
    l_listDel[0]    = true;
    l_listDel[1]    = false;
    l_listDel[2]    = false;

    // EN : Execute the completion wait process for the function "TheClaw"
    // JA : 機能 "TheClaw" の終了待機処理を実行する
    level thread OnWaitingDestroyEntities(
        /* delMode */   "Random" ,          /* optName */       l_OptName ,                     /* sfxID */     "exp_helicopter_fuel" ,
        /* expFxID */  "claymore_explode" , /* discFxID */      "white_phosphorus_inair_explosion" ,
        /* eqPower */   0.3 ,               /* eqTime */        1 ,                             /* eqRange */   2000 ,
        /* expTime */   0.01 ,              /* delay */         10 ,
        /* lastNuke */  true ,              /* nukePoint */     location ,                      /* owner */     self ,
        /* objArray */  l_ObjArray ,        /* objDelete */     l_ObjDel ,
        /* listArray */ l_listArray ,       /* listDelete */    l_listDel
        );
    
    pos = location + ( 0 , 15 , 460 );
    level.lobbyState[l_OptName + "_Seats"] = [];
    level.lobbyState[l_OptName + "_Boxes"] = [];
    level.lobbyState[l_OptName + "_Legs"] = [];
    
    level.lobbyState[l_OptName + "_Attach"] = ModelSpawner(location+(0,55,60),"tag_origin");
    level.lobbyState[l_OptName + "_Link"] = ModelSpawner(pos,"tag_origin");

    l_ModelID = "military_carepackage_01_friendly";
    if ( scripts\mp\utility\game::GetGameType( ) == "br" )
    {
        if ( l_ModelID == "military_carepackage_01_friendly" ) { l_ModelID = "com_plasticcase_beige_big_iw6"; }
    }

    for ( e = 0; e < 2; e++ )
    {
        for ( a = 0; a < 8; a++ )
        {
            level.lobbyState[l_OptName + "_Legs"][level.lobbyState[l_OptName + "_Legs"].size] = ModelSpawner( location + ( -220 , -145+e*320 , 0 ) + ( a*28 , 0 , a*60 ) ,
                                                        l_ModelID , // military_carepackage_01_juggernaut
                                                        ( 25 , 0 , 90 ) ,
                                                        0.05
                                                        );
        }
    }
    for ( e = 0; e < 2; e++ )
    {
        for ( a = 0; a < 8; a++ )
        {
            level.lobbyState[l_OptName + "_Legs"][level.lobbyState[l_OptName + "_Legs"].size] = ModelSpawner( location + ( 220 , -145+e*320 , 0 ) + ( a*-28 , 0 , a*60 ) ,
                                                        l_ModelID , // military_carepackage_01_juggernaut
                                                        ( -25 , 0 , 90 ) ,
                                                        0.05
                                                        );
        }
    }
    for ( a = 0; a < 5; a++ )
    {
        for ( e = 0; e < 8; e++ )
        {
            level.lobbyState[l_OptName + "_Boxes"][level.lobbyState[l_OptName + "_Boxes"].size] = ModelSpawner( location + ( 0 , -125+a*70 , 460 ) + ( sin( -90+e*45 ) *25 , 0 , sin( e*45 ) *25 ) ,
                                                        "military_crate_field_upgrade_01" , // military_carepackage_01_enemy
                                                        ( ( e*45 ) , 180 , 0 ) ,
                                                        0.05
                                                        );
        }
    }
    for ( a = 0; a < 8; a++ )
    {
        for ( e = 0; e < 6; e++ )
        {
            level.lobbyState[l_OptName + "_Boxes"][level.lobbyState[l_OptName + "_Boxes"].size] = ModelSpawner( location + ( 0 , 15 , 460 ) + ( cos( a*45 )*30 , sin( a*45 )*30 , e*-70 ) ,
                                                        "military_crate_field_upgrade_01" , // military_crate_field_upgrade_01
                                                        ( 0 , (a*45) + 90 , 90 ) ,
                                                        0.05
                                                        );
        }
    }
    level.lobbyState[l_OptName + "_Boxes"][level.lobbyState[l_OptName + "_Boxes"].size] = ModelSpawner( location + ( 0 , 15 , 60 ) ,
                                                "military_crate_field_upgrade_01" , // military_crate_large_stackable_01_dummy
                                                ( 0 , 90 , 90 ) ,
                                                0.05
                                                );
    for ( a = 0; a < 2; a++ )
    {
        for ( e = 0; e < 12; e++ )
        {
            level.lobbyState[l_OptName + "_Boxes"][level.lobbyState[l_OptName + "_Boxes"].size] = ModelSpawner( location + ( 0 , 15 , 100 ) + ( cos( e*30 )*40+a*55 , sin( e*30 )*40+a*55 , -70 ) ,
                                                        "military_crate_field_upgrade_01" , // military_crate_large_stackable_01_jugg
                                                        ( 0 , ( e*30 )+-90+a*90 , 0 ) ,
                                                        0.05
                                                        );
        }
    }
    for ( e = 0; e < 12; e++ )
    {
        level.lobbyState[l_OptName + "_Seats"][level.lobbyState[l_OptName + "_Seats"].size] = ModelSpawner( location + ( 0 , 15 , 95 ) + ( cos( e*30 )*95 , sin( e*30 )*95 , -70) ,
                                                            "military_crate_field_upgrade_01" , // military_crate_large_stackable_01_dummy
                                                            undefined ,
                                                            0.05
                                                            );
    }
    foreach ( model in level.lobbyState[l_OptName + "_Boxes"] )
    {
        model LinkTo( level.lobbyState[l_OptName + "_Link"] );
    }

    foreach ( model in level.lobbyState[l_OptName + "_Seats"] )
    {
        model LinkTo( level.lobbyState[l_OptName + "_Link"] );
    }

    level.lobbyState[l_OptName + "_Link"] thread ClawMovements( l_OptName );
    level.lobbyState[l_OptName + "_Attach"] thread OnAttractionPlayersMonitoring( l_OptName , level.lobbyState[l_OptName + "_Seats"] , 400 , "Delta" );
    level.lobbyState[l_optName + "_Attach"] thread OnDestroyDetachPlayers( l_optName );
}



//++++++++++++++++++++++++++++++
// EN : Function "TheClaw" housing behavior processing
// JA : 機能 "TheClaw" の筐体の挙動処理
//++++++++++++++++++++++++++++++
ClawMovements( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : If the function "TheClaw" is destroyed, terminate processing in this function
    // JA : 機能 "TheClaw" が破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );

    for ( a = 0; a >= -40; a -= 2 )
    {
        self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
        wait 0.1;
    }

    for ( a = a; a <= 60; a += 3 )
    {
        self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
        wait 0.1;
    }

    for ( a = a; a >= -80; a -= 3 )
    {
        self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
        wait 0.05;
    }

    for ( a = a; a <= 100; a += 4 )
    {
        self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
        wait 0.05;
    }

    while( true )
    {
        for ( a = a; a >= -105; a -= 5 )
        {
            self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
            wait 0.05;
        }

        for ( a = a; a <= 105; a += 5 )
        {
            self RotateTo( ( a , self.angles[1] , 0 ) , 0.5 );
            wait 0.05;
        }
        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Attraction function monitoring process for players on the cabinet
// JA : アトラクション機能の、筐体のプレイヤーに対するモニタリング処理
//++++++++++++++++++++++++++++++
OnAttractionPlayersMonitoring( optName , seatArray , distance , linkType )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : When the attraction is destroyed, end the processing in this function
    // JA : アトラクションが破壊されたら、この関数内の処理を終了する
    level Endon( "end_lobby_" + optName );
    
    l_Seat = [];
    // EN: Add a structure to each Seat variable
    // JA: 各 シート 変数に構造体を追加する
    for ( i = 0; i < seatArray.size; i++ )
    {
        l_Seat[i] = SpawnStruct( );
        l_Seat[i].occupied = false;
    }

    // EN : Perform infinite loop processing while attraction exists
    // JA : アトラクションが存在する間、無限ループ処理を行う
    while ( IsDefined( self ) )
    {
        // EN: Get information on all participating players
        // JA: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // EN: When the distance between the player and attraction is less than specified distance
            // JA: プレイヤー と アトラクション の距離が 指定の距離 未満の時に
		    if ( Distance( self.origin , player.origin ) < distance )
            {
                // EN: If the player is not yet on board attraction
                // JA: まだプレイヤーが アトラクション に搭乗していない場合
                if ( !IsDefined( player.optionsState[optName + "_Ride"] ) )
                {
                    // EN: Display the specified text in the center of the screen
                    // JA: 画面中央に指定の文章を表示する
                    player ShowCenterMessage( player.curLang , "Notice" , "UseToRide" , undefined , undefined , undefined );

                    // EN: While the "Use" button is pressed
                    // JA: "使用" ボタンが押されている間
                    if ( player GetKeycodePressed( "Use" , "Use" ) )
                    {
                        // EN: choose seats at random
                        // JA: 座席をランダムで選ぶ
                        l_Random = RandomIntRange( 0 , l_Seat.size );
                        
                        // EN: If no one is boarding the seat yet
                        // JA: まだその座席に誰も搭乗していない場合
                        if ( l_Seat[l_Random].occupied == false )
                        {
							// EN: Remember the player's coordinates before boarding
							// JA: プレイヤーの搭乗前の座標を記憶する
							player.optionsState[optName + "_Origin"] = player.origin;

                            // EN: Set player posture to crouching, making prone and running impossible
                            // JA: プレイヤーの姿勢を しゃがみ に設定し、伏せと走りを不可能にする
                            player SetStance( "crouch" );
                            player AllowSprint( false );
                            player AllowProne( false );

                            // EN: Link (sync) players to seats in attraction
                            // JA: プレイヤーを アトラクション の座席にリンク（同期）する
                            switch ( linkType )
                            {
                                case "Default":     player PlayerLinkTo( seatArray[l_Random] ); break;
                                case "Delta":       player PlayerLinkToDelta( seatArray[l_Random] ); break;
                                case "Absolute":    player PlayerLinkToAbsolute( seatArray[l_Random] , "tag_origin" ); break;
                            }

                            // EN: Assume that you are currently boarding that seat.
                            // JA: その座席に搭乗中であるとする
                            player.optionsState[optName + "_Ride"] = l_Random;
                            l_Seat[l_Random].occupied = true;

                            // EN: Notify players when they board an attraction
                            // JA: プレイヤーがアトラクションに搭乗したことを通知する
                            level Notify( optName + "_RidePlayer" );

                            wait 0.5;
                        }
                    }
                }
            }
            
            // EN: If the player is already on board attraction
            // JA: 既にプレイヤーが アトラクション に搭乗している場合
            if ( IsDefined( player.optionsState[optName + "_Ride"] ) )
            {
                // EN: Display the specified text in the center of the screen
                // JA: 画面中央に指定の文章を表示する
                player ShowCenterMessage( player.curLang , "Notice" , "UseToRide" , undefined , undefined , undefined );

                // EN: When the button to throw tactical is pressed
                // JA: タクティカルを投げるボタンが押されたら
                if ( player GetKeycodePressed( "Tactical" , "Tactical" ) )
                {
                    // EN: Unlink players and seats
                    // JA: プレイヤーと座席のリンクを解除する
                    player Unlink( );

                    // EN: Set player posture to standing, making prone and running possible
                    // JA: プレイヤーの姿勢を 立ち に設定し、伏せと走りを可能にする
                    player SetStance( "stand" );
                    player AllowSprint( true );
                    player AllowProne( true );
                    
                    // EN: Return player coordinates to pre-boarding coordinates
                    // JA: プレイヤーの座標を搭乗前の座標に戻す
                    // player SetOrigin( player.optionsState[optName + "_Origin"] );
                    
                    // EN: Assume that the seat is not occupied.
                    // JA: その座席に未搭乗であるとする
                    l_Seat[player.optionsState[optName + "_Ride"]].occupied = false;
                    player.optionsState[optName + "_Ride"] = undefined;
                    player.optionsState[optName + "_Origin"] = undefined;

                    wait 0.5;
                }
            }
        }

        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// EN : Process for disembarking players who are still boarding the chassis when the specified function is finished
// JA : 指定の機能が終了された時に、まだ筐体に搭乗しているプレイヤーを降車させる処理
//++++++++++++++++++++++++++++++
OnDestroyDetachPlayers( optName )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    
    // EN : Wait until the specified function is finished
    // JA : 指定の機能が終了されるまで待機する
    level WaitTill( "end_lobby_" + optName );

    // EN: Get information on all participating players
    // JA: 参加中の全プレイヤー情報を取得
    foreach( player in level.players )
    {
        // EN: If the player is still on board
        // JA: まだプレイヤーが搭乗している場合
        if ( IsDefined( player.optionsState[optName + "_Ride"] ) )
        {
            // EN: Unlink players and seats
            // JA: プレイヤーと座席のリンクを解除する
            player Unlink( );

            // EN: Set player posture to standing, making prone and running possible
            // JA: プレイヤーの姿勢を 立ち に設定し、伏せと走りを可能にする
            player SetStance( "stand" );
            player AllowSprint( true );
            player AllowProne( true );

            // EN: Return player coordinates to pre-boarding coordinates
            // JA: プレイヤーの座標を搭乗前の座標に戻す
            // player SetOrigin( player.optionsState[optName + "_Origin"] );
            
            // EN: Assume that the seat is not occupied.
            // JA: その座席に未搭乗であるとする
            player.optionsState[optName + "_Ride"] = undefined;
            player.optionsState[optName + "_Origin"] = undefined;
        }
    }

}



//++++++++++++++++++++++++++++++
// EN : General-purpose processing that destroys the physical object created when the specified function ends
// JA : 指定した機能が終了された時に 生成された物理オブジェクト を破壊する汎用処理
//++++++++++++++++++++++++++++++
OnWaitingDestroyEntities( delMode , optName , sfxID , expFxID , discFxID , eqPower , eqTime , eqRange , expTime , delay , lastNuke , nukePoint , owner , objArray , objDelete , listArray , listDelete )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    // EN : Wait for the specified function to finish
    // JA : 指定した機能が終了されるのを待機する
    level WaitTill( "end_lobby_" + optName );

    // EN : If the deletion method is random, decide the method randomly
    // JA : 削除方式がランダムの場合は、ランダムで方法を決める
    l_DelMode = delMode;
    if ( l_DelMode == "Random" )
    {
        if ( scripts\engine\utility::Cointoss( ) )  { l_DelMode = "Explode"; }
        else                                        { l_DelMode = "Discrete"; }
    }

    // EN : Unlink, perform physical processing, and perform various effects on specified physical objects.
    // JA : 指定した物理オブジェクトに対して、リンクの解除、物理処理、各種エフェクトを実行する
    LaunchEntityDestroyPhysics( listArray , listDelete , objArray , objDelete , sfxID , expFxID , discFxID , expTime , eqPower , eqTime , eqRange , l_DelMode , delay );

    // EN : If a nuclear explosion is specified and if it is an explosive type, a nuclear explosion will occur at the end.
    // JA : 核爆発の指定がある場合、且つ爆破式の場合に、最後に核爆発を起こす
    if ( IsDefined( lastNuke ) )
    {
        if ( l_DelMode == "Explode" )
        {
            owner thread ExecNuclearExplosion( nukePoint , owner );
        }
    }

    // EN : Wait for the specified time
    // JA : 指定時間分待機する
    wait delay;
    
    // EN : Delete the specified physical object
    // JA : 指定した物理オブジェクトを削除する
    foreach ( listData in listArray )
    {
        DeleteEntities( listData    , undefined );
    }
    foreach ( objData in objArray )
    {
        DeleteEntities( undefined   , objData );
    }
}



//++++++++++++++++++++++++++++++
// EN : General-purpose processing that removes links, performs physical processing, and performs various effects on specified physical objects.
// JA : 指定した物理オブジェクトに対して、リンクの解除、物理処理、各種エフェクトを実行する汎用処理
//++++++++++++++++++++++++++++++
LaunchEntityDestroyPhysics( listArray , listDelete , objArray , objDelete , sfxID , expFxID , discFxID , expTime , eqPower , eqTime , eqRange , delMode , delay )
{
    l_Time = 0;

    // EN : When the deletion method is discrete
    // JA : 削除方式が離散式の場合
    if ( delMode == "Discrete" )
    {
        // EN : Get random time required for entity to move
        // JA : エンティティが移動するための所要時間をランダムで取得する
        l_Time = RandomIntRange( 1 , delay );
    }

    // EN : If list exists
    // JA : リストが存在する場合
    if ( IsDefined( listArray ) )
    {
        for ( listNum = 0; listNum < listArray.size; listNum++ )
        {
            if ( IsDefined( level.lobbyState[listArray[listNum]] ) )
            {
                // EN : for all entities in the list
                // JA : リスト内の全てのエンティティに対して
                foreach ( entityObj in level.lobbyState[listArray[listNum]] )
                {
                    // EN : Unlink (synchronize) entities
                    // JA : エンティティのリンク（同期）を解除する
                    entityObj Unlink( );

                    // EN : Branch processing depending on deletion method
                    // JA : 削除方式によって処理を分岐
                    switch ( delMode )
                    {
                        // EN : In case of an explosion on the spot
                        // JA : その場で爆発の場合
                        case "Explode":
                            // EN : Invoke physical processing on an entity
                            // JA : エンティティに物理処理を起動する
                            entityObj PhysicsLaunchServer( entityObj.origin , ( 0 , 0 , 0 ) );
                            // EN : Instantly explode an entity on the spot
                            // JA : エンティティをその場で即爆破する
                            entityObj thread LaunchEntityEffectivity( delMode , undefined , sfxID , expFxID , expTime , eqPower , eqTime , eqRange );
                            break;
                            
                        // EN : When it explodes after being dispersed
                        // JA : 離散してから爆発する場合
                        case "Discrete":
                            // EN : Get random coordinates for the entity to move to
                            // JA : エンティティが移動する先の座標をランダムで取得する
                            l_EndLocation = entityObj.origin + ( RandomIntRange( -5000 , 5000 ) , RandomIntRange( -5000 , 5000 ) , RandomIntRange( 1000 , 10000 ) );
                            // EN : Get the angle to which the entity moves
                            // JA : エンティティが移動する先の角度を取得する
                            l_Angle = VectorToAngles( l_EndLocation - entityObj.origin );
                            // EN : Move an entity to the specified coordinates over the specified time
                            // JA : エンティティを指定の座標に、指定の時間をかけて移動させる
                            entityObj MoveTo( l_EndLocation , l_Time );
                            // EN : Rotate an entity to a specified angle and for a specified amount of time
                            // JA : エンティティを指定の角度に、指定の時間をかけて回転させる
                            entityObj RotateTo( l_Angle , l_Time );
                            // EN : Blow up an entity after moving it into the air
                            // JA : エンティティを空中に移動後に爆破する
                            entityObj thread LaunchEntityEffectivity( delMode , l_Time , sfxID , discFxID , expTime , eqPower , eqTime , eqRange );
                            break;
                    }

                    // EN : Wait for the specified time
                    // JA : 指定時間分待機する
                    wait expTime;
                    // EN : If you want to delete objects in that list now, delete
                    // JA : そのリスト内のオブジェクトをこの場で削除する場合、削除する
                    if ( listDelete[listNum] == true )
                    {
                        entityObj Delete( );
                    }
                }
                if ( listDelete[listNum] == true )
                {
                    level.lobbyState[listArray[listNum]] = undefined;
                }
            }
        }
    }
    
    // EN : If object exists
    // JA : オブジェクトが存在する場合
    if ( IsDefined( objArray ) )
    {
        for ( i = 0; i < objArray.size; i++ )
        {
            if ( IsDefined( level.lobbyState[objArray[i]] ) )
            {
                // EN : Unlink (synchronize) entities
                // JA : エンティティのリンク（同期）を解除する
                level.lobbyState[objArray[i]] Unlink( );

                // EN : Branch processing depending on deletion method
                // JA : 削除方式によって処理を分岐
                switch ( delMode )
                {
                    // EN : In case of an explosion on the spot
                    // JA : その場で爆発の場合
                    case "Explode":
                        // EN : Invoke physical processing on an entity
                        // JA : エンティティに物理処理を起動する
                        level.lobbyState[objArray[i]] PhysicsLaunchServer( level.lobbyState[objArray[i]].origin , ( 0 , 0 , 0 ) );
                        // EN : Instantly explode an entity on the spot
                        // JA : エンティティをその場で即爆破する
                        level.lobbyState[objArray[i]] thread LaunchEntityEffectivity( delMode , undefined , sfxID , expFxID , expTime , eqPower , eqTime , eqRange );
                        break;
                        
                    // EN : When it explodes after being dispersed
                    // JA : 離散してから爆発する場合
                    case "Discrete":
                        // EN : Get random coordinates for the entity to move to
                        // JA : エンティティが移動する先の座標をランダムで取得する
                        l_EndLocation = level.lobbyState[objArray[i]].origin + ( RandomIntRange( -5000 , 5000 ) , RandomIntRange( -5000 , 5000 ) , RandomIntRange( 1000 , 10000 ) );
                        // EN : Get the angle to which the entity moves
                        // JA : エンティティが移動する先の角度を取得する
                        l_Angle = VectorToAngles( l_EndLocation - level.lobbyState[objArray[i]].origin );
                        // EN : Move an entity to the specified coordinates over the specified time
                        // JA : エンティティを指定の座標に、指定の時間をかけて移動させる
                        level.lobbyState[objArray[i]] MoveTo( l_EndLocation , l_Time );
                        // EN : Rotate an entity to a specified angle and for a specified amount of time
                        // JA : エンティティを指定の角度に、指定の時間をかけて回転させる
                        level.lobbyState[objArray[i]] RotateTo( l_Angle , l_Time );
                        // EN : Blow up an entity after moving it into the air
                        // JA : エンティティを空中に移動後に爆破する
                        level.lobbyState[objArray[i]] thread LaunchEntityEffectivity( delMode , l_Time , sfxID , discFxID , expTime , eqPower , eqTime , eqRange );
                        break;
                }

                // EN : Wait for the specified time
                // JA : 指定時間分待機する
                wait expTime;
                // EN : If you want to delete objects in that list now, delete
                // JA : そのリスト内のオブジェクトをこの場で削除する場合、削除する
                if ( objDelete[i] == true )
                {
                    level.lobbyState[objArray[i]] Delete( );
                }
            }
            if ( objDelete[i] == true )
            {
                level.lobbyState[objArray[i]] = undefined;
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Executes various effects on the specified object after the specified number of seconds has elapsed.
// JA : 指定したオブジェクトに対して、指定秒数経過後に各種エフェクトを実行する
//++++++++++++++++++++++++++++++
LaunchEntityEffectivity( delMode , time , sfxID , fxID , expTime , eqPower , eqTime , eqRange )
{
    // EN : Wait if a time is specified
    // JA : 時間指定がある場合、待機する
    if ( IsDefined( time ) )
    {
        wait time;
    }

    // EN : Play the specified sound effect
    // JA : 指定したサウンドエフェクトを再生する
    PlaySoundAtPos( self.origin , sfxID );
    // EN : Causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
    // JA : 指定した座標 から 指定した半径の範囲 まで 指定した威力の地震 を 指定した秒数 起こす
    Earthquake( eqPower , eqTime , self.origin , eqRange );
    // EN : Play the specified effect
    // JA : 指定したエフェクトを再生する
    self thread PlayEffectToObject(
        /* time */          0.01 ,
        /* objData */       undefined ,
        /* fxName */        fxID ,
        /* tagName */       undefined ,
        /* loopFx */        undefined ,
        /* locationBase */  self.origin ,
        /* locationFix */   undefined ,
        /* angleType */     undefined ,
        /* angleRange */    undefined ,
        /* stopFx */        undefined
        );
    
    // EN : If it is a discrete type, delete it after playing the effect.
    // JA : 離散式の場合、エフェクト再生後に削除する
    if ( delMode == "Discrete" )
    {
        wait 0.01;
        self Delete( );
    }
}



//++++++++++++++++++++++++++++++
// EN : Delete the specified physical object
// JA : 指定した物理オブジェクトを削除する
//++++++++++++++++++++++++++++++
DeleteEntities( listData , objData )
{
    // EN : If list exists
    // JA : リストが存在する場合
    if ( IsDefined( listData ) )
    {
        if ( IsDefined( level.lobbyState[listData] ) )
        {
            // EN : for all entities in the list
            // JA : リスト内の全てのエンティティに対して
            foreach ( entityObj in level.lobbyState[listData] )
            {
                // EN : Delete an entity
                // JA : エンティティを削除する
                entityObj Delete( );
            }
            level.lobbyState[listData] = undefined;
        }
    }
    
    // EN : If object exists
    // JA : オブジェクトが存在する場合
    if ( IsDefined( objData ) )
    {
        if ( IsDefined( level.lobbyState[objData] ) )
        {
            // EN : Delete an entity
            // JA : エンティティを削除する
            level.lobbyState[objData] Delete( );
            level.lobbyState[objData] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : After waiting the specified number of seconds, generate the specified model at the specified coordinates and angle.
// JA : 指定した秒数分待機した後、指定したモデルを、指定した座標・角度で生成する
//++++++++++++++++++++++++++++++
ModelSpawner( origin , modelID , angles , time , collision )
{
    if( IsDefined( time ) ) { wait time; }

    obj = Spawn( "script_model" , origin );
    obj SetModel( modelID );
    
    // EN: Get the entity data of the generated object
    // JA: 生成するオブジェクトのエンティティデータを取得する
    l_EntityData = GetEnt( modelID , "targetname" );
    // EN: Set collision detection for generated objects
    // JA: 生成したオブジェクトに衝突判定を設定する
    obj CloneBrushModelToScriptModel( l_EntityData );

    if ( IsDefined( angles ) ) { obj.angles = angles; }

    if ( GetEntArray( ).size >= 2000)
    {
        self iPrintlnBold( "^1Error^7: Please delete some other structures" );
        obj Delete( );
    }

    return obj;
}


//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translated text from the "current language", "current menu hierarchy", and "currently selected item index"
// JA : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetModMenuText( selfLang , selfLayer , selfOption )
{
    if (        selfLayer == level.MOD_DEFINE.LAYER_ROOT )
    {
        // Verified 
        if (        selfOption == ( level.MOD_DEFINE.LAYER_CREDIT - 1 ) )               { return GetMultilingualText( selfLang , "CreditsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_LANGUAGES - 1 ) )            { return GetMultilingualText( selfLang , "LanguagesMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_DESIGN - 1 ) )               { return GetMultilingualText( selfLang , "DesignMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_COMBATASSIST - 1 ) )         { return GetMultilingualText( selfLang , "CombatAssistMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_FUNNY - 1 ) )                { return GetMultilingualText( selfLang , "FunnyMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_MODELS - 1 ) )               { return GetMultilingualText( selfLang , "ModelsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_WEAPONS - 1 ) )              { return GetMultilingualText( selfLang , "WeaponsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_CUSTOMWEAPONS - 1 ) )        { return GetMultilingualText( selfLang , "CustomWeaponsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_BULLETS - 1 ) )              { return GetMultilingualText( selfLang , "BulletsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_POPULAR - 1 ) )              { return GetMultilingualText( selfLang , "PopularMenu" ); }
        // Admin
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_POWERED - 1 ) )              { return GetMultilingualText( selfLang , "PoweredMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_AIMBOTS - 1 ) )              { return GetMultilingualText( selfLang , "AimbotsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_VEHICLES - 1 ) )             { return GetMultilingualText( selfLang , "VehiclesMenu" ); }
        // Co-host
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_SPAWNS - 1 ) )               { return GetMultilingualText( selfLang , "SpawnsMenu" ); }
        else if (   selfOption == ( level.MOD_DEFINE.LAYER_GAMESETTINGS - 1 ) )         { return GetMultilingualText( selfLang , "GameSettingsMenu" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CREDIT )
    {
        /*
        if (        selfOption == 0 )   { return "Mini royale mode"; }
        else if (   selfOption == 1 )   { return "BR mini circle"; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_LANGUAGES )
    {
        if (        selfOption == level.MOD_DEFINE.LANG_EN ) { return "EN: English"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DESIGN )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "ChangeOpenCloseAnimation" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "SwitchBackgroundAnimation" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "SwitchTextNumberLine" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_COMBATASSIST )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "ThirdPerson" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "Suicide" ); }
        /*
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "NoRecoil" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "ThirdPerson" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "Suicide" ); }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FUNNY )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "SaveLoadLocation" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "SaveLoadLocationDescription1" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "SaveLoadLocationDescription2" ); }
        //else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "BindNoclip" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_MODELS )
    {
        /*
        if (        selfOption == 0 )
        {
            if ( IsDefined( self.optionsState["SetModel" + "_ObjectID"] ) )
                                        { return GetMultilingualText( selfLang , "SetModel" ) + " : " + self.optionsState["SetModel" + "_ObjectID"]; }
            else                        { return GetMultilingualText( selfLang , "SetModel" ); }
        }
        else if (   selfOption == 1 )   { return "----------"; }
        else if (   selfOption == 2 )   { return "com_plasticcase_beige_big_iw6"; }
        else if (   selfOption == 3 )   { return "military_crate_large_stackable_01_dummy"; }
        else if (   selfOption == 4 )   { return "veh8_mil_air_mquebec8_small"; }
        else if (   selfOption == 5 )   { return "veh8_mil_air_mquebec8_small_east"; }
        else if (   selfOption == 6 )   { return "veh8_mil_air_lbravo"; }
        else if (   selfOption == 7 )   { return "veh8_mil_air_lbravo_mp"; }
        else if (   selfOption == 8 )   { return "veh8_mil_air_lbravo_east_mp"; }
        else if (   selfOption == 9 )   { return "veh8_mil_air_lbravo_personnel_mp_flyable"; }
        else if (   selfOption == 10 )  { return "veh8_mil_air_ahotel64_ks_mp"; }
        else if (   selfOption == 11 )  { return "veh8_mil_air_ahotel64_ks_east_mp"; }
        else if (   selfOption == 12 )  { return "veh8_mil_air_palfa"; }
        else if (   selfOption == 13 )  { return "veh8_mil_air_palfa_east"; }
        else if (   selfOption == 14 )  { return "veh8_ind_air_bombing_drone"; }
        else if (   selfOption == 15 )  { return "veh8_mil_air_mquebec9_small"; }
        else if (   selfOption == 16 )  { return "veh8_mil_air_mquebec9_small_east"; }
        else if (   selfOption == 17 )  { return "veh8_mil_air_auniform"; }
        else if (   selfOption == 18 )  { return "veh8_mil_air_auniform_east"; }
        else if (   selfOption == 19 )  { return "veh8_mil_air_suniform25"; }
        else if (   selfOption == 20 )  { return "veh8_mil_air_suniform25_west"; }
        else if (   selfOption == 21 )  { return "veh8_mil_air_alfa10"; }
        else if (   selfOption == 22 )  { return "veh8_mil_air_alfa10_east"; }
        else if (   selfOption == 23 )  { return "veh8_mil_air_halfa_mp"; }
        else if (   selfOption == 24 )  { return "veh8_mil_air_halfa_east_mp"; }
        else if (   selfOption == 25 )  { return "veh8_mil_air_acharlie130"; }
        else if (   selfOption == 26 )  { return "veh8_mil_air_acharlie130_ks"; }
        else if (   selfOption == 27 )  { return "veh8_mil_air_acharlie130_ks_east"; }
        else if (   selfOption == 28 )  { return "veh8_mil_air_acharlie130_small"; }
        else if (   selfOption == 29 )  { return "veh8_mil_lnd_atango_physics_mp"; }
        else if (   selfOption == 30 )  { return "veh8_mil_lnd_whotel"; }
        else if (   selfOption == 31 )  { return "wmd_vm_missile_cruise_warhead"; }
        else if (   selfOption == 32 )  { return "misc_wm_ascender"; }
        else if (   selfOption == 33 )  { return "offhand_wm_deployable_cover"; }
        else if (   selfOption == 34 )  { return "misc_wm_flarestick"; }
        else if (   selfOption == 35 )  { return "military_crate_field_upgrade_01"; }
        else if (   selfOption == 36 )  { return "prop_flag_neutral"; }
        else if (   selfOption == 37 )  { return "military_dom_flag_neutral"; }
        else if (   selfOption == 38 )  { return "military_dom_flag_west"; }
        else if (   selfOption == 39 )  { return "ctf_game_flag_east"; }
        else if (   selfOption == 40 )  { return "military_crate_large_stackable_01"; }
        else if (   selfOption == 41 )  { return "military_crate_large_stackable_01_jugg"; }
        else if (   selfOption == 42 )  { return "military_dogtags_iw8"; }
        else if (   selfOption == 43 )  { return "military_dogtags_iw8_blue"; }
        else if (   selfOption == 44 )  { return "military_dogtags_iw8_orange"; }
        */
    }

    /*
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WEAPONS )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "RandomCamo" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "RandomAttachment" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "DualWeapon" ); }
        else if (   selfOption == 3 )   { return GetMultilingualText( selfLang , "DropWeapon" ); }
        else if (   selfOption == 4 )   { return GetMultilingualText( selfLang , "TakedWeapon" ); }
        else if (   selfOption == 5 )   { return GetMultilingualText( selfLang , "TakedAllWeapons" ); }
        else if (   selfOption == 6 )   { return "----------"; }
        else if (   selfOption == 7 )   { return GetMultilingualText( selfLang , "AssaultRifles" ); }
        else if (   selfOption == 8 )   { return GetMultilingualText( selfLang , "SubmachineGuns" ); }
        else if (   selfOption == 9 )   { return GetMultilingualText( selfLang , "LightMachineGuns" ); }
        else if (   selfOption == 10 )  { return GetMultilingualText( selfLang , "MarksmanRifles" ); }
        else if (   selfOption == 11 )  { return GetMultilingualText( selfLang , "SniperRifles" ); }
        else if (   selfOption == 12 )  { return GetMultilingualText( selfLang , "Pistol" ); }
        else if (   selfOption == 13 )  { return GetMultilingualText( selfLang , "Shotguns" ); }
        else if (   selfOption == 14 )  { return GetMultilingualText( selfLang , "Explosives" ); }
    }
    */

    else if (   selfLayer == level.MOD_DEFINE.LAYER_CUSTOMWEAPONS )
    {
        /*
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "TeleportGun" ); }
        else if (   selfOption == 1 )
        {
            if ( IsDefined( self.optionsState["TeleportGun"].modData["TraceLength"] ) )
                                        { return GetMultilingualText( selfLang , "TraceLength" ) + " : " + self.optionsState["TeleportGun"].modData["TraceLength"]; }
            else                        { return GetMultilingualText( selfLang , "TraceLength" ); }
        }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "RocketRide" ); }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_BULLETS )
    {
        /*
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "ModdedBullets" ); }
        else if (   selfOption == 1 )
        {
            if ( IsDefined( self.optionsState["ModdedBullets"].modData["BulletType"] ) )
                                        { return GetMultilingualText( selfLang , "BulletType" ) + " : " + self.optionsState["ModdedBullets"].modData["BulletType"]; }
            else                        { return GetMultilingualText( selfLang , "BulletType" ); }
        }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "ModdedBulletsFireTrigger" ); }
        else if (   selfOption == 3 )   { return GetMultilingualText( selfLang , "ModdedBulletsNum5" ); }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POPULAR )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "BindNoclip" ); }
        else if (   selfOption == 1 )
        {
            if ( IsDefined( self.optionsState["ChangeMovementSpeed"].modData["Speed"] ) )
                                        { return GetMultilingualText( selfLang , "ChangeMovementSpeed" ) + " : " + self.optionsState["ChangeMovementSpeed"].modData["Speed"]; }
            else                        { return GetMultilingualText( selfLang , "ChangeMovementSpeed" ); }
        }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "Invisible" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POWERED )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "Godmode" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_AIMBOTS )
    {
        /*
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "Aimbot" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "AttackToForceKill" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "AimingRequired" ); }
        else if (   selfOption == 3 )   { return GetMultilingualText( selfLang , "AimTracking" ); }
        else if (   selfOption == 4 )   { return GetMultilingualText( selfLang , "AimStealth" ); }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_VEHICLES )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "SpawnVehicles" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_SPAWNS )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "AdvancedForgeMode" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "TheClaw" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "FerrisWheel" ); }
        else if (   selfOption == 3 )
        {
            if ( IsDefined( level.lobbyState["FerrisWheel"].modData["ChangeSpeedFerrisWheel"] ) )
                                        { return GetMultilingualText( selfLang , "ChangeSpeedFerrisWheel" ) + " : " + level.lobbyState["FerrisWheel"].modData["ChangeSpeedFerrisWheel"]; }
            else                        { return GetMultilingualText( selfLang , "ChangeSpeedFerrisWheel" ); }
        }
        else if (   selfOption == 4 )   { return GetMultilingualText( selfLang , "MerryGoRound" ); }
        else if (   selfOption == 5 )
        {
            if ( IsDefined( level.lobbyState["MerryGoRound"].modData["ChangeSpeedMerryGoRound"] ) )
                                        { return GetMultilingualText( selfLang , "ChangeSpeedMerryGoRound" ) + " : " + level.lobbyState["MerryGoRound"].modData["ChangeSpeedMerryGoRound"]; }
            else                        { return GetMultilingualText( selfLang , "ChangeSpeedMerryGoRound" ); }
        }
        else if (   selfOption == 6 )   { return GetMultilingualText( selfLang , "Centrox" ); }
        else if (   selfOption == 7 )   { return GetMultilingualText( selfLang , "Vertigo" ); }
        else if (   selfOption == 8 )   { return GetMultilingualText( selfLang , "Fireball" ); }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_GAMESETTINGS )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "AddBot" ); }
        else if (   selfOption == 1 )   { return GetMultilingualText( selfLang , "KickBot" ); }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "ForceRespawnPoint" ); }
        else if (   selfOption == 3 )   { return GetMultilingualText( selfLang , "TeleportToMe" ); }
    }

    else if (   selfLayer == level.MOD_DEFINE.LAYER_FORGE )
    {
        if (        selfOption == 0 )   { return GetMultilingualText( selfLang , "AdvancedForgeMode" ); }
        else if (   selfOption == 1 )
        {
            if ( IsDefined( self.optionsState["AdvancedForgeMode"] ) )
                                        { return GetMultilingualText( selfLang , "ChangeSpawnedModel" ) + " : " + self.optionsState["AdvancedForgeMode"].modData["ChangeSpawnedModel"]; }
            else                        { return GetMultilingualText( selfLang , "ChangeSpawnedModel" ); }
        }
        else if (   selfOption == 2 )   { return GetMultilingualText( selfLang , "RotateXAxis" ); }
        else if (   selfOption == 3 )   { return GetMultilingualText( selfLang , "FiredCreate" ); }
        else if (   selfOption == 4 )
        {
            if ( IsDefined( self.optionsState["AdvancedForgeMode"] ) )
                                        { return GetMultilingualText( selfLang , "ChangeSpawnedTime" ) + " : " + self.optionsState["AdvancedForgeMode"].modData["ChangeSpawnedTime"]; }
            else                        { return GetMultilingualText( selfLang , "ChangeSpawnedTime" ); }
        }
        else if (   selfOption == 5 )
        {
            if ( IsDefined( self.optionsState["AdvancedForgeMode" + "_ObjectCount"] ) )
                                        { return GetMultilingualText( selfLang , "DeleteLastObject" ) + " : " + self.optionsState["AdvancedForgeMode" + "_ObjectCount"].size; }
            else                        { return GetMultilingualText( selfLang , "DeleteLastObject" ); }
        }
        else if (   selfOption == 6 )   { return GetMultilingualText( selfLang , "ForgeModeDescription1" ); }
        else if (   selfOption == 7 )   { return GetMultilingualText( selfLang , "ForgeModeDescription2" ); }
        else if (   selfOption == 8 )   { return GetMultilingualText( selfLang , "ForgeModeDescription3" ); }
        else if (   selfOption == 9 )   { return GetMultilingualText( selfLang , "ForgeModeDescription4" ); }
        else if (   selfOption == 10 )  { return GetMultilingualText( selfLang , "ForgeModeDescription5" ); }
        else if (   selfOption == 11 )  { return GetMultilingualText( selfLang , "ForgeModeDescription6" ); }
        else if (   selfOption == 12 )  { return GetMultilingualText( selfLang , "ForgeModeDescription7" ); }
        else if (   selfOption == 13 )  { return GetMultilingualText( selfLang , "ForgeModeDescription8" ); }
        else if (   selfOption == 14 )  { return GetMultilingualText( selfLang , "ForgeModeDescription9" ); }
    }

    else if (   selfLayer == level.MOD_DEFINE.LAYER_DEFVEHICLES )
    {
        if (        selfOption == 0 )   { return "apc_russian"; }
        else if (   selfOption == 1 )   { return "cop_car"; }
        else if (   selfOption == 2 )   { return "technical"; }
        else if (   selfOption == 3 )   { return "large_transport"; }
        else if (   selfOption == 4 )   { return "light_tank"; }
        else if (   selfOption == 5 )   { return "cargo_truck"; }
        else if (   selfOption == 6 )   { return "hoopty"; }
        else if (   selfOption == 7 )   { return "hoopty_truck"; }
        else if (   selfOption == 8 )   { return "jeep"; }
        else if (   selfOption == 9 )   { return "medium_transport"; }
        else if (   selfOption == 10 )  { return "pickup_truck"; }
        else if (   selfOption == 11 )  { return "tac_rover"; }
        else if (   selfOption == 12 )  { return "van"; }
        else if (   selfOption == 13 )  { return "atv"; }
        else if (   selfOption == 14 )  { return "little_bird"; }
        else if (   selfOption == 15 )  { return "custom heli 1"; }
        else if (   selfOption == 16 )  { return "custom heli 2"; }
        else if (   selfOption == 17 )  { return "custom heli 3"; }
    }

    /*
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_AR )
    {
        if (        selfOption == 0 )   { return "AK-47"; }
        else if (   selfOption == 1 )   { return "Oden"; }
        else if (   selfOption == 2 )   { return "FR 5.56"; }
        else if (   selfOption == 3 )   { return "CR 56 AMAX"; }
        else if (   selfOption == 4 )   { return "Kilo 141"; }
        else if (   selfOption == 5 )   { return "M13"; }
        else if (   selfOption == 6 )   { return "M4A1"; }
        else if (   selfOption == 7 )   { return "Fal"; }
        else if (   selfOption == 8 )   { return "FN Scar 17"; }
        else if (   selfOption == 9 )   { return "Grau 5.56"; }
        else if (   selfOption == 10 )  { return "Ram 7"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SMG )
    {
        if (        selfOption == 0 )   { return "AUG"; }
        else if (   selfOption == 1 )   { return "PP Bizon 19"; }
        else if (   selfOption == 2 )   { return "ISO"; }
        else if (   selfOption == 3 )   { return "MP5"; }
        else if (   selfOption == 4 )   { return "P90"; }
        else if (   selfOption == 5 )   { return "Striker 45"; }
        else if (   selfOption == 6 )   { return "Uzi"; }
        else if (   selfOption == 7 )   { return "MP7"; }
        else if (   selfOption == 8 )   { return "Fennec"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_LMG )
    {
        if (        selfOption == 0 )   { return "iw8_lm_dblmg_mp"; }
        else if (   selfOption == 1 )   { return "M91"; }
        else if (   selfOption == 2 )   { return "SA-87"; }
        else if (   selfOption == 3 )   { return "MG-34"; }
        else if (   selfOption == 4 )   { return "Bruen M9K"; }
        else if (   selfOption == 5 )   { return "PKM"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_MR )
    {
        if (        selfOption == 0 )   { return "Crossbow"; }
        else if (   selfOption == 1 )   { return "EBR-14"; }
        else if (   selfOption == 2 )   { return "Kar 98"; }
        else if (   selfOption == 3 )   { return "Mk2-Carbine"; }
        else if (   selfOption == 4 )   { return "SKS"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SR )
    {
        if (        selfOption == 0 )   { return "AX-50"; }
        else if (   selfOption == 1 )   { return "Dragunov"; }
        else if (   selfOption == 2 )   { return "HDR"; }
        else if (   selfOption == 3 )   { return "iw8_sn_mike14_mp"; }
        else if (   selfOption == 4 )   { return "iw8_sn_xmike109_mp"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_PS )
    {
        if (        selfOption == 0 )   { return "iw8_minigunksjugg_mp"; }
        else if (   selfOption == 1 )   { return ".357"; }
        else if (   selfOption == 2 )   { return ".50 GS"; }
        else if (   selfOption == 3 )   { return "X16"; }
        else if (   selfOption == 4 )   { return "1911"; }
        else if (   selfOption == 5 )   { return "Renetti"; }
        else if (   selfOption == 6 )   { return "M19"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SG )
    {
        if (        selfOption == 0 )   { return "725"; }
        else if (   selfOption == 1 )   { return "R9-0"; }
        else if (   selfOption == 2 )   { return "VLK Rogue"; }
        else if (   selfOption == 3 )   { return "Origin 12"; }
        else if (   selfOption == 4 )   { return "Model 680"; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_EP )
    {
        if (        selfOption == 0 )   { return "Pila"; }
        else if (   selfOption == 1 )   { return "JOKR"; }
        else if (   selfOption == 2 )   { return "Strela-P"; }
        else if (   selfOption == 3 )   { return "MGL-32"; }
        else if (   selfOption == 4 )   { return "RPG-7"; }
    }
    */

    return "<NOT FOUND MENUTEXT>";
}



//++++++++++++++++++++++++++++++
// EN : Returns the maximum index of the menu from the "current menu hierarchy" and "current privilege state"
// JA : 「現在のメニュー階層」、「現在の権限状態」から、そのメニューの最大インデックスを返す
//++++++++++++++++++++++++++++++
GetLayerMaxIndex( selfLayer , verificationStatus )
{
    if (        selfLayer == level.MOD_DEFINE.LAYER_ROOT )
    {
        return ( level.MOD_DEFINE.LAYER_GAMESETTINGS - 1 );
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CREDIT )                    { return 10; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_LANGUAGES )                 { return level.MOD_DEFINE.LANG_EN; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DESIGN )                    { return 2; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_COMBATASSIST )              { return 1; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FUNNY )                     { return 2; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_MODELS )                    { return 44; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WEAPONS )                   { return 14; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CUSTOMWEAPONS )             { return 2; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_BULLETS )                   { return 3; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POPULAR )                   { return 2; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POWERED )                   { return 0; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_AIMBOTS )                   { return 4; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_VEHICLES )                  { return 0; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_SPAWNS )                    { return 8; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_GAMESETTINGS )              { return 3; }

    else if (   selfLayer == level.MOD_DEFINE.LAYER_FORGE )                     { return 14; }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DEFVEHICLES )               { return 17; }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_AR )                     { return 10; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SMG )                    { return 8; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_LMG )                    { return 5; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_MR )                     { return 4; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SR )                     { return 4; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_PS )                     { return 6; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_SG )                     { return 4; }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WP_EP )                     { return 4; }

    else                                                                        { return -1; }
}



//++++++++++++++++++++++++++++++
// EN : Returns the function to be executed when selecting an item from the "current menu hierarchy" and "currently selected item index"
// JA : 「現在のメニュー階層」、「現在選択中の項目インデックス」から、項目決定時に実行する関数を返す
//++++++++++++++++++++++++++++++
GetOptionFunction( selfLayer , selfOption )
{
    if (        selfLayer == level.MOD_DEFINE.LAYER_ROOT )
    {
        return ::ModMenuOpenSubMenu;
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CREDIT )
    {
        /*
        if (        selfOption == 0 )  { return ::ExecMiniCircle; }
        if (        selfOption == 0 )  { return ::SwitchCircleDisable; }
        else if (   selfOption == 1 )  { return ::ExecMiniCircle; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_LANGUAGES )
    {
        return ::ChangeLanguage;
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DESIGN )
    {
        if (        selfOption == 0 )   { return ::OnfModMenuOpenCloseAnimation; }
        else if (   selfOption == 1 )   { return ::OnfModMenuBackgroundAnimation; }
        else if (   selfOption == 2 )   { return ::OnfModMenuTextNumberLine; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_COMBATASSIST ) 
    {
        if (        selfOption == 0 )   { return ::OnfThirdPerson; }
        else if (   selfOption == 1 )   { return ::ExecSuicide; }
        /*
        if (        selfOption == 0 )   { return ::OnfNoRecoil; }
        else if (   selfOption == 1 )   { return ::OnfThirdPerson; }
        else if (   selfOption == 2 )   { return ::ExecSuicide; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FUNNY ) 
    {
        if (        selfOption == 0 )   { return ::OnfSaveLoadLocation; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_MODELS ) 
    {
        /*
        if (        selfOption == 0 )   { return ::OnfSetModel; }
        // else if (   selfOption == 2 )   { return ::EmptyFunction; }
        else                            { return ::ExecChangeModel; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WEAPONS )
    {
        /*
        if (        selfOption == 0 )   { return ::OnfRandomCamo; }
        else if (   selfOption == 1 )   { return ::OnfRandomAttachment; }
        else if (   selfOption == 2 )   { return ::OnfDualWeapon; }
        else if (   selfOption == 3 )   { return ::ExecDropWeapon; }
        else if (   selfOption == 4 )   { return ::ExecTakedWeapon; }
        else if (   selfOption == 5 )   { return ::ExecTakedAllWeapons; }
        else if (   selfOption == 6 )   { return ::EmptyFunction; }
        else                            { return ::ModMenuOpenSubMenu; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CUSTOMWEAPONS ) 
    {
        /*
        if (        selfOption == 0 )   { return ::OnfTeleportGun; }
        else if (   selfOption == 1 )   { return ::SwitchTeleportGunMoveSize; }
        else if (   selfOption == 2 )   { return ::OnfRocketRide; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_BULLETS ) 
    {
        /*
        if (        selfOption == 0 )   { return ::OnfModdedBullets; }
        else if (   selfOption == 1 )   { return ::SwitchBulletsType; }
        else if (   selfOption == 2 )   { return ::OnfModdedBulletsFireTrigger; }
        else if (   selfOption == 3 )   { return ::OnfModdedBulletsNum5; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POPULAR ) 
    {
        if (        selfOption == 0 )   { return ::OnfBindNoclip; }
        else if (   selfOption == 1 )   { return ::SwitchMovementSpeed; }
        else if (   selfOption == 2 )   { return ::OnfInvisible; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POWERED ) 
    {
        if (        selfOption == 0 )   { return ::OnfGodmode; }
        // else if (   selfOption == 10 )   { return ::OnfNoclip; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_AIMBOTS )
    {
        /*
        if (        selfOption == 0 )   { return ::OnfAimbot; }
        else if (   selfOption == 1 )   { return ::OnfAimbotAttackToForceKill; }
        else if (   selfOption == 2 )   { return ::OnfAimbotAimingRequired; }
        else if (   selfOption == 3 )   { return ::OnfAimbotAimTracking; }
        else if (   selfOption == 4 )   { return ::OnfAimbotAimStealth; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_VEHICLES ) 
    {
        return ::ModMenuOpenSubMenu;
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_SPAWNS ) 
    {
        if (        selfOption == 0 )   { return ::ModMenuOpenSubMenu; }
        else if (   selfOption == 1 )   { return ::OnfTheClaw; }
        else if (   selfOption == 2 )   { return ::OnfFerrisWheel; }
        else if (   selfOption == 3 )   { return ::SwitchFerrisWheelRotateSpeed; }
        else if (   selfOption == 4 )   { return ::OnfMerryGoRound; }
        else if (   selfOption == 5 )   { return ::SwitchMerryGoRoundRotateSpeed; }
        else if (   selfOption == 6 )   { return ::OnfCentrox; }
        else if (   selfOption == 7 )   { return ::OnfVertigo; }
        else if (   selfOption == 8 )   { return ::OnfFireball; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_GAMESETTINGS ) 
    {
        if (        selfOption == 0 )   { return ::ExecAddBot; }
        else if (   selfOption == 1 )   { return ::ExecKickBot; }
        else if (   selfOption == 2 )   { return ::OnfForceRespawnPoint; }
        else if (   selfOption == 3 )   { return ::ExecTeleportToMeForALLPlayers; }
    }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FORGE )
    {
        if (        selfOption == 0 )   { return ::OnfAdvancedForgeMode; }
        else if (   selfOption == 1 )   { return ::SwitchForgeModeModel; }
        else if (   selfOption == 2 )   { return ::OnfForgeModeRotateXAxis; }
        else if (   selfOption == 3 )   { return ::OnfForgeModeFiredCreate; }
        else if (   selfOption == 4 )   { return ::SwitchForgeModeSpawnedTime; }
        else if (   selfOption == 5 )   { return ::ExecForgeModeDeleteLastObject; }
    }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DEFVEHICLES )
    {
        return ::ExecSpawnVehicle;
    }

    /*
    else if (   ( selfLayer == level.MOD_DEFINE.LAYER_WP_AR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SMG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_LMG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_MR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_PS ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_EP ) )
    {
        return ::ExecGiveWeapon;
    }
    */
    
    return ::EmptyFunction;
}



//++++++++++++++++++++++++++++++
// EN : Obtain the enabled/disabled status of the item from the "current language", "current menu hierarchy" and "currently selected item index"
// JA : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、その項目の有効・無効状態を取得する
//++++++++++++++++++++++++++++++
GetOptionStatus( selfLang , selfLayer , selfOption )
{
    // EN : Set default item state to "disabled"
    // JA : デフォルトの項目の状態を「無効」にする
    l_Status = level.MOD_DEFINE.MOD_DISABLED;
    
    // EN : Get the status for each layer and selection item
    // JA : 各レイヤー、選択項目に合わせて、状態を取得する
    if (        selfLayer == level.MOD_DEFINE.LAYER_ROOT )
    {
        l_Status = level.MOD_DEFINE.MOD_NOTONF;
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CREDIT )
    {
        //if (        selfOption == 0 )   { if ( GetDVARInt( "donetsk_miniroyale" ) == 1 )                    { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_LANGUAGES )
    {
        l_Status = level.MOD_DEFINE.MOD_NOTONF;
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DESIGN )
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["ChangeOpenCloseAnimation"] ) )     { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["SwitchBackgroundAnimation"] ) )    { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["SwitchTextNumberLine"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_COMBATASSIST ) 
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["ThirdPerson"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["NoRecoil"] ) )                 { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["ThirdPerson"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FUNNY ) 
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["SaveLoadLocation"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else                            { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        
        // else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["InfinityRemainingAmmo"] ) )    { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_MODELS ) 
    {
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["SetModel"] ) )     { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else                            { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_WEAPONS ) 
    {
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["RandomCamo"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["RandomAttachment"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["DualWeapon"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else                            { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_CUSTOMWEAPONS ) 
    {
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["TeleportGun"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["TeleportGun"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["RocketRide"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_BULLETS ) 
    {
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["ModdedBullets"] ) )                                            { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { l_Status = level.MOD_DEFINE.MOD_REFLESH; }    
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["ModdedBullets"].modData["ModdedBulletsFireTrigger"] ) )        { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 3 )   { if ( IsDefined( self.optionsState["ModdedBullets"].modData["ModdedBulletsNum5"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POPULAR ) 
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["BindNoclip"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["ChangeMovementSpeed"] ) )      { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["Invisible"] ) )                { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_POWERED ) 
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["Godmode"] ) )                  { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        //else if (   selfOption == 10 )   { return ::OnfNoclip; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_AIMBOTS )
    {
        /*
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["Aimbot"] ) )                               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { if ( IsDefined( self.optionsState["Aimbot"].modData["AttackToForceKill"] ) )  { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["Aimbot"].modData["AimingRequired"] ) )     { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 3 )   { if ( IsDefined( self.optionsState["Aimbot"].modData["AimTracking"] ) )        { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 4 )   { if ( IsDefined( self.optionsState["Aimbot"].modData["AimStealth"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        */
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_VEHICLES ) 
    {
        if (        selfOption == 0 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        // else if (   selfOption == 10 )   { return ::OnfNoclip; }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_SPAWNS ) 
    {
        if (        selfOption == 0 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        else if (   selfOption == 1 )   { if ( IsDefined( level.lobbyState["TheClaw"] ) )                   { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 2 )   { if ( IsDefined( level.lobbyState["FerrisWheel"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 3 )   { if ( IsDefined( level.lobbyState["FerrisWheel"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 4 )   { if ( IsDefined( level.lobbyState["MerryGoRound"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 5 )   { if ( IsDefined( level.lobbyState["MerryGoRound"] ) )              { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 6 )   { if ( IsDefined( level.lobbyState["Centrox"] ) )                   { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 7 )   { if ( IsDefined( level.lobbyState["Vertigo"] ) )                   { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 8 )   { if ( IsDefined( level.lobbyState["Fireball"] ) )                  { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
    }
    else if (   selfLayer == level.MOD_DEFINE.LAYER_GAMESETTINGS ) 
    {
        if (        selfOption == 0 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        else if (   selfOption == 1 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        else if (   selfOption == 2 )   { if ( IsDefined( level.lobbyState["ForceRespawnPoint"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 3 )   { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
        
        // else if (   selfOption == 10 )   { return ::OnfNoclip; }
    }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_FORGE )
    {
        if (        selfOption == 0 )   { if ( IsDefined( self.optionsState["AdvancedForgeMode"] ) )                                { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 1 )   { l_Status = level.MOD_DEFINE.MOD_REFLESH; }
        else if (   selfOption == 2 )   { if ( IsDefined( self.optionsState["AdvancedForgeMode"].modData["RotateXAxis"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 3 )   { if ( IsDefined( self.optionsState["AdvancedForgeMode"].modData["FiredCreate"] ) )         { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 4 )   { if ( IsDefined( self.optionsState["AdvancedForgeMode"].modData["ChangeSpawnedTime"] ) )   { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else if (   selfOption == 5 )   { if ( IsDefined( self.optionsState["AdvancedForgeMode" + "_ObjectCount"] ) )               { l_Status = level.MOD_DEFINE.MOD_ENABLED; } }
        else                            { l_Status = level.MOD_DEFINE.MOD_NOTONF; }
    }
    
    else if (   selfLayer == level.MOD_DEFINE.LAYER_DEFVEHICLES )
    {
        l_Status = level.MOD_DEFINE.MOD_NOTONF;
    }

    /*
    else if (   ( selfLayer == level.MOD_DEFINE.LAYER_WP_AR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SMG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_LMG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_MR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SR ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_PS ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_SG ) ||
                ( selfLayer == level.MOD_DEFINE.LAYER_WP_EP ) )
    {
        l_Status = level.MOD_DEFINE.MOD_NOTONF;
    }
    */
    
    if      ( l_Status == level.MOD_DEFINE.MOD_DISABLED )   { return " " + GetMultilingualText( selfLang , "Disabled" ); }
    else if ( l_Status == level.MOD_DEFINE.MOD_ENABLED )    { return " " + GetMultilingualText( selfLang , "Enabled" ); }
    else if ( l_Status == level.MOD_DEFINE.MOD_REFLESH )    { return " "; }
    else                                                    { return ""; }
}



//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translation from the current language and specified text ID
// JA : 現在の言語と指定のテキストIDから、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetMultilingualText( selfLang , textID , useGamepad )
{
    switch ( textID )
    {
        case "ProjectName":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^7Project ^5H^7iN^1A^7tyu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^7プロジェクト ^5ひ^7な^1ち^7ゅ"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^5H^7iN^1A^7tyu ^7計畫"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^7проект ^5огонь^1На^7Чуу"; }
            break;

        case "Enabled":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^7[^2Enabled^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^7[^2有効化^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^7[^2激活^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^7[^2активация^7] "; }
            break;

        case "Disabled":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^7[^1Disabled^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^7[^1無効化^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^7[^1无效^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^7[^1Аннулирование^7] "; }
            break;

        case "Notice":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^7[^3Notice^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^7[^3通知^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^7[^3通知^7] "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^7[^3уведомление^7] "; }
            break;

        case "NotFuncExec":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Function not executed"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "機能が未実行です"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "函数未执行"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Функция не выполнена"; }
            break;

        case "UnimplementedFunction":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "This function is not yet implemented."; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "この機能は未実装です。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "该功能尚未实现。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Эта функция еще не реализована."; }
            break;

        case "PleaseShooting":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Please specify the coordinates by shooting"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "銃撃で座標指定してください"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "拍下请注明坐标"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Пожалуйста, укажите координаты при съемке"; }
            break;

        case "RequestLocation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Request specified location"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "指定座標に要請"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "请求指定位置"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Запросить указанное местоположение"; }
            break;

        case "CannotHost":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "No operations can be performed on the host."; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "ホストに対して操作はできません。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "无法对主机进行任何操作。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "На хосте нельзя выполнять никакие операции."; }
            break;

        case "WelcomeTo":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^3Welcome to "; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^3ようこそ、"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^3欢迎，"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^3добро пожаловать,"; }
            break;

        case "ModdedLobby":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return " ^3modded lobby."; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return " ^3の改造部屋へ。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return " ^3前往改造后的房间。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return " ^3В отремонтированную комнату."; }
            break;

        case "ModMenuOpenDescription":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^3Open mod menu to press^1 [{+speed_throw}] + [{+melee}] ^3."; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^3モッドメニューは^1 [{+speed_throw}] + [{+melee}] ^3で開けます。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^3按^1 [{+speed_throw}] + [{+melee}] ^3可以打开模组菜单。"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^3Меню мода можно открыть, нажав^1 [{+speed_throw}] + [{+melee}]."; }
            break;

        case "ModMenuControlDescription":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "^3Scroll [{+speed_throw}] [{+attack}] ^3| Decide [{+activate}] ^3| Back [{+melee}]"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "^3スクロール [{+speed_throw}] [{+attack}] ^3｜決定 [{+activate}] ^3｜戻る [{+melee}]"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "^3滚动 [{+speed_throw}] [{+attack}] ^3｜决定 [{+activate}] ^3｜后退 [{+melee}]"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "^3Прокрутка [{+speed_throw}] [{+attack}] ^3｜Решать [{+activate}] ^3｜Назад [{+melee}]"; }
            break;

        case "CreditsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Testings menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "BRモード専用メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "仅 BR 模式菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню только режима BR"; }
            break;

        case "LanguagesMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Languages menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "言語メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "语言菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "языковое меню"; }
            break;

        case "DesignMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Design menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "デザインメニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "设计菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Дизайнерское меню"; }
            break;

        case "CombatAssistMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Combat assist menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "戦闘補助メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "战斗辅助菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню боевой помощи"; }
            break;

        case "FunnyMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Funny menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "面白いメニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "有趣的菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Забавное меню"; }
            break;

        case "ModelsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Models menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "3Dモデルメニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "型号菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню моделей"; }
            break;


        case "WeaponsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Weapons menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "武器メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "武器菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню оружия"; }
            break;

        case "CustomWeaponsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Custom weapons menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "カスタム武器メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "自定义武器菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню пользовательского оружия"; }
            break;

        case "BulletsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Bullets menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "弾薬メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "项目符号菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "маркированное меню"; }
            break;

        case "PopularMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Popular menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "汎用機能メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "热门菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Популярное меню"; }
            break;

        case "PoweredMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Powered menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "超強力メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "强大的菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Мощное меню"; }
            break;


        case "AimbotsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Aimbots menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オートエイムメニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "自动瞄准菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню автоматического прицеливания"; }
            break;


        case "VehiclesMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Vehicles menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "乗り物メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "车辆菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню транспортных средств"; }
            break;

        case "SpawnsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Spawns menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "生成メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "生成菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню появления"; }
            break;

        case "GameSettingsMenu":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Game settings menu"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "ゲーム設定メニュー"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "游戏设置菜单"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Меню настроек игры"; }
            break;



        case "ChangeOpenCloseAnimation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change menu opening/closing animation"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "メニューの開閉アニメーションの変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "更改菜单打开/关闭动画"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменить анимацию открытия/закрытия меню"; }
            break;

        case "SwitchBackgroundAnimation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Disable menu background animation"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "メニューの背景アニメーションの無効化"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "禁用菜单背景动画"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Отключить фоновую анимацию меню"; }
            break;

        case "SwitchTextNumberLine":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Hiding menu operation instructions"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "メニューの操作説明の非表示化"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "隐藏菜单操作说明"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Скрытие инструкций по работе с меню"; }
            break;

        case "TeleportToMe":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Teleport to me"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "自分の場所にテレポートさせる"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "传送到我身边"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Телепортируйся ко мне"; }
            break;


        case "AddBot":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Add bot"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "botの追加"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "添加机器人"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Добавить бота"; }
            break;

        case "KickBot":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Kick bot"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "botのキック"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "踢机器人"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Выгнать бота"; }
            break;



        case "Suicide":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Suicide"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "自殺"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "自杀"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Самоубийство"; }
            break;


        case "TeleportToMe":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Teleport to me"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "自分の場所にテレポートさせる"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "传送到我身边"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Телепортируйся ко мне"; }
            break;

        case "TeleportToHim":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Teleport to him"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "相手の場所にテレポート"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "传送到他身边"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Телепортироваться к нему"; }
            break;
            


        case "Invisible":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Invisible"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "透明人間"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "透明度"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Прозрачность"; }
            break;


        case "Godmode":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Godmode"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "無敵"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "无敌的"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "непобедимый"; }
            break;

        case "ThirdPerson":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "3rd person"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "3人称視点"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "第三人称视角"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "перспектива от третьего лица"; }
            break;

        case "BindNoclip":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Bind noclip to [{+smoke}] + [{+melee}]"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "空中飛行 は [{+smoke}] + [{+melee}] で実行"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "将 noclip 绑定到 [{+smoke}] + [{+melee}]"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Привязать noclip к [{+smoke}] + [{+melee}]"; }
            break;

        case "BindNoclipDiscription":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Noclip to [{+smoke}] move + [{+breath_sprint}] acceleration"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "空中飛行 は [{+smoke}] で移動 + [{+breath_sprint}] で加速"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "Noclip 到 [{+smoke}] 移动 + [{+breath_sprint}] 加速"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Noclip для [{+smoke}] движения + [{+breath_sprint}] ускорения"; }
            break;

        case "AdvancedForgeMode":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Advanced forge mode"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "高度なオブジェクト作成"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "高级锻造模式"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Расширенный режим кузницы"; }
            break;

        case "GetObject":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Get object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オブジェクト取得"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "获取对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Получить объект"; }
            break;

        case "CreateObject":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Create object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オブジェクト作成"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "创建对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Создать объект"; }
            break;

        case "DeleteObject":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Delete object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オブジェクト削除"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "删除对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Создать объект"; }
            break;

        case "ChangeSpawnedModel":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change spawned model"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "作成オブジェクト種類変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "更改生成模型"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменить порожденную модель"; }
            break;

        case "RotateXAxis":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Rotate object X axis"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オブジェクトX軸回転"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "旋转对象 X 轴"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Поворот объекта по оси X"; }
            break;
            
        case "FiredCreate":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Create object at launch destination"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "発射先の座標にオブジェクト作成"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "在启动目的地创建对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Создать объект в пункте назначения запуска"; }
            break;
            
        case "ChangeSpawnedTime":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change object spawned interval"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "オブジェクトの生成インターバル変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "更改对象生成间隔"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменить интервал появления объекта"; }
            break;
            
        case "DeleteLastObject":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Delete the last spawned object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "最後に生成したオブジェクトの削除"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "删除最后生成的对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Удалить последний созданный объект"; }
            break;

        case "ForgeModeDescription1":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+speed_throw}] ^3+ [{+activate}] ^3Get and move object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+speed_throw}] ^3+ [{+activate}] ^3オブジェクトの取得と移動"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+speed_throw}] ^3+ [{+activate}] ^3获取并移动对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+speed_throw}] ^3+ [{+activate}] ^3Получить и переместить объект"; }
            break;

        case "ForgeModeDescription2":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+speed_throw}] ^3+ [{+smoke}] ^3Delete memorized object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+speed_throw}] ^3+ [{+smoke}] ^3記憶中のオブジェクトの削除"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+speed_throw}] ^3+ [{+smoke}] ^3删除记忆的对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+speed_throw}] ^3+ [{+smoke}] ^3Удалить запомненный объект"; }
            break;

        case "ForgeModeDescription3":
            if ( useGamepad == true )
            {
                if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+activate}] ^3+ [{+smoke}] ^3Create setting object"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+activate}] ^3+ [{+smoke}] ^3設定中のオブジェクトの作成"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+activate}] ^3+ [{+smoke}] ^3创建设置对象"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+activate}] ^3+ [{+smoke}] ^3Создать объект настройки"; }
            }
            else
            {
                if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+activate}] ^3+ [{+usereload}] ^3Create setting object"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+activate}] ^3+ [{+usereload}] ^3設定中のオブジェクトの作成"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+activate}] ^3+ [{+usereload}] ^3创建设置对象"; }
                // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+activate}] ^3+ [{+usereload}] ^3Создать объект настройки"; }
            }
            break;

        case "ForgeModeDescription4":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+activate}] ^3+ [{+melee}] ^3Create memorized object"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+activate}] ^3+ [{+melee}] ^3記憶中のオブジェクトの作成"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+activate}] ^3+ [{+melee}] ^3创建记忆对象"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+activate}] ^3+ [{+melee}] ^3Создать запоминаемый объект"; }
            break;

        case "ForgeModeDescription5":
            return "[{+activate}] ^3+ [{+frag}] ^3" + GetMultilingualText( selfLang , "ChangeSpawnedModel" );

        case "ForgeModeDescription6":
            return "[{+activate}] ^3+ [{+gostand}] ^3" + GetMultilingualText( selfLang , "RotateXAxis" );

        case "ForgeModeDescription7":
            return "[{+activate}] ^3+ [{+stance}] ^3" + GetMultilingualText( selfLang , "FiredCreate" );

        case "ForgeModeDescription8":
            return "[{+melee}] ^3+ [{+gostand}] ^3" + GetMultilingualText( selfLang , "ChangeSpawnedTime" );

        case "ForgeModeDescription9":
            return "[{+melee}] ^3+ [{+stance}] ^3" + GetMultilingualText( selfLang , "DeleteLastObject" );
            
        case "ChangeMovementSpeed":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change movement speed"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "移動速度の変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "改变移动速度"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменить скорость движения"; }
            break;
            
        case "Value_x":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "x"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "倍"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "倍"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return " раза"; }
            break;
            

        case "TakedWeapon":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Taked weapon"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "武器の剥奪"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "拿起武器"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Взятое оружие"; }
            break;
            
            
        case "GetWeapon":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Get weapon"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "武器の入手"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "获取武器"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Получить оружие"; }
            break;
            
            
        case "FailedBuildWeapon":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Failed build weapon"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "武器の生成に失敗"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "打造武器失败"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Не удалось построить оружие"; }
            break;


        case "SpawnVehicles":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Spawn vehicle"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "乗り物の生成"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "生成车辆"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Создать автомобиль"; }
            break;


        case "SaveLoadLocation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Save & load location"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "座標のセーブ & ロード（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "保存和加载位置"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Сохранить и загрузить местоположение"; }
            break;

        case "SaveLoadLocationDescription1":
            return "[{+smoke}] ^3+ [{+gostand}] ^3" + GetMultilingualText( selfLang , "SaveLocation" );

        case "SaveLoadLocationDescription2":
            return "[{+smoke}] ^3+ [{+stance}] ^3" + GetMultilingualText( selfLang , "LoadLocation" );

        case "SaveLocation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Saved location"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "座標の保存"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "已保存位置"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Сохраненное местоположение"; }
            break;

        case "LoadLocation":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Loaded location"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "座標の読み込み"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "装载位置"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Место загрузки"; }
            break;

        case "ForceRespawnPoint":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Force respawn point"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "強制リスポーン地点"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "强制重生点"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Точка возрождения силы"; }
            break;

        case "UseToRide":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "[{+activate}] to ride / [{+smoke}] to get off"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "[{+activate}] で乗車 / [{+smoke}] で降車 できます"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "[{+activate}] 乘车/ [{+smoke}] 下车"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "[{+activate}] — ехать / [{+smoke}] — выходить"; }
            break;

        case "TheClaw":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "The claw (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "ザ・クロー（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "利爪（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Коготь (аттракцион)"; }
            break;

        case "FerrisWheel":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Ferris wheel (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "観覧車（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "摩天轮（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "колесо обозрения (аттракцион)"; }
            break;

        case "ChangeSpeedFerrisWheel":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change ferris wheel rotate speed"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "観覧車の回転速度の変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "更改摩天轮转速"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменить скорость вращения колеса обозрения"; }
            break;

        case "MerryGoRound":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Merry-go-round (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "メリーゴーランド（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "旋转木马（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "карусель (аттракцион)"; }
            break;

        case "ChangeSpeedMerryGoRound":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Change merry-go-round rotate speed"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "メリーゴーランドの回転速度の変更"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "更改旋转木马转速"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Изменение скорости вращения карусели"; }
            break;

        case "Centrox":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Centrox (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "セントロックス（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "森特克斯（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Центрокс (аттракцион)"; }
            break;

        case "Vertigo":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Vertigo (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "ヴァーティゴ（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "眩晕（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "головокружение (аттракцион)"; }
            break;

        case "Fireball":
            if (        selfLang == level.MOD_DEFINE.LANG_EN ) { return "Fire ball (attraction)"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_JA ) { return "ファイアーボール（アトラクション）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_CN ) { return "火球（景点）"; }
            // else if (   selfLang == level.MOD_DEFINE.LANG_RU ) { return "Огненный шар (аттракцион)"; }
            break;
            
        default:
            return "<NOT FOUND TEXT>";
    }
}