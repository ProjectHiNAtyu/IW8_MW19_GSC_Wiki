//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2024/03/15
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2024/03/15
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





//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// EN : Attention!!: 
// EN : The functions below are required when running a custom GSC using the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// EN : If you delete them, it will no longer function and you will get DEV ERROR 1141.
// JA : 注意！！：
// JA : ここから下にある関数は、GSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムGSC実行する時に必要な関数です。
// JA : 削除するとDEV ERROR 1141で機能しなくなります。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://



// don't remove any of these below

firesalediscount( var_0, var_1 )
{
    
}

fix_wall_traversal( var_0, var_1 )
{
    
}

ontimelimit() {
}

_id_1318D( var_0, var_1 )
{

}



//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start)
// EN : * This initialization function is for loading the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc")
// EN : * If you use this GSC with Donetsk 1816.gscbin, you do not need this Init( ) function.
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// JA : ※この初期化関数はGSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」が読み込むための関数です）
// JA : ※Donetsk 1816.gscbin でこのGSCを使用する場合、この Init( ) 関数は不要です
//++++++++++++++++++++++++++++++
Init( )
{
    level thread InitProject( );
}



//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// EN : Attention!!: 
// EN : The functions above are required when running a custom GSC using the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// EN : If you delete them, it will no longer function and you will get DEV ERROR 1141.
// JA : 注意！！：
// JA : ここから上にある関数は、GSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムGSC実行する時に必要な関数です。
// JA : 削除するとDEV ERROR 1141で機能しなくなります。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://





//++++++++++++++++++++++++++++++
// EN : Initialization process (loaded during map load after match start.)
// EN : * This initialization function is read by "1816.gscbin" (scripts\mp\art.gsc).
// EN : * If you use a GSC other than "1816.gscbin", this Main( ) function is not necessary.
// JA : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// JA : ※この初期化関数は 「1816.gscbin」（scripts\mp\art.gsc）が読み込むための関数です）
// JA : ※「1816.gscbin」以外のGSCを使用する場合、この Main( ) 関数は不要です
//++++++++++++++++++++++++++++++
Main( )
{
    level thread InitProject( );
}



//++++++++++++++++++++++++++++++
// EN : System initialization process (measures to prevent custom GSC from being loaded in twenty)
// JA : システム初期化処理（カスタムGSCが二十で読み込まれないようにするための対策）
//++++++++++++++++++++++++++++++
InitProject( )
{
    level.MODDEF = SpawnStruct( );

    level.MODDEF.LN_EN                  = 0;
    level.MODDEF.LN_JA                  = 1;
    level.MODDEF.LN_CN                  = 2;
    level.MODDEF.LN_RU                  = 3;


    level.MODDEF.LV_UNVERIFIED          = 0;
    level.MODDEF.LV_VERIFIED            = 1;
    level.MODDEF.LV_VIP                 = 2;
    level.MODDEF.LV_ADMIN               = 3;
    level.MODDEF.LV_COHOST              = 4;
    level.MODDEF.LV_HOST                = 5;


    level.MODDEF.AR_SELF                = 0;
    level.MODDEF.AR_LEVEL               = 1;
    level.MODDEF.AR_DVAR                = 2;
    level.MODDEF.AR_PERK                = 3;
    level.MODDEF.AR_PLAYER              = 4;
    level.MODDEF.AR_DEVIDE              = 5;
    level.MODDEF.AR_CONTENT             = 6;
    level.MODDEF.AR_LVCONTENT           = 7;
    level.MODDEF.AR_DEVIDEVOL           = 8;
    level.MODDEF.AR_DEVIDELEV           = 9;
    level.MODDEF.AR_SUBMENU             = 10;
    
    
    level.MODDEF.MOD_INITIALIZE         = 0;
    level.MODDEF.MOD_PROCESSING         = 1;
    level.MODDEF.MOD_FINALIZE           = 2;
    
    
    level.MODDEF.MOD_DISABLED           = 0;
    level.MODDEF.MOD_ENABLED            = 1;
    level.MODDEF.MOD_NOTONF             = 2;
    level.MODDEF.MOD_REFLESH            = 3;
    level.MODDEF.MOD_FASTREFLESH        = 4;
    

    level.MODDEF.VALUE_ROOT             = 0;


    level.MODDEF.LY_ROOT                = 0;
    level.MODDEF.LY_MAINMODS            = 2;
    level.MODDEF.LY_LANGUAGES           = 3;
    level.MODDEF.LY_DESIGN              = 4;
    level.MODDEF.LY_MESSAGES            = 5;
    level.MODDEF.LY_COMBATASSIST        = 6;
    level.MODDEF.LY_FUNNY               = 9;
    level.MODDEF.LY_MODELS              = 10;
    level.MODDEF.LY_WEAPONS             = 11;
    level.MODDEF.LY_CUSTOMWEAPONS       = 12;
    level.MODDEF.LY_BULLETS             = 13;
    level.MODDEF.LY_POPULAR             = 14;
    level.MODDEF.LY_CUSTOMKILLSTREAKS   = 16;
    level.MODDEF.LY_POWERED             = 17;
    level.MODDEF.LY_VEHICLES            = 19;
    level.MODDEF.LY_GAMESETTINGS        = 21;
    level.MODDEF.LY_PLAYERSMOD          = 22;
    level.MODDEF.LY_ALLPLAYERS          = 23;

    level.MODDEF.LY_PACKAGE_MODELS      = 30;
    level.MODDEF.LY_FLAG_MODELS         = 31;
    level.MODDEF.LY_DOGTAG_MODELS       = 32;
    level.MODDEF.LY_VEHICLE_MODELS      = 33;
    level.MODDEF.LY_PROP_MODELS         = 34;
    level.MODDEF.LY_MAP_MODELS          = 35;

    level.MODDEF.LY_DEFVEHICLES         = 75;

    level.MODDEF.LY_PLAYERSREF          = 100;

    level.lvlStat = [];

    //SetDVAR( "NTPNRQTKNP" , 1 ); // sv_cheats
    //SetDVAR( "developer_script" , 0 );
    //SetDVAR( "bg_fallDamageMinHeight", 10000 );

    level._effect["emp_detonation"] = LoadFX( "vfx/iw8_mp/equipment/emp/vfx_emp_main_blast.vfx" );
    level.g_effect["vfx_suicide_bomber_gib_explode"] = LoadFX( "vfx/iw8/weap/_explo/suicide/vfx_explo_suicide_bomb.vfx" );

    // EN : Build model list
    // JA : モデルリストを構築する
    level ModelListConstruction( true );

    // EN : Subthread OnPlayerConnect( ) for the entire room
    // JA : 部屋全体に OnPlayerConnect( ) をサブスレッドで実行する
    level thread OnPlayerConnected( );

    // EN : Subthread OnLobbyPlayEnded( ) for the entire room
    // JA : 部屋全体に OnLobbyPlayEnded( ) をサブスレッドで実行する
    level thread OnLobbyPlayEnded( );
}



//++++++++++++++++++++++++++++++
// EN : Processing executed when the match ends
// JA : 試合が終了した時に実行される処理
//++++++++++++++++++++++++++++++
OnLobbyPlayEnded( )
{
    // EN : Wait for "game is over"
    // JA : 「試合が終了した」ことを待機する
    level WaitTill( "game_ended" );
    
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
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
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
        if ( IsDefined( level.lvlStat["ForceRespawnPoint" + "_Flag"] ) )
        {
            self SetOrigin( level.lvlStat["ForceRespawnPoint" + "_Flag"].origin );
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

        // EN: Get information on all participating players
        // JA: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // EN: If the mod menu is open
            // JA: モッドメニューを開いている場合
            if ( IsDefined( player.modSystem ) && IsDefined( player.modSystem.menuActive ) )
            {
                if ( player.modSystem.menuActive == true )
                {
                    // EN : When a player dies, the kill log will shift, so all players are encouraged to update their menu.
                    // JA : プレイヤーが死ぬとキルログがずれるため、メニューの更新を全プレイヤーに促す
                    player Notify( "death_other_player" );
                }
            }
        }
        
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
        if ( IsDefined( self.optStat["BindNoclipLinkObject"] ) )                { self thread ExecBindNoclip( "BindNoclip" , level.MODDEF.MOD_FINALIZE ); }
        if ( IsDefined( self.optStat["SetModel"] ) )                            { self thread ExecSetModel( "SetModel" , level.MODDEF.MOD_FINALIZE ); }
        if ( IsDefined( self.optStat["WalkingAC130"] ) )                        { self thread ExecWalkingAC130( "WalkingAC130" , level.MODDEF.MOD_FINALIZE ); }

        // EN : If various functions are being executed, Disable each function
        // JA : 各種機能が実行中だった場合、各機能を無効にする
        if ( IsDefined( self.optStat["RocketRide"] ) )         { self.optStat["RocketRide"] = undefined; }
        if ( IsDefined( self.optStat["KamikazeBomber"] ) )     { self.optStat["KamikazeBomber"] = undefined; }
        if ( IsDefined( self.optStat["RealCarepackageGun"] ) ) { self.optStat["RealCarepackageGun"] = undefined; }
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
    if ( IsDefined( self.optStat["ThirdPerson"] ) )            { self thread ExecLoopFunction( "ThirdPerson"           , ::ExecThirdPerson             , 1 ); }
    
    if ( IsDefined( self.optStat["JetPack"] ) )                { self thread ExecLoopFunction( "JetPack"               , ::ExecJetPack                 , 0.1 ); }
    if ( IsDefined( self.optStat["NinjaMode"] ) )              { self thread ExecLoopFunction( "NinjaMode"             , ::ExecNinjaMode               , 0.05 ); }
    if ( IsDefined( self.optStat["DiscoCamo"] ) )              { self thread ExecLoopFunction( "DiscoCamo"             , ::ExecDiscoCamo               , 0.15 ); }
    
    if ( IsDefined( self.optStat["SetModel"] ) )               { self thread ExecLoopFunction( "SetModel"              , ::ExecSetModel                , 0.05 ); }

    if ( IsDefined( self.optStat["ModdedBullets"] ) )          { self thread ExecLoopFunction( "ModdedBullets"         , ::ExecModdedBullets           , 0.05 ); }
    
    if ( IsDefined( self.optStat["InfinityAmmo"] ) )           { self thread ExecLoopFunction( "InfinityAmmo"          , ::ExecInfinityAmmo            , 0.05 ); }
    if ( IsDefined( self.optStat["BindNoclip"] ) )             { self thread ExecLoopFunction( "BindNoclip"            , ::ExecBindNoclip              , 0.05 ); }
    if ( IsDefined( self.optStat["Invisible"] ) )              { self thread ExecLoopFunction( "Invisible"             , ::ExecInvisible               , 1 ); }

    if ( IsDefined( self.optStat["Godmode"] ) )                { self thread ExecLoopFunction( "Godmode"               , ::ExecGodmode                 , 1 ); }

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
    self.curLang = level.MODDEF.LN_EN;
    
    // EN: If you are the host performing this process
    // JA: この処理を実行している自分がホストである場合
    if ( self IsHost( ) )
    {
        // EN : Build model list
        // JA : モデルリストを構築する
        level ModelListConstruction( undefined );
        // EN : Build a mod menu
        // JA : モッドメニューを構築する
        level ModMenuConstruction( );

        // EN: Assign equivalent privileges to the host
        // JA: ホストに相当する権限を割り振る
        self.verificationStatusIndex = level.MODDEF.LV_HOST;

        // EN: Create a variable that only you will use while processing the mod
        // JA: 自分のみがModの処理中に使う変数を作成する
        self InitializeSelfData( );
        
        // EN: Start button monitoring process
        // JA: ボタンモニタリング処理を開始する
        self thread OnButtonMonitoring( );
    }
    // EN: If you are the participant performing this process
    // JA: この処理を実行している自分が参加者である場合
    else
    {
        // EN: Assign equivalent privileges to unauthorized persons
        // JA: 未承認者に相当する権限を割り振る
        self.verificationStatusIndex = level.MODDEF.LV_UNVERIFIED;
    }
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
    self.optStat = [];
    
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
    self.modSystem.menuLayerCurrent = level.MODDEF.VALUE_ROOT;

    // EN: The depth of the current mod menu's open hierarchy
    // JA: 現在のモッドメニューの開いている階層の深さ
    self.modSystem.menuLayerDepth = level.MODDEF.VALUE_ROOT;

    // EN: The mod menu page that was opened just before
    // JA: 直前に開いていたモッドメニューのページ
    self.modSystem.menuLayerPrevious[self.modSystem.menuLayerDepth] = self.modSystem.menuLayerCurrent;

    // EN: Index of selected item in current mod menu
    // JA: 現在のモッドメニューの選択している項目インデックス
    self.modSystem.menuOptionCurrent = level.MODDEF.VALUE_ROOT;

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
    self.optStat                   = undefined;
}



//++++++++++++++++++++++++++++++
// EN : Check if you have been assigned permissions of "Unverified" or higher
// JA : 自分に「未承認」以上の権限が割り振られているか調べる
//++++++++++++++++++++++++++++++
IsVerified( )
{
    // EN: If the approval authority has not been initialized yet, it is considered "Unverified".
    // JA: まだ承認権限の初期化がされていない場合は「未承認」とみなす
    if ( !IsDefined( self.verificationInit ) )
    {
        return false;
    }

    // EN: Check if it is greater than or equal to "Unverified" and return the result
    // JA: 「Unverified」以上かどうかを確認して、その結果を返す
    if ( self.verificationStatusIndex <= level.MODDEF.LV_UNVERIFIED )
    {
        return false;
    }
    
    return true;
}



//++++++++++++++++++++++++++++++
// EN : Display a "Welcome" message
// JA : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
ShowWelocomeMessage( )
{
    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

    // EN : Get the translation equivalent to the specified text ID in the current language
    // JA : 現在の言語で、指定したテキストIDに相当する翻訳を取得する
    l_textWelcome           = GetMultilingualText( self.curLang , "WelcomeTo" );
    l_textProjectName       = GetMultilingualText( self.curLang , "ProjectName" );
    l_textModdedLobby       = GetMultilingualText( self.curLang , "ModdedLobby" );
    
    l_textYourMenuStatus    = GetMultilingualText( self.curLang , "YourMenuStatus" );
    l_textVerifiedLevel     = GetMultilingualText( self.curLang , GetVerifiedText( self.verificationStatusIndex ) );
    l_textMenuDescription   = GetMultilingualText( self.curLang , "ModMenuOpenDescription" );

    // EN : Display a message in the kill log area at the bottom left of your screen(The kill log has 6 lines, so fill in 3 blank lines)
    // JA : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( "" );
    self iPrintln( l_textMenuDescription );
    self iPrintln( l_textYourMenuStatus + l_textVerifiedLevel );
    self iPrintln( l_textWelcome + l_textProjectName + l_textModdedLobby );
}



//++++++++++++++++++++++++++++++
// EN : Allow player actions
// JA : プレイヤーの行動を許可する
//++++++++++++++++++++++++++++++
AllowPlayerMovements( )
{
    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

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

    // EN : If you are not assigned permissions higher than "Unverified", do nothing.
    // JA : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self IsVerified( ) ) )
    {
        return;
    }

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
                // EN: While the tactical throw button is pressed
                // JA: タクティカルを投げるボタンが押されている間
                if ( self GetKeycodePressed( "Tactical" , "Tactical" ) )
                {
                    // EN: Scroll item up
                    // JA: 項目を上にスクロールする
                    self ModMenuScrollUp( );

                    // EN: wait 0.15 seconds
                    // JA: 0.15秒待機する
                    wait 0.15;
                }
                // EN: While the "Use" button is pressed and the "Aim" button is not pressed
                // JA: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されていない間
                else if ( self GetKeycodePressed( "Use" , "Use" ) && ( self GetKeycodePressed( "Ads" , "Ads" ) == false ) )
                {
                    // EN: Scroll item down
                    // JA: 項目を下にスクロールする
                    self ModMenuScrollDown( );

                    // EN: wait 0.15 seconds
                    // JA: 0.15秒待機する
                    wait 0.15;
                }
                // EN: While the "Use" button is pressed and the "Aim" button is pressed
                // JA: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されている間
                else if ( self GetKeycodePressed( "Use" , "Use" ) && ( self GetKeycodePressed( "Ads" , "Ads" ) == true ) )
                {
                    // EN: Determine the selected item
                    // JA: 選択中の項目を決定する
                    self ModMenuDecideOption( );
                }
                // EN: While the "Melee Attack" button is pressed and the "Aim" button is pressed
                // JA: "近接攻撃" ボタンが押されていて、且つ "エイム" ボタンが押されている間
                else if ( self GetKeycodePressed( "Melee" , "Melee" ) && self GetKeycodePressed( "Ads" , "Ads" ) )
                {
                    // EN: Return the mod menu level to the previous level (close the menu if it is the root)
                    // JA: モッドメニューの階層を1つ前に戻す（ルートの場合はメニューを閉じる）
                    self ModMenuBackLayer( );
                }
            }
        }

        WaitFrame( );
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
    l_JPIconX       = -98;
    // EN: If the number of text lines in the mod menu is 5 lines
    // JA: モッドメニューのテキスト行数が5行の場合
    if ( IsDefined( self.optStat["SwitchTextNumberLine"] ) )
    {
        l_BottomBarY = l_Center + 45;
    }
    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optStat["ChangeOpenCloseAnimation"] ) )
    {
        l_TopBarY       = -750;
        l_BackgroundY   = -750;
        l_BottomBarY    = -750;
        l_ElemX         = 2000;
        l_ElemW         = 0;
        l_JPIconX       = 2000;
    }

    // EN: Create background UI for mod menu
    // JA: モッドメニューの背景UIを作成する
    self.modSystem.menuUI["TopBar"]     = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX               , l_TopBarY             , l_ElemW , 0   , DivideColor( 37  , 72   , 106   ) , "white"                               , 1, 0.85 );
    self.modSystem.menuUI["Background"] = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX               , l_BackgroundY         , l_ElemW , 0   , DivideColor( 55  , 55   , 55    ) , "white"                               , 0, 0.85 );
    self.modSystem.menuUI["BottomBar"]  = self CreateRectangle( "CENTER" , "CENTER" , l_ElemX               , l_BottomBarY          , l_ElemW , 0   , DivideColor( 37  , 29   , 30    ) , "white"                               , 1, 0.85 );
    self.modSystem.menuUI["JapW"]       = self CreateRectangle( "CENTER" , "CENTER" , l_JPIconX             , l_TopBarY             , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 2, 1 );
    self.modSystem.menuUI["JapR"]       = self CreateRectangle( "CENTER" , "CENTER" , l_JPIconX             , l_TopBarY             , l_ElemW , 0   , DivideColor( 188 , 0    , 45    ) , "hud_realism_head_revive"             , 3, 1 );
    self.modSystem.menuUI["JapRFix1"]   = self CreateRectangle( "CENTER" , "CENTER" , l_JPIconX             , ( l_TopBarY - 1 )     , l_ElemW , 0   , DivideColor( 188 , 0    , 45    ) , "white"                               , 4, 1 );
    self.modSystem.menuUI["JapRFix2"]   = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX + 1 )     , ( l_TopBarY - 2 )     , l_ElemW , 0   , DivideColor( 188 , 0    , 45    ) , "white"                               , 5, 1 );
    self.modSystem.menuUI["JapWFix"]    = self CreateRectangle( "CENTER" , "CENTER" , l_JPIconX             , ( l_TopBarY + 7 )     , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 6, 1 );
    self.modSystem.menuUI["WordJ1"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 60 )    , l_TopBarY             , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 2, 1 );
    self.modSystem.menuUI["WordJ2"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 65 )    , ( l_TopBarY + 10 )    , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 3, 1 );
    self.modSystem.menuUI["WordP1"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 50 )    , l_TopBarY             , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 2, 1 );
    self.modSystem.menuUI["WordP2"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 45 )    , ( l_TopBarY - 10 )    , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 3, 1 );
    self.modSystem.menuUI["WordP3"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 40 )    , ( l_TopBarY - 7 )     , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 2, 1 );
    self.modSystem.menuUI["WordP4"]     = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 44 )    , ( l_TopBarY - 2 )     , l_ElemW , 0   , DivideColor( 255 , 255  , 255   ) , "white"                               , 3, 1 );
    self.modSystem.menuUI["CuteIcon"]   = self CreateRectangle( "CENTER" , "CENTER" , ( l_JPIconX - 27 )    , l_TopBarY             , l_ElemW , 0   , DivideColor( 73  , 183  ,238    ) , "compass_objpoint_deploy_friendly"    , 2, 1 );

    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optStat["ChangeOpenCloseAnimation"] ) )
    {
        // EN : Define the coordinates to display the mod menu background UI
        // JA : モッドメニューの背景UIを表示する座標を定義
        l_TopBarY       = l_Center - 44.6;
        l_BackgroundY   = l_Center - 2;
        l_BottomBarY    = l_Center + 30;
        l_JPIconX       = -98;
        // EN: If the number of text lines in the mod menu is 5 lines
        // JA: モッドメニューのテキスト行数が5行の場合
        if ( IsDefined( self.optStat["SwitchTextNumberLine"] ) )
        {
            l_BottomBarY = l_Center + 45;
        }

        // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
        // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
        self.modSystem.menuUI["TopBar"]     ElementMoveXY( 0.3 , -330                   , l_TopBarY );
        self.modSystem.menuUI["Background"] ElementMoveXY( 0.3 , -330                   , l_BackgroundY );
        self.modSystem.menuUI["BottomBar"]  ElementMoveXY( 0.3 , -330                   , l_BottomBarY );
        self.modSystem.menuUI["JapW"]       ElementMoveXY( 0.3 , l_JPIconX              , l_TopBarY );
        self.modSystem.menuUI["JapR"]       ElementMoveXY( 0.3 , l_JPIconX              , l_TopBarY );
        self.modSystem.menuUI["JapRFix1"]   ElementMoveXY( 0.3 , l_JPIconX              , ( l_TopBarY - 1 ) );
        self.modSystem.menuUI["JapRFix2"]   ElementMoveXY( 0.3 , ( l_JPIconX + 1 )      , ( l_TopBarY - 2 ) );
        self.modSystem.menuUI["JapWFix"]    ElementMoveXY( 0.3 , l_JPIconX              , ( l_TopBarY + 7 ) );
        self.modSystem.menuUI["WordJ1"]     ElementMoveXY( 0.3 , ( l_JPIconX - 60 )     , l_TopBarY );
        self.modSystem.menuUI["WordJ2"]     ElementMoveXY( 0.3 , ( l_JPIconX - 65 )     , ( l_TopBarY + 10 ) );
        self.modSystem.menuUI["WordP1"]     ElementMoveXY( 0.3 , ( l_JPIconX - 50 )     , l_TopBarY );
        self.modSystem.menuUI["WordP2"]     ElementMoveXY( 0.3 , ( l_JPIconX - 45 )     , ( l_TopBarY - 10 ) );
        self.modSystem.menuUI["WordP3"]     ElementMoveXY( 0.3 , ( l_JPIconX - 40 )     , ( l_TopBarY - 7 ) );
        self.modSystem.menuUI["WordP4"]     ElementMoveXY( 0.3 , ( l_JPIconX - 44 )     , ( l_TopBarY - 2 ) );
        self.modSystem.menuUI["CuteIcon"]   ElementMoveXY( 0.3 , ( l_JPIconX - 27 )     , l_TopBarY );
    }
    
    // EN : Changes the height and width of the specified HUD (on-screen UI) in the specified number of seconds.
    // JA : 指定したHUD（画面上のUI）の縦横幅を、指定した秒数でサイズ変更する
    l_ElemW = 500;
    l_JapWElemH = 25;
    l_WordW = 4;
    self.modSystem.menuUI["TopBar"]     ScaleOverTime( 0.3 , l_ElemW                , ( l_JapWElemH + 2 ) );
    self.modSystem.menuUI["Background"] ScaleOverTime( 0.3 , l_ElemW                , 82 );
    self.modSystem.menuUI["BottomBar"]  ScaleOverTime( 0.3 , l_ElemW                , 19 );
    self.modSystem.menuUI["JapW"]       ScaleOverTime( 0.3 , ( l_JapWElemH + 6 )    , l_JapWElemH );
    self.modSystem.menuUI["JapR"]       ScaleOverTime( 0.3 , ( l_JapWElemH + 5 )    , ( l_JapWElemH + 5 ) );
    self.modSystem.menuUI["JapRFix1"]   ScaleOverTime( 0.3 , ( l_JapWElemH - 17 )   , ( l_JapWElemH - 17 ) );
    self.modSystem.menuUI["JapRFix2"]   ScaleOverTime( 0.3 , ( l_JapWElemH - 17 )   , ( l_JapWElemH - 17 ) );
    self.modSystem.menuUI["JapWFix"]    ScaleOverTime( 0.3 , ( l_JapWElemH - 10 )   , ( l_JapWElemH - 22 ) );
    self.modSystem.menuUI["WordJ1"]     ScaleOverTime( 0.3 , l_WordW                , l_JapWElemH );
    self.modSystem.menuUI["WordJ2"]     ScaleOverTime( 0.3 , ( l_WordW + 6 )        , ( l_WordW + 1 ) );
    self.modSystem.menuUI["WordP1"]     ScaleOverTime( 0.3 , l_WordW                , l_JapWElemH );
    self.modSystem.menuUI["WordP2"]     ScaleOverTime( 0.3 , ( l_WordW + 6 )        , ( l_WordW + 1 ) );
    self.modSystem.menuUI["WordP3"]     ScaleOverTime( 0.3 , l_WordW                , ( l_JapWElemH - 14 ) );
    self.modSystem.menuUI["WordP4"]     ScaleOverTime( 0.3 , ( l_WordW + 8 )        , l_WordW );
    self.modSystem.menuUI["CuteIcon"]   ScaleOverTime( 0.3 , ( l_JapWElemH - 10 )   , ( l_JapWElemH - 10 ) );

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
        self.modSystem.menuLayerCurrent = level.MODDEF.LY_LANGUAGES;
        // EN: Index of selected item in current mod menu
        // JA: 現在のモッドメニューの選択している項目インデックス
        self.modSystem.menuOptionCurrent = level.MODDEF.LN_EN;
        // EN: The depth of the current mod menu's open hierarchy
        // JA: 現在のモッドメニューの開いている階層の深さ
        self.modSystem.menuLayerDepth = 1;
        // EN: The mod menu page that was opened just before
        // JA: 直前に開いていたモッドメニューのページ
        self.modSystem.menuLayerPrevious[0] = level.MODDEF.LY_ROOT;
        // EN: Item index of the mod menu that was most recently selected
        // JA: 直前に選択していたモッドメニューの項目インデックス
        self.modSystem.menuOptionPrevious[0] = ( level.MODDEF.LY_LANGUAGES - 1 );
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
    // EN: If the currently open menu level is not the player refer menu
    // JA: 今開いているメニュー階層がプレイヤー参照メニューではない場合
    if ( self.modSystem.menuLayerCurrent != level.MODDEF.LY_PLAYERSREF )
    {
        // EN: If the current menu hierarchy is the root
        // JA: 現在のメニュー階層がルートの場合
        if ( self.modSystem.menuLayerCurrent == level.MODDEF.LY_ROOT )
        {
            // EN: If there is player information referenced in the player menu, it will be discarded.
            // JA: プレイヤーメニューで参照していたプレイヤー情報があれば、破棄する
            if ( IsDefined( self.modSystem.menuPlayer ) )
            {
                self.modSystem.menuPlayer = undefined;
            }
        }

        // EN: Update the text of the top selected Modmenu item
        // JA: 一番上の選択中のModmenu項目のテキストを設定
        self.modSystem.menuText[0] = GetModMenuText( self.curLang , self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );

        // EN: Update the currently selected mod menu item function
        // JA: 現在選択中のモッドメニューの項目関数を更新
        self.modSystem.menuFunction = GetOptionFunction( self.modSystem.menuLayerCurrent , self.modSystem.menuOptionCurrent );

        // EN: Get the maximum index of the currently open mod menu hierarchy
        // JA: 現在開いているモッドメニューの階層の最大インデックスを取得
        l_MaxIndex = GetLayerMaxIndex( self.modSystem.menuLayerCurrent , self.verificationStatusIndex  );

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
    }
    // EN: If the currently open menu hierarchy is the player reference menu
    // JA: 今開いているメニュー階層がプレイヤー参照メニューの場合
    else
    {
        l_PlayersName = [];
        l_MaxIndex = 0;

        // EN: Get information on all participating players
        // JA: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // EN: Get the privilege status of that player
            // JA: そのプレイヤーの権限状態を取得
            l_PlayersName[l_MaxIndex] = GetMultilingualText( self.curLang , GetVerifiedText( player.verificationStatusIndex ) );
            
            // EN: If the currently selected menu item index and player index match
            // JA: 現在選択中のメニュー項目インデックスと、プレイヤーインデックスが一致している場合
            if ( l_MaxIndex == self.modSystem.menuOptionCurrent )
            {
                // EN: Change selected player name to highlight color
                // JA: 選択中のプレイヤー名をハイライト色に変える
                l_PlayersName[l_MaxIndex] += "^5";
                
                // EN: Set currently selected player
                // JA: 現在選択中のプレイヤーを設定
                self.modSystem.menuPlayer = l_MaxIndex;
            }

            // EN: Get player name (Up to this point, the sentence "[authority] player name" is constructed)
            // JA: プレイヤー名を取得（ここまでで「[権限] プレイヤー名」という文章が構築される）
            l_PlayersName[l_MaxIndex] += player.name;
            
            // EN: Add player index
            // JA: プレイヤーインデックスを加算する
            l_MaxIndex++;
        }
        
        // EN: Update the text of the top selected Modmenu item
        // JA: 一番上の選択中のModmenu項目のテキストを設定
        self.modSystem.menuText[0] = l_PlayersName[self.modSystem.menuOptionCurrent];

        // EN: Update the currently selected mod menu item function
        // JA: 現在選択中のモッドメニューの項目関数を更新
        self.modSystem.menuFunction = ::ModMenuOpenSubMenu;
        
        // EN: Loop for the number of text elements of the second and subsequent Modmenu items
        // JA: ２番目以降のModmenu項目のテキストの要素数分ループ
        for ( textNum = 1; textNum < 5; textNum++ )
        {
            l_OptIndex = self.modSystem.menuOptionCurrent + textNum;

            // EN: If "Top selected Modmenu item + loop element number" does not exceed the maximum index
            // JA: 「一番上の選択中のModmenu項目 + ループ要素の数値」が、最大インデックスを超えていなければ
            if ( l_OptIndex < l_MaxIndex )
            {
                // EN: Get the player name for that item
                // JA: その項目のプレイヤー名を取得する
                self.modSystem.menuText[textNum] = l_PlayersName[l_OptIndex];
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
    }
    
    // EN: Issue a "RefreshModMenu" event to yourself (this will stop the menu text display update process)
    // JA: 自分に対して「RefreshModMenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self Notify( "RefreshModMenu" );

    // EN: Waits for only 1 frame as it waits for the update process to finish.
    // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
    wait 0.01;
    
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
    
    // EN : Update menu when player dies
    // JA : プレイヤー死亡時にメニュー更新を行う
    self thread OnPlayerDeathToUpdateModMenuText( );

    // EN: Infinite loop only while mod menu is open
    // JA: モッドメニューが開かれている間だけ無限ループ
    while ( self.modSystem.menuActive == true )
    {
        l_ProjectName = GetMultilingualText( self.curLang , "ProjectName" );

        // EN: If the number of text lines in the mod menu is 4 lines
        // JA: モッドメニューのテキスト行数が4行の場合
        if ( !IsDefined( self.optStat["SwitchTextNumberLine"] ) )
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
        if ( self.modSystem.menuLayerCurrent <= level.MODDEF.LY_ROOT )
        {
            // EN: Show project name
            // JA: プロジェクト名を表示する
            self iPrintln( l_ProjectName );
        }
        // EN: If the current menu hierarchy is other than the root
        // JA: 現在のメニュー階層がルート以外の場合
        else
        {
            // EN: If the current menu hierarchy is not the player menu
            // JA: 現在のメニュー階層がプレイヤーメニューではない場合
            if ( self.modSystem.menuLayerCurrent != level.MODDEF.LY_PLAYERSMOD )
            {
                // EN: Display “Project name/Current submenu name”
                // JA: 「プロジェクト名 / 現在のサブメニュー名」を表示する
                self iPrintln( l_ProjectName + "^3 / " + GetModMenuText( self.curLang , self.modSystem.menuLayerPrevious[(self.modSystem.menuLayerDepth - 1)] , self.modSystem.menuOptionPrevious[(self.modSystem.menuLayerDepth - 1)] ) );
            }
            // EN: If the current menu hierarchy is the player menu
            // JA: 現在のメニュー階層がプレイヤーメニューの場合
            else
            {
                // EN: Display "Project name/[Authority level] Selected player name"
                // JA: 「プロジェクト名 / [権限レベル] 選択中のプレイヤー名」を表示する
                self iPrintln( l_ProjectName + "^3 / " + GetMultilingualText( self.curLang , GetVerifiedText( level.players[self.modSystem.menuPlayer].verificationStatusIndex ) ) + level.players[self.modSystem.menuPlayer].name );
            }
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
    self WaitTill( "death_other_player" );

    // EN: Do not process if mod menu is not open
    // JA: モッドメニューが開かれていない場合は処理しない
    if ( !IsDefined( self.modSystem ) ) { return; }
    if ( self.modSystem.menuActive == false ) { return; }
    
    // EN: Issue a "RefreshModMenu" event to yourself (this will stop the menu text display update process)
    // JA: 自分に対して「RefreshModMenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self Notify( "RefreshModMenu" );

    // EN: Waits for only 1 frame as it waits for the update process to finish.
    // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
    wait 0.01;
    
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
        if ( self.modSystem.menuLayerCurrent != level.MODDEF.LY_PLAYERSREF )
        {
            // EN: Get the maximum index for each authority in each menu hierarchy
            // JA: 各メニュー階層における、権限毎の最大インデックスを取得する
            self.modSystem.menuOptionCurrent = GetLayerMaxIndex( self.modSystem.menuLayerCurrent , self.verificationStatusIndex );
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
    if ( self.modSystem.menuLayerCurrent != level.MODDEF.LY_PLAYERSREF )
    {
        // EN: Get the maximum index for each authority in each menu hierarchy
        // JA: 各メニュー階層における、権限毎の最大インデックスを取得する
        l_MaxIndex = GetLayerMaxIndex( self.modSystem.menuLayerCurrent , self.verificationStatusIndex  );
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
    l_Update = level.modMenuData[self.modSystem.menuLayerCurrent].item[self.modSystem.menuOptionCurrent].update;

    self thread [[ self.modSystem.menuFunction ]]( );

    // EN: When opening a submenu or for items that do not require text updates, update the text during other processing.
    // JA: サブメニューを開いた時の場合や、文字更新の必要ない項目は、他処理時に文字更新を行う
    if ( !IsDefined( l_Update ) ||
        ( l_Update == level.MODDEF.MOD_NOTONF ) ||
        ( l_Update == level.MODDEF.AR_SUBMENU ) )
    {
        wait 0.15;
    }
    // EN: Update the text displayed in the mod menu
    // JA: モッドメニューの表示するテキストを更新する
    else if ( ( l_Update == level.MODDEF.MOD_ENABLED ) ||
            ( l_Update == level.MODDEF.MOD_REFLESH ) )
    {
        wait 0.15;
        self ModMenuTextUpdate( );
    }
    // EN: For items that you want to make ultra-high-speed decisions, update the text instantly.
    // JA: 超高速で項目決定を行いたい項目は、瞬時にテキスト更新を行う
    else if ( l_Update == level.MODDEF.MOD_FASTREFLESH )
    {
        WaitFrame( );
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

    // EN: If the current menu hierarchy is the player refer menu
    // JA: 現在のメニュー階層がプレイヤー参照メニューの場合
    if ( self.modSystem.menuLayerCurrent == level.MODDEF.LY_PLAYERSREF )
    {
        // EN: Set to layer index in player menu
        // JA: プレイヤーメニューのレイヤーインデックスに設定する
        self.modSystem.menuLayerCurrent = level.MODDEF.LY_PLAYERSMOD;
    }
    // EN: For other menu levels
    // JA: それ以外のメニュー階層の場合
    else
    {
        self.modSystem.menuLayerCurrent = level.modMenuData[self.modSystem.menuLayerCurrent].item[self.modSystem.menuOptionCurrent ].jumpPage;
    }

    // EN: Move the selected item index to the top
    // JA: 選択中の項目インデックスを一番上にする
    self.modSystem.menuOptionCurrent = level.MODDEF.VALUE_ROOT;

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
    if ( level.MODDEF.LY_ROOT < self.modSystem.menuLayerDepth )
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
    if ( !IsDefined( self.optStat["ChangeOpenCloseAnimation"] ) )
    {
        l_ElemW = 0;
    }
    
    // EN: If the mod menu opening/closing animation is "FM|T BO2 Revolution style"
    // JA: モッドメニューの開閉アニメーションが "FM|T BO2 Revolution style" の場合
    if ( !IsDefined( self.optStat["ChangeOpenCloseAnimation"] ) )
    {
        // EN : Move the XY axis position of the specified HUD (on-screen UI) in the specified number of seconds.
        // JA : 指定したHUD（画面上のUI）のXY軸の位置を、指定した秒数で移動させる
        self.modSystem.menuUI["TopBar"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["Background"] ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["BottomBar"]  ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["JapW"]       ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["JapR"]       ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["JapRFix1"]   ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["JapRFix2"]   ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["JapWFix"]    ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordJ1"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordJ2"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordP1"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordP2"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordP3"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["WordP4"]     ElementMoveXY( 0.3 , 2000 , 425 );
        self.modSystem.menuUI["CuteIcon"]   ElementMoveXY( 0.3 , 2000 , 425 );
    }
    
    // EN : Changes the height and width of the specified HUD (on-screen UI) in the specified number of seconds.
    // JA : 指定したHUD（画面上のUI）の縦横幅を、指定した秒数でサイズ変更する
    self.modSystem.menuUI["TopBar"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["Background"] ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["BottomBar"]  ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["JapW"]       ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["JapR"]       ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["JapRFix1"]   ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["JapRFix2"]   ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["JapWFix"]    ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordJ1"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordJ2"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordP1"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordP2"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordP3"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["WordP4"]     ScaleOverTime( 0.3 , l_ElemW , 0 );
    self.modSystem.menuUI["CuteIcon"]   ScaleOverTime( 0.3 , l_ElemW , 0 );

    // EN: wait 0.3 seconds
    // JA: 0.3秒待機する
    wait 0.3;

    // EN: Delete the created mod menu design UI
    // JA: 作成したモッドメニューのデザインUIを削除する
    self.modSystem.menuUI["TopBar"]     Destroy( ); self.modSystem.menuUI["TopBar"]     = undefined;
    self.modSystem.menuUI["Background"] Destroy( ); self.modSystem.menuUI["Background"] = undefined;
    self.modSystem.menuUI["BottomBar"]  Destroy( ); self.modSystem.menuUI["BottomBar"]  = undefined;
    self.modSystem.menuUI["JapW"]       Destroy( ); self.modSystem.menuUI["JapW"]       = undefined;
    self.modSystem.menuUI["JapR"]       Destroy( ); self.modSystem.menuUI["JapR"]       = undefined;
    self.modSystem.menuUI["JapRFix1"]   Destroy( ); self.modSystem.menuUI["JapRFix1"]   = undefined;
    self.modSystem.menuUI["JapRFix2"]   Destroy( ); self.modSystem.menuUI["JapRFix2"]   = undefined;
    self.modSystem.menuUI["JapWFix"]    Destroy( ); self.modSystem.menuUI["JapWFix"]    = undefined;
    self.modSystem.menuUI["WordJ1"]     Destroy( ); self.modSystem.menuUI["WordJ1"]     = undefined;
    self.modSystem.menuUI["WordJ2"]     Destroy( ); self.modSystem.menuUI["WordJ2"]     = undefined;
    self.modSystem.menuUI["WordP1"]     Destroy( ); self.modSystem.menuUI["WordP1"]     = undefined;
    self.modSystem.menuUI["WordP2"]     Destroy( ); self.modSystem.menuUI["WordP2"]     = undefined;
    self.modSystem.menuUI["WordP3"]     Destroy( ); self.modSystem.menuUI["WordP3"]     = undefined;
    self.modSystem.menuUI["WordP4"]     Destroy( ); self.modSystem.menuUI["WordP4"]     = undefined;
    self.modSystem.menuUI["CuteIcon"]   Destroy( ); self.modSystem.menuUI["CuteIcon"]   = undefined;
    
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
        if ( !IsDefined( self.optStat["SwitchBackgroundAnimation"] ) )
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
        if ( IsDefined( self.optStat["SwitchTextNumberLine"] ) )
        {
            // EN: If the layout has not been changed to match the number of text lines in the mod menu
            // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わっていない場合
            if ( !IsDefined( self.optStat["SwitchTextNumberLine" + "_Init"] ) )
            {
                // EN: Suppose you have finished changing the layout to match the number of text lines in the mod menu.
                // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わったとする
                self.optStat["SwitchTextNumberLine" + "_Init"] = true;
                
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
            if ( IsDefined( self.optStat["SwitchTextNumberLine" + "_Init"] ) )
            {
                // EN: Suppose you have finished changing the layout to match the number of text lines in the mod menu.
                // JA: モッドメニューのテキスト行数に合わせたレイアウト変更が終わったとする
                self.optStat["SwitchTextNumberLine" + "_Init"] = undefined;
                
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
SwitchOnfSelfFunction( optName , optFunc , message , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6  , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID , camoGroup , dualMode )
{
    // EN: If the specified variable does not yet exist
    // JA: 指定の変数がまだ存在しない場合
    if ( !IsDefined( self.optStat[optName] ) )
    {
        // EN : Execute the process when the specified parameter is enabled
        // JA : 指定のパラメーターを有効にした時の処理を実行する
        self EnabledSelfParameter( self.curLang , optName , undefined , message , true , optFunc , true , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID , camoGroup , dualMode );
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
SwitchOnfSelfSubFunction( optName1 , optName2 , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 )
{
    // EN: If the specified main function variable does not yet exist
    // JA: 指定のメイン機能の変数がまだ存在しない場合
    if ( !IsDefined( self.optStat[optName1] ) )
    {
        // EN: The text "[Notification] function not executed: function name" is displayed in the center of the screen.
        // JA: 画面中央に "[通知] 機能が未実行 : 機能名称" という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "NotFuncExec" , optName1 , undefined , undefined );
        return;
    }

    // EN: If the variable for the specified subfunction does not yet exist
    // JA: 指定のサブ機能の変数がまだ存在しない場合
    if ( !IsDefined( self.optStat[optName1].modData[optName2] ) )
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
    // EN : Since the process of deleting the previously created case is in progress, the process is interrupted as it cannot be recreated.
    // JA : 前回作った筐体の削除処理が実行中の為、再作成できないとして処理を中断する
    if ( IsDefined( level.lvlStat[optName + "Deleting"] ) )
    {
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "WaitEndFunction" , undefined , undefined , undefined );
        return;
    }

    // EN: If the specified level variable does not already exist
    // JA: 指定の level 変数がまだ存在しない場合
    if ( !IsDefined( level.lvlStat[optName] ) )
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
EnabledSelfParameter( selfLang , optName1 , optName2 , message , optData , optFunc , notice , optArg1 , optArg2 , optArg3 , optArg4 , optArg5 , optArg6 , optArg7 , weaponID , inProjectile , onlyGroup , attachmentID , camoID , camoGroup , dualMode )
{
    l_OptName = "";

    // EN: If suboptions are specified
    // JA: サブオプションが指定されている場合は
    if ( IsDefined( optName2 ) )
    {
        l_OptName = optName2;
        
        // EN: Set the specified data in the variable of the specified subfunction
        // JA: 指定のサブ機能の変数に、指定のデータを設定する
        self.optStat[optName1].modData[optName2] = optData;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else if ( IsDefined( optName1 ) )
    {
        l_OptName = optName1;

        // EN: Enable specified variable
        // JA: 指定の変数を有効にする
        self.optStat[optName1] = true;
        
        // EN: Add structure to "optStat" variable
        // JA: 「optStat」変数に構造体を追加する
        self.optStat[optName1] = SpawnStruct( );
        
        // EN: Create an array to set parameters dedicated to each function
        // JA: 各機能専用のパラメーターを設定するための配列を作成
        self.optStat[optName1].modData = [];
        
        // EN: If weapon ID is specified
        // JA: 武器IDが指定されている場合
        if ( IsDefined( weaponID ) )
        {
            // EN: Get weapon data into specified variable
            // JA: 指定の変数に武器データを取得する
            self.optStat[optName1].weaponData = self ProvideWeapon(
                /* weaponID */      weaponID ,
                /* inProjectile */  inProjectile ,
                /* onlyGroup */     onlyGroup ,
                /* attachmentID */  attachmentID ,
                /* camoID */        camoID ,
                /* camoGroup */     camoGroup ,
                /* akimbo */        dualMode ,
                /* changeHand */    true ,
                /* notice */        undefined ,
                /* onlyGetID */     undefined
                );
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
        self.optStat[optName1].modData[optName2] = undefined;
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
            self ConfigureWeapon( self.optStat[optName1].weaponData , true , true , undefined , undefined , undefined );
            wait 0.01;
        }

        // EN: Disable (discard) the specified variable
        // JA: 指定の変数を無効（破棄）する
        self.optStat[optName1] = undefined;
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
        level.lvlStat[optName1].modData[optName2] = optData;
        self.optStat[optName1].modData[optName2] = optData;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else if ( IsDefined( optName1 ) )
    {
        l_OptName = optName1;

        // EN: Enable specified variable
        // JA: 指定の変数を有効にする
        level.lvlStat[optName1] = true;
        self.optStat[optName1] = true;
        
        // EN: Add structure to "lvlStat" variable
        // JA: "lvlStat" 変数に構造体を追加する
        level.lvlStat[optName1] = SpawnStruct( );
        self.optStat[optName1] = SpawnStruct( );
        
        // EN: Create an array to set parameters dedicated to each function
        // JA: 各機能専用のパラメーターを設定するための配列を作成
        level.lvlStat[optName1].modData = [];
        self.optStat[optName1].modData = [];
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
        level.lvlStat[optName1].modData[optName2] = undefined;
        self.optStat[optName1].modData[optName2] = undefined;
    }
    // EN: If no suboptions are specified
    // JA: サブオプションが指定されていない場合は
    else
    {
        l_OptName = optName1;

        // EN: Disable (discard) the specified variable
        // JA: 指定の変数を無効（破棄）する
        level.lvlStat[optName1] = undefined;
        self.optStat[optName1] = undefined;
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
ChangeSelfParameter( optName1 , optName2 , prefix , optFunc , arrayData , notice , lastEnd , random )
{
    // EN: Run the specified function if it has not already been run
    // JA: 指定された機能がまだ実行されていない場合
    if ( !IsDefined( self.optStat[optName1] ) )
    {
        // EN: If option name 2 is specified
        // JA: オプション名2が指定されている場合
        if ( IsDefined( optName2 ) )
        {
            // EN: Run once and create variables for specified functions
            // JA: 一度実行して、指定機能に関する変数を作成する
            self thread [[ optFunc ]]( );
        }
        // EN: If option name 2 is not specified
        // JA: オプション名2が指定されていない場合
        else
        {
            // EN: set the first item.
            // JA: 最初の項目を設定する
            self.optStat[optName1] = arrayData[0];
            // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
            // JA: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
            self ShowCenterMessage( self.curLang , "Notice" , optName1 , undefined , self.optStat[optName1] , prefix );
        }
    }
    // EN: If the specified function has already been executed
    // JA: 指定された機能が実行済みの場合
    else
    {
        // EN: When not randomly selected
        // JA: ランダム選定しない場合
        if ( !IsDefined( random ) )
        {
            // EN: If option name 2 is specified
            // JA: オプション名2が指定されている場合
            if ( IsDefined( optName2 ) )
            {
                // EN: If there are no subparameters yet
                // JA: まだサブパラメーターが存在しない場合
                if ( !IsDefined( self.optStat[optName1].modData[optName2] ) )
                {
                    // EN: set the first item.
                    // JA: 最初の項目を設定する
                    self.optStat[optName1].modData[optName2] = arrayData[0];
                }
                // EN: If there are subparameters yet
                // JA: サブパラメーターが存在する場合
                else
                {
                    // EN: Array length loop
                    // JA: 配列長分ループ
                    for ( index = 0; index < arrayData.size; index++ )
                    {
                        // EN: Skip until it matches the item currently being set
                        // JA: 現在設定中の項目と一致するまではスキップ
                        if ( self.optStat[optName1].modData[optName2] != arrayData[index] ) { continue; }

                        // EN: If the next item that is currently being set does not exceed the length of the array, set the next item.
                        // JA: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
                        if ( (index + 1) < arrayData.size ) { self.optStat[optName1].modData[optName2] = arrayData[index + 1]; }
                        
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
                                self.optStat[optName1].modData[optName2] = arrayData[0];
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
                }
            }
            // EN: If option name 2 is not specified
            // JA: オプション名2が指定されていない場合
            else
            {
                // EN: Array length loop
                // JA: 配列長分ループ
                for ( index = 0; index < arrayData.size; index++ )
                {
                    // EN: Skip until it matches the item currently being set
                    // JA: 現在設定中の項目と一致するまではスキップ
                    if ( self.optStat[optName1] != arrayData[index] ) { continue; }

                    // EN: If the next item that is currently being set does not exceed the length of the array, set the next item.
                    // JA: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
                    if ( (index + 1) < arrayData.size ) { self.optStat[optName1] = arrayData[index + 1]; }
                    
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
                            self.optStat[optName1] = arrayData[0];
                        }
                        // EN: To end the function at the last item
                        // JA: 最後の項目で機能を終了する場合は
                        else
                        {
                            // EN: Disable specified features
                            // JA: 指定の機能を無効にする
                            self.optStat[optName1] = undefined;
                        }
                    }
                    
                    // EN: End loop
                    // JA: ループ終了
                    break;
                }
            }
        }
        // EN: When selecting randomly, extract randomly from the array.
        // JA: ランダム選定する場合、配列内からランダムに取り出す
        else
        {
            // EN: If option name 2 is specified
            // JA: オプション名2が指定されている場合
            if ( IsDefined( optName2 ) )
            {
                self.optStat[optName1].modData[optName2] = arrayData[RandomIntRange( 0 , arrayData.size )];
            }
            // EN: If option name 2 is not specified
            // JA: オプション名2が指定されていない場合
            else
            {
                self.optStat[optName1] = arrayData[RandomIntRange( 0 , arrayData.size )];
            }
        }

        // EN: If you need to display a message
        // JA: メッセージを表示する必要がある場合
        if ( IsDefined( notice ) )
        {
            // EN: If option name 2 is specified
            // JA: オプション名2が指定されている場合
            if ( IsDefined( optName2 ) )
            {
                // EN: If the function does not end at the last item,
                // JA: 最後の項目で機能を終了しない場合は
                if ( !IsDefined( lastEnd ) )
                {
                    // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                    // JA: 画面中央に「[通知] 機能名 : 要素名」という文章を表示する
                    self ShowCenterMessage( self.curLang , "Notice" , optName2 , undefined , self.optStat[optName1].modData[optName2] , prefix );
                }
                // EN: To end the function at the last item
                // JA: 最後の項目で機能を終了する場合は
                else
                {
                    // EN: If the parent variable of the specified function exists
                    // JA: 指定の機能の親変数が存在する場合
                    if ( IsDefined( self.optStat[optName1] ) )
                    {
                        // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                        // JA: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                        self ShowCenterMessage( self.curLang , "Notice" , optName1 , undefined , self.optStat[optName1].modData[optName2] , prefix );
                    }
                }
            }
            // EN: If option name 2 is not specified
            // JA: オプション名2が指定されていない場合
            else
            {
                // EN: Display the text "[Notification] Function name: Element name" in the center of the screen.
                // JA: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                self ShowCenterMessage( self.curLang , "Notice" , optName1 , undefined , self.optStat[optName1] , prefix );
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
    self [[ optFunc ]]( optName , level.MODDEF.MOD_INITIALIZE );


    // EN: Loop until specified variable no longer exists
    // JA: 指定の変数が存在しなくなるまでループ
    while ( IsDefined( self.optStat[optName] ) )
    {
        // EN: Performs in-loop processing of specified function
        // JA: 指定の機能のループ中処理を行う
        self [[ optFunc ]]( optName , level.MODDEF.MOD_PROCESSING );

        // EN: Wait for the specified time
        // JA: 指定時間分待機する
        wait loopTime;
    }
    
    // EN: Perform termination processing for the specified function
    // JA: 指定の機能の終了処理を行う
    self [[ optFunc ]]( optName , level.MODDEF.MOD_FINALIZE );
}



//++++++++++++++++++++++++++++++
// EN : Play the effect starting from the specified object
// JA : 指定したオブジェクトを起点にエフェクトを再生する
//++++++++++++++++++++++++++++++
PlayEffectToObject( time , obj , fx , tag , type , loop , base , fix , angle , range , stop )
{
    // EN : If the specified object exists
    // JA : 指定されたオブジェクトが存在する場合
    if ( IsDefined( obj ) )
    {
        // EN: Set the specified effect name as the function termination trigger
        // JA: 指定のエフェクト名を関数の終了トリガーとする
        obj Endon( "end_" + fx );
        
        // EN : If a tag name is specified and the object does not have a tag, fix the tag name.
        // JA : タグ名が指定されていて、そのオブジェクトがタグを持っていない場合は、タグ名を修正する
        if ( IsDefined( tag ) )
        {
            if ( scripts\engine\utility::HasTag( obj.model , tag ) == false )
            {
                tag = "tag_origin";
            }
        }
    }

    // EN : To end the tag effect that is currently playing
    // JA : 再生中のタグエフェクトを終了する場合
    if ( IsDefined( stop ) )
    {
        if      ( type == "GetTag" )    { StopFXOnTag( scripts\engine\utility::GetFX( fx ) , obj , tag ); }
        else if ( type == "LoadTag" )   { StopFXOnTag( fx , obj , tag ); }

        // EN: Set the specified option name as the function termination trigger
        // JA: 指定のエフェクト名の終了トリガーを通知する
        obj Notify( "end_" + fx );
        return;
    }
    
    // EN : If adjustment coordinates are not specified, initialize them.
    // JA : 調整座標を指定されてない場合は、初期化しておく
    if ( !IsDefined( fix ) )    { fix = ( 0 , 0 , 0 ); }

    // EN: infinite loop
    // JA: 無限ループ
    while ( true )
    {
        // EN : If the specified object exists
        // JA : 指定されたオブジェクトが存在する場合
        if ( IsDefined( obj ) )
        {
            // EN : If a tag name is specified, play the effect at the coordinates of the tag name
            // JA : タグ名が指定されている場合、タグ名の座標にエフェクトを再生する
            if ( IsDefined( tag ) )
            {
                if      ( type == "GetTag" )    { PlayFxOnTag( scripts\engine\utility::GetFX( fx ) , obj , tag ); }
                else if ( type == "LoadTag" )   { PlayFxOnTag( fx , obj , tag ); }
            }
            // EN : If no tag name is specified, play the effect at a location shifted from the object to the modified coordinates.
            // JA : タグ名が指定されていない場合、オブジェクトから修正座標にずらした場所にエフェクトを再生する
            else
            {
                if ( IsDefined( angle ) )
                {
                    switch ( angle )
                    {
                        case "Up":      fix = AnglesToUp( obj.angles ) * range; break;
                        case "Forward": fix = AnglesToForward( obj.angles ) * range; break;
                        case "Left":    fix = AnglesToLeft( obj.angles ) * range; break;
                        case "Right":   fix = AnglesToRight( obj.angles ) * range; break;
                    }
                }

                if      ( type == "GetPlay" )   { PlayFX( scripts\engine\utility::GetFX( fx ) , obj.origin + fix ); }
                else if ( type == "LoadPlay" )  { PlayFX( fx , obj.origin + fix ); }

                else if ( type == "GetSpawn" )  { l_FX = SpawnFX( scripts\engine\utility::GetFX( fx ) , obj.origin + fix ); TriggerFX( l_FX ); l_FX thread DeleteAfterTime( 5 ); }
                else if ( type == "LoadSpawn" ) { l_FX = SpawnFX( fx , obj.origin + fix ); TriggerFX( l_FX ); l_FX thread DeleteAfterTime( 5 ); }
            }
        }
        // EN : If the specified object does not exist
        // JA : 指定されたオブジェクトが存在しない場合
        else
        {
            // EN : If basic coordinates are specified, Generate effect at specified coordinates
            // JA : 基本座標が指定されている場合、指定された座標にエフェクトを生成する
            if ( IsDefined( base ) )
            {
                if      ( type == "GetPlay" )   { PlayFX( scripts\engine\utility::GetFX( fx ) , base + fix ); }
                else if ( type == "LoadPlay" )  { PlayFX( fx , base + fix ); }
                
                else if ( type == "GetSpawn" )  { l_FX = SpawnFX( scripts\engine\utility::GetFX( fx ) , base + fix ); TriggerFX( l_FX ); l_FX thread DeleteAfterTime( 5 ); }
                else if ( type == "LoadSpawn" ) { l_FX = SpawnFX( fx , base + fix ); TriggerFX( l_FX ); l_FX thread DeleteAfterTime( 5 ); }
            }

            // EN : In the case of loop processing, the loop is interrupted because there is no means to terminate it.
            // JA : ループ処理の場合、終了するための手段を実装していないため、ループを中断する
            if ( IsDefined( loop ) ) { break; }
        }

        // EN : Break the loop if it does not loop infinitely
        // JA : 無限ループしない場合、ループを中断する
        if ( !IsDefined( loop ) ) { break; }
        
        wait time;
    }
}



//++++++++++++++++++++++++++++++
// EN : Obtain a trace in the front direction
// JA : 正面方向へのトレースを取得する
//++++++++++++++++++++++++++++++
GetPlayerForwardTrace( useTrace , useEye , traceLength , locationFix , up )
{
    // EN: Get eye location
    // JA: 目の座標を取得
    l_EyeLocation = self GetEye( );
    // EN: Get front direction
    // JA: 正面方向を取得
    l_ForwardAngle = AnglesToForward( self GetPlayerAngles( ) );
    
    // EN: get upward direction
    // JA: 上方向を取得
    l_UpAngle = undefined;
    if ( IsDefined( up ) ) { l_UpAngle = AnglesToUp( self GetPlayerAngles( ) ); }
    
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

        l_UpScale = undefined;
        if ( IsDefined( up ) ) { l_UpScale = VectorScale( l_UpAngle , up ); }
        if ( IsDefined( up ) ) { l_EndLocation += l_UpScale; }
        
        // EN: Adjust coordinates
        // JA: 座標の調整を行う
        l_EndLocation = l_EndLocation + VectorScale( l_ForwardAngle , traceLength ) + locationFix;
        // EN: Get coordinate results
        // JA: 座標結果を取得する
        return l_EndLocation;
    }
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
        self.optStat[optName1].effectData = effectData;
    }

    // EN: Make it a variable so that you can adjust the distance of the coordinates to get when firing a gun
    // JA: 銃発射時の取得先の座標の距離を調整できるように変数化する
    self.optStat[optName1].modData["TraceLength"] = 100000;

    // EN: infinite loop
    // JA: 無限ループ
    while ( true )
    {
        // EN: wait until the bullet is fired
        // JA: 銃弾を発射するまで待機する
        self WaitTill( "weapon_fired" );

        // EN: If the specified variable does not exist, end the loop processing
        // JA: 指定の変数が存在しない場合は、ループ処理を終了する
        if ( !IsDefined( self.optStat[optName1] ) ) { break; }
        if ( IsDefined( optName2 ) )
        {
            if ( !IsDefined( self.optStat[optName1].modData[optName2] ) ) { break; }
        }
        
        // EN: Activates with specific weapons
        // JA: 特定の武器で発動する場合
        if ( IsDefined( specificWeapon ) )
        {
            // EN: If there is no weapon data linked to the specified variable, end the loop process.
            // JA: 指定の変数に連携する武器データが存在しない場合は、ループ処理を終了する
            if ( !IsDefined( self.optStat[optName1].weaponData ) ) { break; }
            
            // EN: If the fired weapon and the weapon linked to the specified variable do not match, restart the process.
            // JA: 発射された武器と、指定の変数に連携する武器が一致しない場合は、処理をやり直す
            if ( GetCompleteWeaponName( self GetCurrentWeapon( ) ) != self.optStat[optName1].weaponData ) { continue; }
        }

        // EN : Obtain trace results for a specified number of distances in the front direction
        // JA : 正面方向へ 指定した数値分先 の距離のトレース結果を取得する
        l_EndLocation = self GetPlayerForwardTrace( true , true , self.optStat[optName1].modData["TraceLength"] );
        
        // EN: If coordinate information has been obtained
        // JA: 座標情報が取得できている場合
        if ( IsDefined( l_EndLocation["position"] ) )
        {
            // EN: If effect data exists
            // JA: エフェクトデータが存在する場合
            if ( IsDefined( self.optStat[optName1].effectData ) )
            {
                // EN: Play the effect at the obtained coordinates
                // JA: 取得した座標にエフェクトを再生する
                PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ self.optStat[optName1].effectData , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ l_EndLocation["position"] , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
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

        // EN: Remember the last player info who caused damage
        // JA: 最後にダメージを与えたプレイヤー情報を記憶する
        self.lastAttacker = playerInfo;
        self.lastDamageType = damageType;
        self.lastWeaponName = weaponName;

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
                PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ damagedFx , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ damagedPoint, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
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
                PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ breakedFx , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ self.origin, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
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
CreateEntityObject( notice , location , length , model , collide , sync , angle , part , hpMin , hpMax , dmgFx , brkFx , dmgSe , brkSe , del , optName )
{
    // EN: If the object data to be created does not exist, generate an error and do not process.
    // JA: 作成するオブジェクトデータが存在無い場合は、エラーを出して処理しない
    if ( !isDefined( model ) )
    {
        return;
    }

    l_ObjectLocation = [];
        // EN : Get the creation coordinates of the object (Place it in front of you, a specified number of minutes away from you)
        // JA : 生成先距離の指定がある場合
    if ( IsDefined( length ) )
    {
        // EN : Get the creation coordinates of the object (Place it in front of you, a specified number of minutes away from you)
        // JA : オブジェクトの生成座標を取得（正面方向に 指定数分 倍先の距離、自分の目の前にする）
        l_ObjectLocation = self GetPlayerForwardTrace( undefined , true , length , ( 0 , 0 , -10 ) );
    }

    // EN: If coordinates are specified, give priority to that information.
    // JA: 座標指定がある場合はその情報を優先する
    if ( isDefined( location ) )
    {
        l_ObjectLocation = location;
    }

    // EN : Create an empty 3D model at the generation position
    // JA : 生成位置に空の3Dモデルを作成する
    l_NewObject = Spawn( "script_model" , l_ObjectLocation );
    // EN : Set model data
    // JA : モデルデータを設定する
    l_NewObject SetModel( model );

    // EN : Set all script parts status for the specified model
    // JA : 指定したモデルに全てのスクリプト用パーツステータスを設定する
    if ( IsDefined( part ) )
    {
        if ( ( model != "military_carepackage_01_juggernaut" ) &&
            ( model != "military_carepackage_01_enemy" ) &&
            ( model != "military_carepackage_01_friendly" ) )
        {
            l_NewObject thread SetAllSetScriptablePartState( );
        }
    }

    // EN: When object collision detection is required
    // JA: オブジェクトの衝突判定が必要な場合
    if ( isDefined( collide ) )
    {
        l_NewObject Solid( );
        // EN: Get the entity data of the generated object
        // JA: 生成するオブジェクトのエンティティデータを取得する
        l_EntityData = GetEnt( model, "targetname" );
        // EN: Set collision detection for generated objects
        // JA: 生成したオブジェクトに衝突判定を設定する
        l_NewObject CloneBrushModelToScriptModel( l_EntityData );
    }
    
    l_ObjectAngle = [];
    // EN: If "X-axis rotation setting" is enabled
    // JA: "X軸回転設定" が 有効 になっている場合
    if ( isDefined( sync ) )
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
    if ( isDefined( angle ) )
    {
        l_ObjectAngle = angle;
    }
    
    // EN: Set the angle of the generated object
    // JA: 生成したオブジェクトの角度を設定する
    l_NewObject.angles = l_ObjectAngle;

    // EN: If maximum health is specified
    // JA: 最大体力が指定されている場合
    if ( isDefined( hpMax ) )
    {
        l_NewObject thread CreateDamagingSystem( hpMin , hpMax , dmgFx , brkFx , dmgSe , brkSe , del , optName , self );
    }
    
    // EN: Add the created object to the managed list
    // JA: 作成されたオブジェクトを管理リストに追加する
    if ( IsDefined( l_NewObject ) )
    {
        if ( !IsDefined( level.lvlStat["DeleteLastObject" + "_ObjectCount"] ) ) { level.lvlStat["DeleteLastObject" + "_ObjectCount"] = []; }
        level.lvlStat["DeleteLastObject" + "_ObjectCount"][level.lvlStat["DeleteLastObject" + "_ObjectCount"].size] = l_NewObject;
    }

    // EN: If you need to display a message
    // JA: メッセージを表示する必要がある場合
    if ( isDefined( notice ) )
    {
        // EN: Display the text "[Notification] Create Object: object name" in the center of the screen
        // JA: 画面中央に「[通知] オブジェクトを作成 : オブジェクト名」という文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , model , undefined );
    }

    return l_NewObject;
}



//++++++++++++++++++++++++++++++
// EN : give specified weapon
// JA : 指定した武器を与える
//++++++++++++++++++++++++++++++
ProvideWeapon( weaponID , inProjectile , onlyGroup , attachmentID , camoID , camoGroup , akimbo , changeHand , notice , onlyGetID )
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
    // EN : Get a random camouflage within a camouflage group
    // JA : 迷彩グループ内でランダムに迷彩を取得する
    else if ( camoID == "Group" )
    {
        l_CamoType = "camo_" + ( RandomIntRange( 0 , 12 ) + 1 ) + camoGroup;
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

            // EN : Extract attachment ID from weapon ID
            // JA : 武器IDからアタッチメントIDを取り出す
            l_AttachmentList = StrTok( weaponID , "+" );

            // EN : Generate weapon data from the specified weapon type and camouflage type.
            // JA : 指定の武器種類、迷彩種類から、武器データを生成する
            l_WeaponBuild = scripts\mp\class::BuildWeapon( scripts\mp\utility\weapon::GetWeaponRootName( weaponID ) , l_AttachmentList , l_CamoID , "none" , -1 , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            // l_WeaponBuild = scripts\mp\class::BuildWeapon( weaponID , undefined , l_CamoID , undefined , undefined , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::IsNightMap( ) );
            // EN : Get random attachment
            // JA : ランダムアタッチメント取得
            l_WeaponBuild = ProvideRandomAttachment( l_WeaponBuild , attachmentID );
            // EN : Get the full weapon name from the generated weapon data
            // JA : 生成された武器データから、完全な武器名を取得する
            l_WeaponName = GetCompleteWeaponName( l_WeaponBuild );

            // EN : If you want to get only the weapon ID
            // JA : 武器IDのみを取得する場合
            if ( IsDefined( onlyGetID ) )
            {
                return l_WeaponName;
            }
            // EN : When giving a player a weapon
            // JA : 武器をプレイヤーに持たせる場合
            else
            {
                // EN : Gives the specified weapon and returns the result whether it was successful or not.
                // JA : 指定した武器を与えて、成功したかどうかの結果を返す
                l_WeaponData = self ConfigureWeapon( l_WeaponName , undefined , changeHand , undefined , akimbo , notice );
                return l_WeaponData;
            }
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

                // EN : If you want to get only the weapon ID
                // JA : 武器IDのみを取得する場合
                if ( IsDefined( onlyGetID ) )
                {
                    return l_WeaponName;
                }
                // EN : When giving a player a weapon
                // JA : 武器をプレイヤーに持たせる場合
                else
                {
                    // EN : Gives the specified weapon and returns the result whether it was successful or not.
                    // JA : 指定した武器を与えて、成功したかどうかの結果を返す
                    l_WeaponData = self ConfigureWeapon( l_WeaponName , undefined , changeHand , true , akimbo , notice );
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

            // EN : When switching weapons
            // JA : 武器を切り替える場合
            if ( IsDefined( changeHand ) )
            {
                // EN : Waits a millisecond to confirm that the weapon is no longer in your possession.
                // JA : 武器が手元から無くなったことを確認するため、ミリ秒待機する
                WaitFrame( );
            }
        }
        // EN : When giving a weapon
        // JA : 武器を与える場合
        else
        {
            // EN : Switch to the same weapon because you already have it
            // JA : 既に同じ武器を持っているため、その武器に切り替える
            self SetSpawnWeapon( weaponData );
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
            self SetSpawnWeapon( weaponData );
            
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
            self scripts\cp_mp\utility\inventory_utility::_SwitchToWeaponImmediate( weaponData );
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
                    self scripts\cp_mp\utility\inventory_utility::_SwitchToWeaponImmediate( self.primaryweapon );
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
// EN : Generates a bullet of the specified type
// JA : 指定した種類の弾丸を生成する
//++++++++++++++++++++++++++++++
CreateMagicBullet( owner , weaponID , pStart , pEnd )
{
    // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate
    // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす
    l_Bullet = scripts\cp_mp\utility\weapon_utility::_MagicBullet( MakeWeapon( weaponID ) , pStart, pEnd , owner );
    l_Bullet thread OnBulletAnimationTrigger( weaponID );
    return l_Bullet;
}



//++++++++++++++++++++++++++++++
// EN : Bullet animation execution process after generation
// JA : 生成後の弾丸のアニメーション実行処理
//++++++++++++++++++++++++++++++
OnBulletAnimationTrigger( weaponID )
{
    switch ( weaponID )
    {
        case "emp_drone_proj_mp":
            // EN : Play effects and sounds
            // JA : エフェクトとサウンドを再生する
            PlayFXOnTag( scripts\engine\utility::GetFX( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ) , self , "tag_origin" );
            PlayFXOnTag( scripts\engine\utility::GetFX( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_contrails.vfx" ) , self , "tag_origin" );
            PlayFXOnTag( scripts\engine\utility::GetFX( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_heat_dist.vfx" ) , self , "tag_origin" );
            PlayFXOnTag( scripts\engine\utility::GetFX( "vfx/iw8_mp/killstreak/vfx_rc_plane_rotor.vfx" ) , self , "j_propeller" );
            self PlayLoopSound( "iw8_rc_plane_engine" );
            // EN : Execute the landing process for various missiles on a sub-thread
            // JA : 各種ミサイルの着弾処理をサブスレッド上で実行する
            self thread OnWaitingTypeMissileImpact( weaponID );
            break;
            
        // EN : Executes "AC130" missile landing process and generates an earthquake
        // JA : "AC130" のミサイルの着弾処理の実行、及び地震を発生させる
        case "ac130_105mm_mp":
            Earthquake( 0.2 , 1 , self.origin , 1000 );
            self thread OnWaitingMissileImpactAC130( weaponID );
            break;
        case "ac130_40mm_mp":
            Earthquake( 0.1 , 0.5 , self.origin , 1000 );
            self thread OnWaitingMissileImpactAC130( weaponID );
            break;
        case "ac130_25mm_mp":
            self thread OnWaitingMissileImpactAC130( weaponID );
            break;
    }
}



//++++++++++++++++++++++++++++++
// EN : Impact processing for various missiles
// JA : 各種ミサイルの着弾処理
//++++++++++++++++++++++++++++++
OnWaitingTypeMissileImpact( weaponID )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    
    // EN : wait until the missile hits
    // JA : ミサイルが着弾するまで待機する
    self WaitTill( "missile_stuck" , var_3 , var_4 , var_5 , var_6 , var_7 , missileVector );

    switch ( weaponID )
    {
        case "emp_drone_proj_mp":
            // EN : Play explosion sound and play explosion effect at impact coordinates
            // JA : 爆発音を再生し、着弾座標に爆発エフェクトを再生する
            self PlaySound( "iw8_rc_plane_engine_exp" );
            PlayFX( scripts\engine\utility::GetFX( "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ) , self.origin , AnglesToForward( self.angles ) );
            // EN : Causes area damage at the impact coordinates
            // JA : 着弾座標に範囲ダメージを発生させる
            self RadiusDamage( self.origin , 80 , 120 , 80 , self.owner , "MOD_EXPLOSIVE" , MakeWeapon( "emp_drone_player_mp" ) );
            // EN : Causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // JA : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            Earthquake( 0.3 , 1 , self.origin , 2000 );
            // EN : End the specified loop sound
            // JA : 指定したループサウンドを終了する
            self StopLoopSound( "iw8_rc_plane_engine" );
            break;
    }
    
    // EN : Delete the missile that landed
    // JA : 着弾したミサイルを削除する
    self Delete( );
}



//++++++++++++++++++++++++++++++
// EN : General-purpose animation processing executed when a special missile is launched.
// JA : 特殊なミサイルが発射された時に実行する汎用アニメーション処理
//++++++++++++++++++++++++++++++
OnWaitingFiredMissile( optName )
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

    // EN: Loop until specified variable no longer exists
    // JA: 指定の変数が存在しなくなるまでループ
    while ( IsDefined( self.optStat[optName] ) )
    {
        // EN: wait for missile to launch
        // JA: ミサイルが発射されるのを待機する
        self WaitTill( "missile_fire" , missileData );

        l_WeaponID = "none";

        // EN: If the function performing this process is not "ModdedBullets"
        // JA: この処理を実行中の機能が "ModdedBullets" ではない場合
        if ( optName != "ModdedBullets" )
        {
            // EN: Get information about the weapon you currently have
            // JA: 今持っている武器の情報を取得
            l_CurrentWeapon = self GetCurrentWeapon( );
            l_WeaponID = l_CurrentWeapon.basename;
        }
        // EN: If the function performing this process is "ModdedBullets"
        // JA: この処理を実行中の機能が "ModdedBullets" の場合
        else
        {
            // EN: Get the currently set ammunition type
            // JA: 設定中の弾薬種類を取得
            if ( IsDefined( self.optStat[optName].modData["BulletType"] ) )
            {
                l_WeaponID = self.optStat[optName].modData["BulletType"];
            }
        }

        // EN: Change processing depending on weapon type
        // JA: 武器種類によって処理を変更する
        switch ( l_WeaponID )
        {
            // EN : Executes "AC130" missile landing process and generates an earthquake
            // JA : "AC130" のミサイルの着弾処理の実行、及び地震を発生させる
            case "ac130_105mm_mp":
                Earthquake( 0.2 , 1 , self.origin , 1000 );
                missileData thread OnWaitingMissileImpactAC130( l_WeaponID );
                break;
            case "ac130_40mm_mp":
                Earthquake( 0.1 , 0.5 , self.origin , 1000 );
                missileData thread OnWaitingMissileImpactAC130( l_WeaponID );
                break;
            case "ac130_25mm_mp":
                missileData thread OnWaitingMissileImpactAC130( l_WeaponID );
                break;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : "AC130" missile impact processing
// JA : "AC130" のミサイルの着弾処理
//++++++++++++++++++++++++++++++
OnWaitingMissileImpactAC130( weaponID )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    
    // EN : wait until the missile hits
    // JA : ミサイルが着弾するまで待機する
    self WaitTill( "missile_stuck" , var_3 , var_4 , var_5 , var_6 , var_7 , missileVector );

    // EN : Generate a shader for the danger zone
    // JA : 危険地帯のシェーダーを生成する
    l_Time = 0.5;
    l_Range = 100;
    switch ( weaponID )
    {
        case "ac130_105mm_mp": l_Time = 1.5; l_Range = 500; break;
        case "ac130_40mm_mp": l_Time = 1; l_Range = 300; break;
    }
    if ( scripts\cp_mp\utility\script_utility::IsSharedFuncDefined( "spawn" , "addSpawnDangerZone" ) )
        [[ scripts\cp_mp\utility\script_utility::GetSharedFunc( "spawn" , "addSpawnDangerZone" ) ]]( self.origin , l_Range , l_Range , self.team , l_Time , self , 1 );

    // EN : Create an explosion effect model
    // JA : 爆発エフェクトモデルを作成する
    l_ExpEffect = self CreateEntityObject(
        /* notice */        undefined ,
        /* spawnLocation */ self.origin ,
        /* spawnLength */   undefined ,
        /* objectName */    "ks_ac130_target_mp" ,
        /* objectCollide */ undefined ,
        /* angleSync */     undefined ,
        /* objectAngle */   VectorToAngles( missileVector )
        );
        
    // EN : Link the explosion effect model to the missile that landed
    // JA : 爆発エフェクトモデルを着弾したミサイルに紐づける
    l_ExpEffect LinkTo( self , "tag_origin" , ( 0 , 0 , 0 ) , ( 0 , 0 , 0 ) );
    l_ExpEffect SetOtherEnt( self );

    // EN : Setting effect playback status on explosion effect model
    // JA : 爆発エフェクトモデルにエフェクト再生ステータスを設定する
    l_ExpEffect SetScriptablePartState( self.weapon_name , "on" , 0 );

    // EN : Destroy or delete the missile that landed
    // JA : 着弾したミサイルを爆破か削除する
    if ( IsDefined( self ) )    { self Detonate(); }
    else                        { self Delete( ); }

    // EN : Generates an airstrike earthquake at the blast location
    // JA : 爆破地点に空爆用地震を発生させる
    l_ExpScale = GetAC130MissileExplScale( self.weapon_name );
    l_ExpRadius = GetAC130MissileExplRadius( self.weapon_name );
    if ( scripts\cp_mp\utility\script_utility::IsSharedFuncDefined( "shellshock" , "artillery_earthQuake" ) )
        [[ scripts\cp_mp\utility\script_utility::GetSharedFunc( "shellshock" , "artillery_earthQuake" ) ]]( l_ExpEffect.origin , l_ExpScale , 0.75 , l_ExpRadius );

    // EN : Delete the missile that landed
    // JA : 着弾したミサイルを削除する
    scripts\cp_mp\hostmigration::HostMigration_WaitLongDurationWithPause( 5 );
    l_ExpEffect Delete( );
    self Delete( );
}



//++++++++++++++++++++++++++++++
// EN : Obtained the explosion scale of the "AC130" missile.
// JA : "AC130" のミサイルの爆発スケールを取得
//++++++++++++++++++++++++++++++
GetAC130MissileExplScale( weaponName )
{
    l_ExpScale = 1.0; 
    switch ( weaponName )
    {
        case "ac130_105mm_mp": l_ExpScale = 0.75; break;
        case "ac130_40mm_mp": l_ExpScale = 0.5; break;
        case "ac130_25mm_mp": l_ExpScale = 0.15; break;
    } 
    return l_ExpScale;
}



//++++++++++++++++++++++++++++++
// EN : Get the missile explosion range of "AC130"
// JA : "AC130" のミサイルの爆発範囲を取得
//++++++++++++++++++++++++++++++
GetAC130MissileExplRadius( weaponName )
{
    l_ExpRadius = 1.0; 
    switch ( weaponName )
    {
        case "ac130_105mm_mp": l_ExpRadius = 2000; break;
        case "ac130_40mm_mp": l_ExpRadius = 1300; break;
        case "ac130_25mm_mp": l_ExpRadius = 700; break;
    }
    return l_ExpRadius;
}



//++++++++++++++++++++++++++++++
// EN : For effect processing purposes, make the specified bullet fly in a transparent state from the specified starting point to the specified ending point.
// JA : エフェクト処理用途で、指定した弾を、指定した開始地点から終了地点まで、透明状態で飛ばす
//++++++++++++++++++++++++++++++
CreateEffectableBullet( owner , length , up , weaponID , end )
{
    // EN : Get the ammunition generation coordinates (coordinates a specified distance ahead in the direction of the player's viewpoint)
    // JA : 弾薬の生成座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
    l_Start = owner GetPlayerForwardTrace( /* trace */ undefined , /* eye */ true , /* length */ length , /* fix */ undefined , /* up */ up );
    if ( !IsDefined( end ) )
    {
        // EN : Get the coordinates of the bullet's impact (coordinates a specified distance ahead in the direction of the player's viewpoint)
        // JA : 弾薬の着弾座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
        end = owner GetPlayerForwardTrace( /* trace */ undefined , /* eye */ true , /* length */ 1000000 , /* fix */ undefined , /* up */ undefined );
    }
    // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
    // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
    l_Bullet = CreateMagicBullet( owner , weaponID , l_Start , end );
    // EN: If bullets can be generated
    // JA: 弾が生成出来ている場合
    if ( IsDefined( l_Bullet ) )
    {
        // EN : keep ammunition out of sight
        // JA : 弾薬は見えないようにする
        l_Bullet Hide( );
    }
    return l_Bullet;
}



//++++++++++++++++++++++++++++++
// EN : A general-purpose process that links a specified object to the generated projectile and unlinks it upon impact.
// JA : 生成された発射弾に指定のオブジェクトをリンクし、着弾時にリンク解除する汎用処理
//++++++++++++++++++++++++++++++
LinkObjectToBullet( object , time , del )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );

    // EN: Link object to ammunition
    // JA: オブジェクトを弾薬にリンクする
    object LinkTo( self );

    // EN : If time is specified, wait for the time
    // JA : 時間が指定されている場合、時間分待機する
    if ( IsDefined( time ) )    { wait time; }
    // EN : Wait for the ammunition to land and disappear
    // JA : 弾薬が着弾して消滅するのを待機する
    else                        { self WaitTill( "death" ); }

    // EN: Unlink a object
    // JA: オブジェクトのリンクを解除する
    if ( IsDefined( object ) ) { object Unlink( ); }
    
    // EN : If time is specified, wait for the time
    // JA : 時間が指定されている場合、時間分待機する
    if ( IsDefined( time ) )    { wait time; }
    
    // EN : If deletion is specified, delete the object
    // JA : 削除指定されている場合、オブジェクトを削除する
    if ( IsDefined( del ) )     { object Delete( ); }
}



//++++++++++++++++++++++++++++++
// EN : Delete the specified object after the specified number of seconds
// JA : 指定されたオブジェクトを、指定された秒数経過後に削除する
//++++++++++++++++++++++++++++++
DeleteAfterTime( time )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );
    // EN : This function ends processing if "you die"
    // JA : この関数は「自分が死んだ」場合に処理を終了する
    self Endon( "death" );
    
    scripts\cp_mp\hostmigration::HostMigration_WaitLongDurationWithPause( time );
    self Delete( );
}



//++++++++++++++++++++++++++++++
// EN : Build model list
// JA : モデルリストを構築する
//++++++++++++++++++++++++++++++
ModelListConstruction( onlyMap )
{
    if ( !IsDefined( onlyMap ) )
    {
        l_PackageArray1 =
        [
            "military_crate_large_stackable_01_dummy" ,
            "military_crate_large_stackable_01_jugg" ,
            "military_crate_large_stackable_01" ,
            "military_crate_field_upgrade_01" ,
            "com_plasticcase_beige_big_iw6"
        ];
        if ( scripts\mp\utility\game::GetGameType( ) != "br" )
        {
            l_PackageArray2 =
            [
                "military_carepackage_01_juggernaut" ,
                "military_carepackage_01_enemy" ,
                "military_carepackage_01_friendly"
            ];
            l_PackageArray1 = scripts\engine\utility::Array_Combine( l_PackageArray1 , l_PackageArray2 );
        }
        level.lvlStat["ModelListPackages"] = l_PackageArray1;

        
        l_VehiclesArray1 =
        [
            "veh8_mil_air_alfa10" ,
            "veh8_mil_air_alfa10_east" ,
            "veh8_mil_air_mquebec8_small" ,
            "veh8_mil_air_mquebec8_small_east" ,
            "veh8_mil_air_lbravo" ,
            "veh8_mil_air_lbravo_mp" ,
            "veh8_mil_air_lbravo_east_mp" ,
            "veh8_mil_air_lbravo_personnel_mp_flyable" ,
            "veh8_mil_air_palfa_east" ,
            "veh8_ind_air_bombing_drone" ,
            "veh8_mil_air_mquebec9_small" ,
            "veh8_mil_air_mquebec9_small_east" ,
            "veh8_mil_air_auniform" ,
            "veh8_mil_air_auniform_east" ,
            "veh8_mil_air_acharlie130" ,
            "veh8_mil_air_acharlie130_ks" ,
            "veh8_mil_air_acharlie130_ks_east" ,
            "veh8_mil_air_acharlie130_small" ,
            "veh8_mil_lnd_atango_physics_mp" ,
            "veh8_mil_lnd_whotel"
        ];
        if ( scripts\mp\utility\game::GetGameType( ) == "br" )
        {
            l_VehiclesArray2 =
            [
                "veh8_mil_lnd_stango_static" ,
                "veh8_mil_air_mindia8_plunder_x" ,
                "veh8_mil_lnd_mkilo23_skud_static2" ,
                "veh8_mil_lnd_vindia_a1_west_physics_mp" ,
                "veh8_mil_lnd_vindia_a1_physics_mp" ,
                "veh8_mil_lnd_mkilo23_physics_mp" ,
                "veh8_civ_lnd_skilo_rus_police_physics_mp" ,
                "veh8_civ_lnd_zuniform_physics" ,
                "veh8_civ_lnd_decho_vm_dirty_blue_physics_mp" ,
                "veh8_mil_lnd_umike_infil_physics_mp" ,
                "veh8_mil_lnd_coscar_east" ,
                "veh8_mil_lnd_coscar_west" ,
                "veh8_mil_lnd_asierra_physics_mp" ,
                "veh8_civ_lnd_techo_physics_mp" ,
                "veh8_mil_lnd_tromeo_physics_mp" ,
                "veh8_civ_lnd_hindia_physics_mp" ,
                "x1_u2_plane"
            ];
            l_VehiclesArray1 = scripts\engine\utility::Array_Combine( l_VehiclesArray1 , l_VehiclesArray2 );
        }
        else
        {
            l_VehiclesArray2 =
            [
                "veh8_mil_air_palfa" ,
                "veh8_mil_air_ahotel64_ks_mp" ,
                "veh8_mil_air_ahotel64_ks_east_mp" ,
                "veh8_mil_air_suniform25" ,
                "veh8_mil_air_suniform25_west" ,
                "veh8_mil_air_halfa_mp" ,
                "veh8_mil_air_halfa_east_mp"
            ];
            l_VehiclesArray1 = scripts\engine\utility::Array_Combine( l_VehiclesArray1 , l_VehiclesArray2 );
        }
        level.lvlStat["ModelListVehicles"] = l_VehiclesArray1;


        l_FlagArray1 =
        [
            "prop_flag_neutral" ,
            "military_dom_flag_neutral" ,
            "military_dom_flag_west" ,
            "military_dom_flag_east" ,
            "ctf_game_flag_east"
        ];
        level.lvlStat["ModelListFlags"] = l_FlagArray1;


        l_DogTagArray1 =
        [
            "military_dogtags_iw8" ,
            "military_dogtags_iw8_blue" ,
            "military_dogtags_iw8_green" ,
            "military_dogtags_iw8_purple" ,
            "military_dogtags_iw8_orange" ,
            "military_dogtags_iw8_gold"
        ];
        level.lvlStat["ModelListDogTags"] = l_DogTagArray1;

        
        l_PropsArray1 =
        [
            "wmd_vm_missile_cruise_warhead" ,
            "misc_wm_ascender" ,
            "offhand_wm_deployable_cover" ,
            "misc_wm_flarestick" ,
            "veh8_mil_air_acharlie130_ks_carrier" ,
            "viewhands_base_iw8" ,
            "offhand_wm_c4" ,
            "offhand_wm_emp" ,
            "veh8_mil_air_malfa_big" ,
            "mw_test_soldier" ,
            "mw_dist_soldier"
        ];
        if ( scripts\mp\utility\game::GetGameType( ) == "br" )
        {
            l_PropsArray2 =
            [
                "box_wooden_grenade_01" ,
                "lm_domination_point_01" ,
                "military_skyhook_backpack" ,
                "scr_smoke_grenade" ,
                "military_skyhook_far"
            ];
            l_PropsArray1 = scripts\engine\utility::Array_Combine( l_PropsArray1 , l_PropsArray2 );
        }
        else
        {
            l_PropsArray2 =
            [
                "offhand_wm_grenade_smoke" ,
                "veh8_mil_lnd_carepackage_parachute" ,
                "pilot_viewmodel_arms" ,
                "wmd_vm_missile_cruise" ,
                "ks_ac130_mp" ,
                "cop_marker_scriptable" ,
                "weapon_mg_bravo50_balcony" ,
                "dz_flare_scriptable" ,
                "veh8_mil_air_cuniform" ,
                "veh8_mil_air_cuniform_east"
            ];
            l_PropsArray1 = scripts\engine\utility::Array_Combine( l_PropsArray1 , l_PropsArray2 );
        }
        level.lvlStat["ModelListProps"] = l_PropsArray1;
    }
    else
    {
        l_DefEntities = GetEntArray( "script_model" , "classname" );
        l_BrushEntities = GetEntArray( "script_brushmodel" , "classname" );
        level.lvlStat["ModelListMaps"] = [];

        if ( IsDefined( l_DefEntities ) && ( 0 < l_DefEntities.size ) )
        {
            for ( i = 0; i < l_DefEntities.size; i++ )
            {
                if ( scripts\engine\utility::Array_Contains( level.lvlStat["ModelListMaps"] , l_DefEntities[i].model ) ) { continue; }
                level.lvlStat["ModelListMaps"] = scripts\engine\utility::Array_Add( level.lvlStat["ModelListMaps"] , l_DefEntities[i].model );
            }
        }
        if ( IsDefined( l_BrushEntities ) && ( 0 < l_BrushEntities.size ) )
        {
            for ( i = 0; i < l_BrushEntities.size; i++ )
            {
                if ( scripts\engine\utility::Array_Contains( level.lvlStat["ModelListMaps"] , l_BrushEntities[i].model ) ) { continue; }
                level.lvlStat["ModelListMaps"] = scripts\engine\utility::Array_Add( level.lvlStat["ModelListMaps"] , l_BrushEntities[i].model );
            }
        }
    }



    /*
    "ks_crate_marker_mp"   ,
    "ks_airstrike_target_mp"   ,
    "ks_airstrike_mp"   ,
    "ks_fuelstrike_mp"   ,
    "ks_cruise_predator_mp"   ,
    "ks_ac130_target_mp"   ,
    "ks_radar_drone_escort_mp"   ,
    "ks_radar_drone_recon_mp"   ,
    "ks_toma_strike_mp"   ,
    "ks_toma_strike_marker_mp"   ,
    "ks_toma_strike_missile_mp"   ,
    "ks_toma_strike_cluster_mp"   ,
    "ks_white_phosphorus_mp"   ,
    "mortar_target"   ,
    "equipment_mortar_shell_improvised_01_mp"   ,
    "shardball_wm"   ,
    "military_skyhook_far_mp"   ,
    "equip_snapshot_marker_mp"   ,
    "trophy_system_mp_explode"   ,
    "dom_flag_scriptable"   ,
    "fullbody_usmc_ar"   ,
    "loot_helmet"   ,
    "veh8_civ_lnd_palfa_ambulance_ukraine"   ,
    "medical_defibrillator_wall_01"   ,
    "fullbody_usmc_ar_scriptmover"   ,
    "electrical_elevator_access_keypad_01"   ,
    "prop_suitcase_bomb"   ,
    "mp_parkour_hardpoint_floor_01"   ,
    "lethal_smoke_grenade_wm"   ,
    "grind_flag_scriptable"   ,
    "veh8_mil_lnd_bromeo_allies_mp_to"   ,
    "care_package_iw7_dummy"   ,
    "ks_death_switch_mp"   ,
    "veh8_mil_lnd_whotel_crate"   ,
    "ks_pac_sentry_mp"   ,
    "ks_minefield_mp"   ,
    "weapon_life_pack"   ,
    "mp_fullbody_heavy"   ,
    "mp_body_infected_a"   ,
    "super_trophy_mp"   ,
    "shock_sentry_gun_wm"   ,
    "vehicle_uav_static_mp"   ,
    "prop_ballistic_vest_iw6"   ,
    "vehicle_aas_72x_killstreak"   ,
    "mp_remote_turret"   ,
    "p7_bottle_plastic_16oz_water"   ,
    "cp_disco_folding_chair_lod0"   ,
    "dogtags_iw7_foe"   ,
    "mw_scale_soldier"
    */
}



//++++++++++++++++++++++++++++++
// EN : Get the corresponding weapon ID in this game from the specified weapon name.
// JA : 指定した武器名からこのゲーム中に相当する武器IDを取得する
//++++++++++++++++++++++++++++++
GetBulletID( name )
{
    switch ( name )
    {
        case "RPG7":            return "iw8_la_rpapa7_mp";
        case "Pila":            return "iw8_la_gromeo_mp";
        case "Nuke":            return "nuke_mp";
        case "TomaMissile":     return "toma_proj_mp";
        case "FlashGrenade":    return "flash_grenade_mp";
        case "ApacheMissile":   return "apache_proj_mp";
        case "AC130_105mm":     return "ac130_105mm_mp";
        case "AC130_40mm":      return "ac130_40mm_mp";
        case "AC130_25mm":      return "ac130_25mm_mp";
    }
}



//++++++++++++++++++++++++++++++
// EN : Get ammo list
// JA : 弾薬リストを取得する
//++++++++++++++++++++++++++++++
GetBulletList( type )
{
    l_MainArray = [];

    switch ( type )
    {
        case "AllBullet":
            l_Array =
            [
                "iw8_la_gromeo_mp" ,       // Missile | ミサイル
                "iw8_la_juliet_mp" ,           
                "iw8_la_kgolf_mp" ,
                "iw8_la_mike32_mp" ,
                "iw8_la_rpapa7_mp" ,
                "apache_proj_mp" ,         // Killstreak | キルストリーク
                "hover_jet_proj_mp" ,
                "emp_drone_proj_mp" ,
                "ac130_25mm_mp" ,
                "ac130_40mm_mp" ,
                "ac130_105mm_mp" ,
                "iw8_sh_charlie725_mp" ,   // Shotgun | ショットガン
                "iw8_sh_dpapa12_mp" ,
                "iw8_sh_mike26_mp" ,
                "iw8_sh_oscar12_mp" ,
                "iw8_sh_romeo870_mp" ,
                "iw8_sn_delta_mp" ,        // Snipers | スナイパー
                "iw8_sn_alpha50_mp" ,
                "iw8_sn_hdromeo_mp" ,
                "iw8_minigunksjugg_mp"
            ];
            l_MainArray = l_Array;
            break;
            
        case "AllMissile":
            l_Array =
            [
                "iw8_la_gromeo_mp" ,
                "iw8_la_juliet_mp" ,
                "iw8_la_kgolf_mp" ,
                "iw8_la_mike32_mp" ,
                "iw8_la_rpapa7_mp" ,
                "apache_proj_mp" ,
                "hover_jet_proj_mp" ,
                "emp_drone_proj_mp" ,
                "ac130_25mm_mp" ,
                "ac130_40mm_mp" ,
                "ac130_105mm_mp"
            ];
            l_MainArray = l_Array;
            break;
            
        case "StandardMissile":
            l_Array =
            [
                "iw8_la_gromeo_mp" ,
                "iw8_la_juliet_mp" ,
                "iw8_la_kgolf_mp" ,
                "iw8_la_mike32_mp" ,
                "iw8_la_rpapa7_mp"
            ];
            l_MainArray = l_Array;
            break;
            
        case "SpecialMissile":
            l_Array =
            [
                "apache_proj_mp" ,
                "hover_jet_proj_mp" ,
                "emp_drone_proj_mp" ,
                "ac130_25mm_mp" ,
                "ac130_40mm_mp" ,
                "ac130_105mm_mp"
            ];
            l_MainArray = l_Array;
            break;
            
        case "AllGrenade":
            l_Array =
            [
                "semtex_bolt_mp" ,
                "semtex_bolt_splash_mp" ,
                "thermite_bolt_mp" ,
                "thermite_bolt_radius_mp" ,
                "dragonsbreath_mp" ,
                "deploy_airdrop_mp_sticky" ,
                "deploy_airdrop_mp" ,
                "ks_remote_device_mp" ,
                "ks_remote_gunship_mp" ,
                "iw8_green_beam_mp" ,
                "toma_proj_mp" ,
                "nuke_mp" ,
                "little_bird_mp" ,
                "at_mine_mp" ,
                "c4_empty_mp" ,
                "claymore_mp" ,
                "thermite_mp" ,
                "emp_bomb_mp" ,
                "concussion_grenade_mp" ,
                "flash_grenade_mp" ,
                "snapshot_grenade_mp" ,
                "semtex_mp" ,
                "smoke_grenade_mp"
            ];
            l_MainArray = l_Array;
            break;
            
        case "StandardGrenade":
            l_Array =
            [
                "toma_proj_mp" ,
                "concussion_grenade_mp" ,
                "flash_grenade_mp" ,
                "snapshot_grenade_mp" ,
                "semtex_mp" ,
                "smoke_grenade_mp"
            ];
            l_MainArray = l_Array;
            break;
    }

    return l_MainArray;
}



//++++++++++++++++++++++++++++++
// EN : Get standard model list
// JA : 標準モデルリストを取得する
//++++++++++++++++++++++++++++++
GetStandardModelList( )
{
    l_Array = [];
    
    if ( IsDefined( level.lvlStat["ModelListPackages"] ) && ( 0 < level.lvlStat["ModelListPackages"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListPackages"] );
    }
    if ( IsDefined( level.lvlStat["ModelListFlags"] ) && ( 0 < level.lvlStat["ModelListFlags"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListFlags"] );
    }
    if ( IsDefined( level.lvlStat["ModelListDogTags"] ) && ( 0 < level.lvlStat["ModelListDogTags"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListDogTags"] );
    }
    if ( IsDefined( level.lvlStat["ModelListVehicles"] ) && ( 0 < level.lvlStat["ModelListVehicles"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListVehicles"] );
    }
    if ( IsDefined( level.lvlStat["ModelListProps"] ) && ( 0 < level.lvlStat["ModelListProps"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListProps"] );
    }
    if ( IsDefined( level.lvlStat["ModelListMaps"] ) && ( 0 < level.lvlStat["ModelListMaps"].size ) )
    {
        l_Array = scripts\engine\utility::Array_Combine( l_Array , level.lvlStat["ModelListMaps"] );
    }

    return l_Array;
}



//++++++++++++++++++++++++++++++
// EN : Get standard model list
// JA : 標準乗り物モデルリストを取得する
//++++++++++++++++++++++++++++++
GetStandardVehicleModelList( )
{
    return level.lvlStat["ModelListVehicles"];
}



//++++++++++++++++++++++++++++++
// EN : Set all script parts status for the specified model
// JA : 指定したモデルに全てのスクリプト用パーツステータスを設定する
//++++++++++++++++++++++++++++++
SetAllSetScriptablePartState( )
{
    self SetScriptablePartState( "contrails" , "on" , 0 );
    self SetScriptablePartState( "wing_trails", "on" );
    self SetScriptablePartState( "trail", "active", 1 );
    self SetScriptablePartState( "trail", "neutral", 1 );
    self SetScriptablePartState( "smoke", "on", 0 );

    self SetScriptablePartState( "lights", "active", 1 );
    self SetScriptablePartState( "lights", "on" );
    self SetScriptablePartState( "lights2", "on", 0 );
    self SetScriptablePartState( "blinking_lights", "on", 0 );
    self SetScriptablePartState( "interior_light", "on", 0 );
    self SetScriptablePartState( "tail_light", "red" );
    self SetScriptablePartState( "cockpit_light", "on" );
    self SetScriptablePartState( "infil_lights", "on" );
    self SetScriptablePartState( "light", "light_on" );
    self SetScriptablePartState( "pulse", "on", 0 );
    self SetScriptablePartState( "glint", "on", 0 );

    self SetScriptablePartState( "main_thruster", "on", 0 );
    self SetScriptablePartState( "sub_thruster", "on", 0 );
    self SetScriptablePartState( "warhead_thruster", "on", 0 );
    self SetScriptablePartState( "thrusters", "active", 0 );
    self SetScriptablePartState( "engine", "on", 0 );
    self SetScriptablePartState( "burning", "flareUp", 0 );
    self SetScriptablePartState( "exhaustFX", "active" );

    self SetScriptablePartState( "bodyfx" , "on" , 0 );
    self SetScriptablePartState( "flyby" , "on" , 0 );
    self SetScriptablePartState( "anims", "capture", 0 );
    self SetScriptablePartState( "capture", "start", 0 );
    self SetScriptablePartState( "rotors", "on", 0 );
    self SetScriptablePartState( "looping_wave", "on", 0 );
    self SetScriptablePartState( "launch" , "active" , 0 );
    self SetScriptablePartState( "launch" , "on" , 0 );
    self SetScriptablePartState( "effects" , "active", 0 );
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
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ "nuke_atomize_body"           , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ "nuke_rolling_death"          , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ "vfx_nuke_zone_5000_static_s" , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );

    // EN : Change the nuclear explosion effect model caused by game mode
    // JA : ゲームモードによって発生させる核爆発エフェクトモデルを変更する
    l_ModelID = "";
    if ( scripts\mp\utility\game::GetGameType( ) != "br" )  { l_ModelID = "ks_nuke_mp"; }
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
        /* part */          undefined ,
        /* healthMin */     undefined ,
        /* healthMax */     undefined ,
        /* damagedFx */     undefined ,
        /* breakedFx */     undefined ,
        /* damagedSe */     undefined ,
        /* breakedSe */     undefined ,
        /* endDelete */     undefined ,
        /* optName */       undefined
        );
        
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
// EN : General function to change the amount of movement of the suboption "TraceLength" of the specified function
// JA : 本物のケアパッケージを作成するための汎用関数
//++++++++++++++++++++++++++++++
CreateRealCarepackage( owner , location , angle )
{
    // EN : Obtain a random killstreak to be registered in the care package contents.
    // JA : ケアパッケージの中身に登録するキルストリークをランダムで取得する
    l_Random = scripts\cp_mp\killstreaks\airdrop::GetRandomKillstreak( );
    l_StreakInfo = scripts\cp_mp\killstreaks\airdrop::GetKillstreakCrateDataByStreakName( l_Random , 0 );
    // EN : Create a care package
    // JA : ケアパッケージを作成する
    return scripts\cp_mp\killstreaks\airdrop::CreateCrate( owner , owner.team , "killstreak" , location , angle , undefined , undefined , [] , l_StreakInfo );
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
// EN : Revoke mod menu privileges (Set Unverified)
// JA : モッドメニューの権限を剥奪する（未承認に設定）
//++++++++++++++++++++++++++++++
RemoveAuthUnverified( )
{
    self thread ChangeAuth( self.modSystem.menuPlayer , level.MODDEF.LV_UNVERIFIED );
}



//++++++++++++++++++++++++++++++
// EN : Set mod menu permissions to "Co-host"
// JA : モッドメニューの権限を「副ホスト」に設定する
//++++++++++++++++++++++++++++++
GiveAuthCohost( )
{
    self thread ChangeAuth( self.modSystem.menuPlayer , level.MODDEF.LV_COHOST );
}



//++++++++++++++++++++++++++++++
// EN : Changes the mod menu permissions of the specified player to the specified permissions.
// JA : 指定したプレイヤーのモッドメニューの権限を、指定した権限に変更する
//++++++++++++++++++++++++++++++
ChangeAuth( targetUser , authLevel )
{
    // EN: If the player to be operated is the host, issue a warning that the operation cannot be performed and end the process.
    // JA: 操作する対象のプレイヤーがホストの場合は、操作できない警告をして処理を終了する
    if ( level.players[targetUser] IsHost( ) )
    {
        self ShowCenterMessage( self.curLang , "Notice" , "CannotHost" , undefined , undefined , undefined );
        return;
    }

    // EN: Get translations of assigned permissions
    // JA: 割り当てられた権限の翻訳を取得する
    l_TextLevel = GetMultilingualText( self.curLang , GetVerifiedText( authLevel ) );
    
    // EN: Display the text "Set [Notification] permission: [Permission name] Player name" for yourself in the center of the screen.
    // JA: 自分に対して "[通知] 権限を設定 : [権限名]プレイヤー名" という文章を、画面中央に表示する
    self ShowCenterMessage( self.curLang , "Notice" , "SetMenuStatus" , undefined , l_TextLevel + level.players[targetUser].name , undefined );

    // EN: Assign specified permissions to the selected player
    // JA: 選択中のプレイヤーに対して、指定した権限を割り当てる
    level.players[targetUser] thread SetAuth( authLevel );
}



//++++++++++++++++++++++++++++++
// EN : Assign specified permissions
// JA : 指定した権限を割り当てる
//++++++++++++++++++++++++++++++
SetAuth( verificationLevel )
{
    // EN: If the newly specified permissions are lower than the currently set permissions
    // JA: 新しく指定された権限が、今設定されている権限よりも低い場合
    if ( verificationLevel < self.verificationStatusIndex )
    {
        // EN: commit suicide
        // JA: 自分を自殺させる
        self Suicide( );

        // EN: Wait 0.31 seconds for mod menu to close
        // JA: モッドメニューが閉じられるまで 0.31秒間 待機する
        wait 0.31;
    }
    
    // EN: Change to specified permissions
    // JA: 指定された権限に変更する
    self.verificationStatusIndex = verificationLevel;
    
    // EN: If the specified authority is "Unverified" or higher
    // JA: 指定された権限が「未承認」以上の場合
    if ( level.MODDEF.LV_UNVERIFIED < verificationLevel )
    {
        // EN: If variables related to the mod menu are not created
        // JA: モッドメニューに関する変数が作られていない場合
        if ( !IsDefined( self.modSystem.menuActive ) )
        {
            // EN: Create a variable that only you will use while processing the mod
            // JA: 自分のみがModの処理中に使う変数を作成する
            self InitializeSelfData( );
            
            // EN: Start button monitoring process
            // JA: ボタンモニタリング処理を開始する
            self thread OnButtonMonitoring( );

            // EN : Display a "Welcome" message
            // JA : 「ようこそ」メッセージを表示する
            self ShowWelocomeMessage( );
        }
        // EN: If a variable related to the mod menu is created
        // JA: モッドメニューに関する変数が作られている場合
        else
        {
            // EN: If the mod menu is currently open
            // JA: 今現在モッドメニューを開いている場合
            if ( self.modSystem.menuActive == true )
            {
                // EN: Close mod menu
                // JA: モッドメニューを閉じる
                self ModMenuClose( );

                // EN: Waits for only 1 frame as it waits for the update process to finish.
                // JA: 更新処理の終了待ちの為 1フレーム のみ待機する
                WaitFrame( );

                // EN: Initialize the selection, hierarchy, and depth of the mod menu
                // JA: モッドメニューの選択箇所、階層、深度を初期化する
                self.modSystem.menuLayerCurrent     = level.MODDEF.VALUE_ROOT;
                self.modSystem.menuOptionCurrent    = level.MODDEF.VALUE_ROOT;
                self.modSystem.menuLayerDepth       = level.MODDEF.VALUE_ROOT;

                // EN : Display a "Welcome" message
                // JA : 「ようこそ」メッセージを表示する
                self ShowWelocomeMessage( );
            }
        }
    }
    // EN: If the specified authority is "Unverified"
    // JA: 指定された権限が「未承認」の場合
    else
    {
        // EN: If a variable related to the mod menu is created
        // JA: モッドメニューに関する変数が作られている場合
        if ( IsDefined( self.modSystem.menuActive ) )
        {
            // EN : Destroy variables that only you use while processing a mod
            // JA : 自分のみがModの処理中に使う変数を破棄する
            self FinalizeSelfData( );
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Assign specified permissions to all players
// JA : 指定した権限を全プレイヤーに割り当てる
//++++++++++++++++++++++++++++++
ChangeAuthALLPlayers( authLevel )
{
    // EN: Get information on all participating players
    // JA: 参加中の全プレイヤー情報を取得
    for ( targetUser = 0; targetUser < level.players.size; targetUser++ )
    {
        // EN : Assign specified permissions to all players
        // JA : 指定した権限を全プレイヤーに割り当てる
        self thread ChangeAuth( targetUser , authLevel );
    }
}



//++++++++++++++++++++++++++++++
// EN : Remove mod menu privileges from all players (set to unauthorized)
// JA : 全プレイヤーのモッドメニューの権限を剥奪する（未承認に設定）
//++++++++++++++++++++++++++++++
RemoveAuthUnverifiedForALLPlayers( )
{
    self thread ChangeAuthALLPlayers( level.MODDEF.LV_UNVERIFIED );
}



//++++++++++++++++++++++++++++++
// EN : Set mod menu permissions for all players to "Co-host"
// JA : 全プレイヤーのモッドメニューの権限を "副ホスト" に設定する
//++++++++++++++++++++++++++++++
GiveAuthCohostForALLPlayers( )
{
    self thread ChangeAuthALLPlayers( level.MODDEF.LV_COHOST );
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
// EN : Teleport the opponent to your location
// JA : 相手を自分の場所にテレポートさせる
//++++++++++++++++++++++++++++++
ExecTeleportToMeSingle( )
{
    ExecTeleportTo( level.players[self.modSystem.menuPlayer] , self );
}



//++++++++++++++++++++++++++++++
// EN : Teleport yourself to the other person's location
// JA : 自分を相手の場所にテレポートさせる
//++++++++++++++++++++++++++++++
ExecTeleportToHimSingle( )
{
    ExecTeleportTo( self , level.players[self.modSystem.menuPlayer] );
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
        /* objectCollide */ true
        );
    
    // EN: If the creation of the flag object was successful
    // JA: 旗オブジェクトの作成が成功していた場合
    if ( IsDefined( l_Object ) )
    {
        // EN: remember flag object
        // JA: 旗オブジェクトを記憶する
        level.lvlStat["ForceRespawnPoint" + "_Flag"] = l_Object;
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
    l_Decoration    = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ l_Rotate.origin + ( 100 , 0 , 0 ) , /* spawnLength */   undefined , /* objectName */ "veh8_mil_air_mquebec8_small" , /* objectCollide */ undefined , /* angleSync */ undefined , /* objectAngle */ ( 0 , 90 , 0 ) , /* part */ true );
    //l_Move          = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ self.origin ,                       /* spawnLength */   undefined , /* objectName */ "tag_origin" );
    
    // EN : Link (synchronize) decorative objects to the central rotation object
    // JA : 装飾オブジェクトを中央の回転用オブジェクトにリンク（同期）する
    l_Decoration LinkTo( l_Rotate );

    // EN : Play effects on various objects in subthreads
    // JA : 各種オブジェクトにエフェクトをサブスレッドで再生させる
    l_Decoration thread PlayEffectToObject( /* time */ 0.25 , /* obj */ l_Decoration , /* fx */ "equipment_sparks" , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ true , /* base */ undefined, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    
    // EN : Make the function termination process of the function "ForceRespawnPoint" wait in a subthread
    // JA : 機能 "ForceRespawnPoint" の機能終了処理をサブスレッドで待機させる
    self thread OnEndForceRespawnPoint( optName , l_Rotate , l_Decoration );

    // EN : Loop processing while function "ForceRespawnPoint" is enabled
    // JA : 機能 "ForceRespawnPoint" が有効の間はループ処理を行う
    while ( IsDefined( level.lvlStat["ForceRespawnPoint"] ) )
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
    level.lvlStat["ForceRespawnPoint" + "_Flag"] = undefined;
}



//++++++++++++++++++++++++++++++
// EN : Toggle the paused state of the timer
// JA : タイマーの一時停止状態を切り替える
//++++++++++++++++++++++++++++++
OnfPauseTimer( )
{
    // EN : Change the pausing state of the lobby timer according to the existence state of the "PauseTimer" variable.
    // JA : "PauseTimer" 変数の存在状態に合わせて、 ロビーのタイマーの一時停止状態 を変更する
    self SwitchOnfLevelFunction(
        /* optName */   "PauseTimer" ,
        /* optFunc */   ::EmptyFunction
        );
    wait 0.05;
    if ( IsDefined( level.lvlStat["PauseTimer"] ) )  { level scripts\mp\gamelogic::PauseTimer( ); }
    else                                                { level scripts\mp\gamelogic::ResumeTimer( ); }
}



//++++++++++++++++++++++++++++++
// EN : Restart game lobby
// JA : ゲームロビーを再起動する
//++++++++++++++++++++++++++++++
ExecFastRestrat( )
{
    level thread scripts\mp\gamelogic::Restart( );
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
        /* optArg3 */   /* loopTime */  1
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
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: hide one's appearance
        // JA: 姿を非表示にする
        self PlayerHide( );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN: show appearance
        // JA: 姿を表示する
        self PlayerShow( );
    }
}



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
        /* optArg3 */   /* loopTime */  1
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
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {

    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        self SetCameraThirdPerson( true );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
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
// EN : Switch the enable/disable state of the function "DiscoCamo"
// JA : 機能 "DiscoCamo" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfDiscoCamo( )
{
    // EN : Execute ExecDiscoCamo( ) or exit depending on the existence state of the "DiscoCamo" variable
    // JA : "DiscoCamo" 変数の存在状態に合わせて、 ExecDiscoCamo( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "DiscoCamo" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "DiscoCamo" ,
        /* optArg2 */   /* optFunc */   ::ExecDiscoCamo ,
        /* optArg3 */   /* loopTime */  0.15
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "DiscoCamo"
// JA : 機能 "DiscoCamo" の実行中の処理
//++++++++++++++++++++++++++++++
ExecDiscoCamo( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: Get information about the weapon you currently have
        // JA: 今持っている武器の情報を取得
        l_CurrentWeapon = self GetCurrentWeapon( );
        // EN: If you have any weapons
        // JA: 武器を何か持っている場合
        if ( IsDefined( l_CurrentWeapon ) && ( l_CurrentWeapon.basename != "none" ) )
        {
            // EN: Get weapon name
            // JA: 武器名を取得
            self.optStat[optName].modData["LastID"] = GetCompleteWeaponName( l_CurrentWeapon );
        }
        // EN: If the weapon name can be obtained
        // JA: 武器名を取得出来ている場合
        if ( IsDefined( self.optStat[optName].modData["LastID"] ) )
        {
            // EN: Get only the weapon ID with randomly reconstructed camouflage
            // JA: 迷彩をランダムに再構築した武器IDのみを取得する
            l_BuildID = self thread ProvideWeapon( /* weap */ self.optStat[optName].modData["LastID"] , /* proj */ undefined , /* wpGroup */ undefined , /* attach */ undefined , /* camo */ "Random" , /* cmGroup */ undefined , /* akimbo */ undefined , /* hand */ undefined , /* notice */ undefined , /* getID */ true );
            // EN: If weapon data can be generated normally
            // JA: 武器データを正常に生成出来ている場合
            if ( IsDefined( l_BuildID ) )
            {
                // EN: Pick up the target's weapon
                // JA: 持っている対象の武器を取り上げる
                self ConfigureWeapon( /* weaponData */ self.optStat[optName].modData["LastID"] , /* takeHand */ true , /* changeHand */ undefined , /* randomChoose */ undefined , /* akimbo */ undefined , /* notice */ undefined );
                // EN : give specified weapon
                // JA : 指定の武器を与える
                self ConfigureWeapon( /* weaponData */ l_BuildID , /* takeHand */ undefined , /* changeHand */ undefined , /* randomChoose */ undefined , /* akimbo */ undefined , /* notice */ undefined );
            }
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "NinjaMode"
// JA : 機能 "NinjaMode" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfNinjaMode( )
{
    // EN : Execute ExecNinjaMode( ) or exit depending on the existence state of the "NinjaMode" variable
    // JA : "NinjaMode" 変数の存在状態に合わせて、 ExecNinjaMode( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "NinjaMode" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "NinjaMode" ,
        /* optArg2 */   /* optFunc */   ::ExecNinjaMode ,
        /* optArg3 */   /* loopTime */  0.05
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "NinjaMode"
// JA : 機能 "NinjaMode" の実行中の処理
//++++++++++++++++++++++++++++++
ExecNinjaMode( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {

    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        l_Clone = self ClonePlayer( 9999999 );
        wait 0.1;
        l_Clone thread DeleteAfterTime( 2 );
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "SetModel"
// JA : 機能 "SetModel" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfSetModel( )
{
    // EN : Execute ExecSetModel( ) or exit depending on the existence state of the "SetModel" variable
    // JA : "SetModel" 変数の存在状態に合わせて、 ExecSetModel( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "SetModel" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "SetModel" ,
        /* optArg2 */   /* optFunc */   ::ExecSetModel ,
        /* optArg3 */   /* loopTime */  0.05
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the type of 3D model in use with the function "SetModel"
// JA : 機能 "SetModel" で使用中の3Dモデルの種類を変更する
//++++++++++++++++++++++++++++++
SwitchChangeModel( )
{
    self ChangeModelID( true );
}



//++++++++++++++++++++++++++++++
// EN : Change the type of 3D model in use with the function "SetModel"
// JA : 機能 "SetModel" で使用中の3Dモデルの種類を変更する
//++++++++++++++++++++++++++++++
ChangeModelID( notice )
{
    l_OptName = "ChangeModel";

    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array = GetStandardModelList( );
    if ( !IsDefined( self.optStat[l_OptName + "_ObjectID"] ) )
    {
        // EN : Pick a model ID randomly from the array
        // JA : 配列内からランダムにモデルIDを取り出す
        self.optStat[l_OptName + "_ObjectID"] = scripts\engine\utility::Random( l_Array );
    }
    else
    {
        l_Find = false;
        for ( i = 0; i < l_Array.size; i++ )
        {
            if ( self.optStat[l_OptName + "_ObjectID"] == l_Array[i] )
            {
                l_Find = true;
                if ( (i + 1) < l_Array.size )   { self.optStat[l_OptName + "_ObjectID"] = l_Array[(i + 1)]; }
                else                            { self.optStat[l_OptName + "_ObjectID"] = l_Array[0]; }
                break;
            }
        }
        if ( !l_Find ) { self.optStat[l_OptName + "_ObjectID"] = l_Array[0]; }
    }

    // EN : If a 3D model already exists
    // JA : 既に3Dモデルが存在している場合
    if ( IsDefined( self.optStat["SetModel" + "_ObjectData"] ) )
    {
        // EN : Change 3D model
        // JA : 3Dモデルを変更する
        self.optStat["SetModel" + "_ObjectData"] SetModel( self.optStat[l_OptName + "_ObjectID"] );

        // EN : Set all script parts status for the specified model
        // JA : 指定したモデルに全てのスクリプト用パーツステータスを設定する
        if ( ( self.optStat[l_OptName + "_ObjectID"] != "military_carepackage_01_juggernaut" ) &&
            ( self.optStat[l_OptName + "_ObjectID"] != "military_carepackage_01_enemy" ) &&
            ( self.optStat[l_OptName + "_ObjectID"] != "military_carepackage_01_friendly" ) )
        {
            self.optStat["SetModel" + "_ObjectData"] thread SetAllSetScriptablePartState( );
        }
    }

    if ( IsDefined( notice ) )
    {
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , l_OptName , undefined , self.optStat[l_OptName + "_ObjectID"] , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "SetModel"
// JA : 機能 "SetModel" の実行中の処理
//++++++++++++++++++++++++++++++
ExecSetModel( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        // EN: If you have not decided on the type of 3D model yet, set the initial model.
        // JA: まだ3Dモデルの種類が決まっていない場合は、初期モデルを設定する
        if ( !IsDefined( self.optStat["ChangeModel" + "_ObjectID"] ) )
        {
            self ChangeModelID( undefined );
        }

        // EN: If no 3D model object has been generated yet
        // JA: まだ3Dモデルオブジェクトが生成されていない場合
        if ( !IsDefined( self.optStat[optName + "_ObjectData"] ) )
        {
            // EN : Create an 3D model
            // JA : 3Dモデルを作成する
            self.optStat[optName + "_ObjectData"] = self CreateEntityObject(
                /* notice */        undefined ,
                /* spawnLocation */ self.origin ,
                /* spawnLength */   undefined ,
                /* objectName */    self.optStat["ChangeModel" + "_ObjectID"] ,
                /* objectCollide */ true ,
                /* angleSync */     undefined ,
                /* objectAngle */   self.angles ,
                /* part */          true
                );

            // EN : If the 3D model generation is successful
            // JA : 3Dモデルの生成が成功している場合
            if ( IsDefined( self.optStat[optName + "_ObjectData"] ) )
            {
                // EN : Align your head with the 3D model
                // JA : 3Dモデルと自分の頭の位置を合わせる
                self.optStat[optName + "_ObjectData"].origin = self GetTagOrigin( "j_head" );
                // EN : Align your angle with the 3D model
                // JA : 3Dモデルと自分の角度を合わせる
                self.optStat[optName + "_ObjectData"].angles = self GetPlayerAngles( );
                // EN : Link (sync) a 3D model to yourself
                // JA : 3Dモデルを自分にリンク（同期）する
                self.optStat[optName + "_ObjectData"] LinkTo( self , "j_head" );
                // EN : Assume that 3D model linking (synchronization) is completed.
                // JA : 3Dモデルのリンク（同期）先は自分とする
                self.optStat[optName + "_ObjectLinked"] = "SELF";

                // EN : Executes the event that is executed when the function "SetModel" is terminated on a subthread
                // JA : 機能 "SetModel" が終了された時に実行されるイベントを、サブスレッド上で実行する
                self thread OnWaitingEndSetModel( optName );
            }
        }
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN : If the 3D model generation is successful
        // JA : 3Dモデルの生成が成功している場合
        if ( IsDefined( self.optStat[optName + "_ObjectData"] ) )
        {
            // EN : When the 3D model is linked (synchronized) to you
            // JA : 3Dモデルのリンク（同期）先が自分の時
            if ( self.optStat[optName + "_ObjectLinked"] == "SELF" )
            {
                // EN: If the object used for flight processing has already been generated
                // JA: 飛行処理に使うオブジェクトが生成済みの場合
                if ( IsDefined( self.optStat["BindNoclip" + "LinkObject"] ) )
                {
                    // EN : Unlink (synchronize) 3D models
                    // JA : 3Dモデルのリンク（同期）を解除する
                    self.optStat[optName + "_ObjectData"] Unlink( );

                    // EN : Get the coordinates slightly below your forward direction
                    // JA : 自分の前方方向、少し下の座標を取得する
                    l_ObjectLocation = self GetPlayerForwardTrace( undefined , undefined , 550 );
                    l_ObjectLocation = l_ObjectLocation + ( 0 , 0 , -75 );

                    // EN : Move the 3D model to the coordinates in front of you and slightly below you
                    // JA : 3Dモデルを自分の前方方向、少し下の座標に移動する
                    self.optStat[optName + "_ObjectData"].origin = l_ObjectLocation;
                    // EN : Align the angle of the 3D model and the object used for flight processing
                    // JA : 3Dモデルと飛行処理に使うオブジェクトの角度を合わせる
                    self.optStat[optName + "_ObjectData"].angles = self.optStat["BindNoclip" + "LinkObject"].angles;
                    // EN : Link (synchronize) the 3D model to the objects used for flight processing
                    // JA : 3Dモデルを飛行処理に使うオブジェクトにリンク（同期）する
                    self.optStat[optName + "_ObjectData"] LinkTo( self.optStat["BindNoclip" + "LinkObject"] );
                    // EN : Link (synchronize) the 3D model to the object used for flight processing
                    // JA : 3Dモデルのリンク（同期）先は飛行処理に使うオブジェクトとする
                    self.optStat[optName + "_ObjectLinked"] = "NOCLIP";
                }
            }
            // EN : When the 3D model is linked (synchronized) to an object used for flight processing
            // JA : 3Dモデルのリンク（同期）先が飛行処理に使うオブジェクトの時
            else
            {
                // EN: If the object used for flight processing has not been created yet
                // JA: 飛行処理に使うオブジェクトが削除された場合
                if ( !IsDefined( self.optStat["BindNoclip" + "LinkObject"] ) )
                {
                    // EN : Unlink (synchronize) 3D models
                    // JA : 3Dモデルのリンク（同期）を解除する
                    self.optStat[optName + "_ObjectData"] Unlink( );
                    // EN : Align your head with the 3D model
                    // JA : 3Dモデルと自分の頭の位置を合わせる
                    self.optStat[optName + "_ObjectData"].origin = self GetTagOrigin( "j_head" );
                    // EN : Align your angle with the 3D model
                    // JA : 3Dモデルと自分の角度を合わせる
                    self.optStat[optName + "_ObjectData"].angles = self GetPlayerAngles( );
                    // EN : Link (sync) a 3D model to yourself
                    // JA : 3Dモデルを自分にリンク（同期）する
                    self.optStat[optName + "_ObjectData"] LinkTo( self , "j_head" );
                    // EN : Assume that 3D model linking (synchronization) is completed.
                    // JA : 3Dモデルのリンク（同期）先は自分とする
                    self.optStat[optName + "_ObjectLinked"] = "SELF";
                }
            }
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN : If the 3D model still exists
        // JA : 3Dモデルがまだ存在している場合
        if ( IsDefined( self.optStat[optName + "_ObjectData"] ) )
        {
            // EN : Unlink (synchronize) 3D models
            // JA : 3Dモデルのリンク（同期）を解除する
            self.optStat[optName + "_ObjectData"] Unlink( );

            // EN : Delete 3D model
            // JA : 3Dモデルを削除する
            self.optStat[optName + "_ObjectData"] Delete( );
            self.optStat[optName + "_ObjectData"] = undefined;
            
            // EN : Delete 3D model link information
            // JA : 3Dモデルのリンク情報を削除する
            self.optStat[optName + "_ObjectLinked"] = undefined;
        }
    }
    
}



//++++++++++++++++++++++++++++++
// EN : Event executed when function "SetModel" is terminated
// JA : 機能 "SetModel" が終了された時に実行されるイベント
//++++++++++++++++++++++++++++++
OnWaitingEndSetModel( optName )
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
    
    // EN : Wait until function "SetModel" is finished
    // JA : 機能 "SetModel" が終了されるまで待機する
    self WaitTill( "end_" + optName );
    
    // EN : If the 3D model still exists
    // JA : 3Dモデルがまだ存在している場合
    if ( IsDefined( self.optStat[optName + "_ObjectData"] ) )
    {
        // EN : Unlink (synchronize) 3D models
        // JA : 3Dモデルのリンク（同期）を解除する
        self.optStat[optName + "_ObjectData"] Unlink( );

        // EN : Delete 3D model
        // JA : 3Dモデルを削除する
        self.optStat[optName + "_ObjectData"] Delete( );
        self.optStat[optName + "_ObjectData"] = undefined;
        
        // EN : Delete 3D model link information
        // JA : 3Dモデルのリンク情報を削除する
        self.optStat["ChangeModel" + "_ObjectID"] = undefined;
        self.optStat[optName + "_ObjectLinked"] = undefined;
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the type of 3D model in use with the function "SetModel"
// JA : 機能 "SetModel" で使用中の3Dモデルの種類を変更する
//++++++++++++++++++++++++++++++
ExecChangeModel( )
{
    l_OptName1 = "ChangeModel";
    l_OptName2 = "SetModel";

    self.optStat[l_OptName1 + "_ObjectID"] = level.modMenuData[self.modSystem.menuLayerCurrent].item[self.modSystem.menuOptionCurrent].textID;

    // EN : If a 3D model already exists
    // JA : 既に3Dモデルが存在している場合
    if ( IsDefined( self.optStat[l_OptName2 + "_ObjectData"] ) )
    {
        // EN : Change 3D model
        // JA : 3Dモデルを変更する
        self.optStat[l_OptName2 + "_ObjectData"] SetModel( self.optStat[l_OptName1 + "_ObjectID"] );

        // EN : Set all script parts status for the specified model
        // JA : 指定したモデルに全てのスクリプト用パーツステータスを設定する
        if ( ( self.optStat[l_OptName1 + "_ObjectID"] != "military_carepackage_01_juggernaut" ) &&
            ( self.optStat[l_OptName1 + "_ObjectID"] != "military_carepackage_01_enemy" ) &&
            ( self.optStat[l_OptName1 + "_ObjectID"] != "military_carepackage_01_friendly" ) )
        {
            self.optStat[l_OptName2 + "_ObjectData"] thread SetAllSetScriptablePartState( );
        }
    }

    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    self ShowCenterMessage( self.curLang , "Notice" , l_OptName1 , undefined , self.optStat["ChangeModel" + "_ObjectID"] , undefined );

}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "RealCarepackageGun"
// JA : 機能 "RealCarepackageGun" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfRealCarepackageGun( )
{
    l_OptName = "RealCarepackageGun";

    // EN : When the "RealCarepackageGun" variable is enabled, pass the weapon with the specified settings and pass the coordinates of the target fired with the weapon to the ExecRealCarepackageGun( ) function.
    // JA : "RealCarepackageGun" 変数が有効時、指定の設定で武器を渡し、その武器で発射した先の座標を ExecRealCarepackageGun( )関数 にデータを渡す
    self SwitchOnfSelfFunction(
        /* optName */                               l_OptName ,
        /* optFunc */                               ::WaitFireBullets ,
        /* message */                               undefined ,
        /* optArg1 */       /* optName1 */          l_OptName ,
        /* optArg2 */       /* optName2 */          undefined ,
        /* optArg3 */       /* optFunc */           ::ExecRealCarepackageGun ,
        /* optArg4 */       /* notice */            undefined ,
        /* optArg5 */       /* specificWeapon */    true ,
        /* optArg6 */       /* effectData */        undefined ,
        /* optArg7 */       /* endDeath */          true ,
        /* weaponID */                              "Random" ,
        /* inProjectile */                          undefined ,
        /* onlyGroup */                             "weapon_pistol" ,
        /* attachmentID */                          "Random" ,
        /* camoID */                                "Random"
        );

    wait 0.05;
    // EN: Shorten the distance of the coordinates to obtain when firing a gun
    // JA: 銃発射時の取得先の座標の距離を短くする
    if ( IsDefined( self.optStat[l_OptName] ) ) { self.optStat[l_OptName].modData["TraceLength"] = 1000; }
}



//++++++++++++++++++++++++++++++
// EN : When the "RealCarepackageGun" variable is enabled, a care package is created and launched towards the specified coordinates.
// JA : "RealCarepackageGun" 変数が有効時、指定の座標に向けてケアパッケージを作成し、発射させる
//++++++++++++++++++++++++++++++
ExecRealCarepackageGun( location )
{
    // EN : Get the coordinates of the aircraft's destination (Coordinates a specified distance ahead in the direction of the player's viewpoint)
    // JA : ケアパッケージの生成座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
    l_CrateLocation = self GetPlayerForwardTrace( /* trace */ undefined , /* eye */ true , /* length */ 100 , /* fix */ undefined , /* up */ undefined );
    // EN : Create a care package
    // JA : ケアパッケージを作成する
    l_Package = CreateRealCarepackage( /* owner */ self , /* location */ l_CrateLocation , /* angle */ self GetPlayerAngles( ) );

    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , location , undefined );
    WaitFrame( );

    // EN : For effect processing purposes, make the specified bullet fly in a transparent state from the specified starting point to the specified ending point.
    // JA : エフェクト処理用途で、指定した弾を、指定した開始地点から終了地点まで、透明状態で飛ばす
    l_Bullet = self CreateEffectableBullet( self , 150 , 0 , GetBulletID( "RPG7" ) , location );
    // EN: If bullets can be generated
    // JA: 弾が生成出来ている場合
    if ( IsDefined( l_Bullet ) )
    {
        // EN : Executes the process during the movement of ammunition fired with the function "RealCarepackageGun" on a subthread.
        // JA : 機能 "RealCarepackageGun" で発射された弾薬が移動中の処理を、サブスレッド上で実行する
        l_Bullet thread LinkObjectToBullet( /* object */ l_Package , /* time */ undefined , /* del */ undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "RocketRide"
// JA : 機能 "RocketRide" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfRocketRide( )
{
    // EN : Execute ExecRocketRide( ) or exit depending on the existence state of the "RocketRide" variable
    // JA : "RocketRide" 変数の存在状態に合わせて、 ExecRocketRide( )関数 を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "RocketRide" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "RocketRide" ,
        /* optArg2 */   /* optFunc */   ::ExecRocketRide ,
        /* optArg3 */   /* loopTime */  0.5 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  GetBulletID( "RPG7" ) ,
        /* inProjectile */              undefined ,
        /* onlyGroup */                 undefined ,
        /* attachmentID */              "Random" ,
        /* camoID */                    "Random"
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "RocketRide"
// JA : 機能 "RocketRide" の実行中の処理
//++++++++++++++++++++++++++++++
ExecRocketRide( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        self WaitTill( "missile_fire" , bulletObject , weaponID );
        
        // EN: If the weapon no longer exists, execute the termination process
        // JA: 武器が既に存在しない場合、終了処理を実行する
        if ( IsDefined( self.optStat[optName] ) == false )
        {
            self ExecRocketRide( optName , level.MODDEF.MOD_FINALIZE );
            return;
        }

        // EN: If the fired weapon matches the weapon linked to the specified variable
        // JA: 発射された武器と、指定の変数に連携する武器が一致する場合
        if ( GetCompleteWeaponName( self GetCurrentWeapon( ) ) == self.optStat[optName].weaponData )
        {
            // EN: If you are already linking to a previously launched missile
            // JA: 既に前に発射したミサイルにリンク中である場合
            if ( IsDefined( self.optStat[optName + "_Linking"] ) )
            {
                // EN: Terminates the missile link standby process that is currently running.
                // JA: 実行中のミサイルリンク待機処理を終了する
                self Notify( "end_" + optName + "_Linking" );

                // EN: Unlink (synchronize) yourself from the missile
                // JA: ミサイルから自分のリンク（同期）を解除する
                self UnLink( );

                WaitFrame( );
            }

            // EN: Link (synchronize) yourself to the launched missile
            // JA: 自分を発射されたミサイルにリンク（同期）する
            self PlayerLinkTo( bulletObject );

            // EN : Processing during linking until the missile disappears in the function "RocketRide"
            // JA : 機能 "RocketRide" のミサイルが消滅するまでのリンク中の処理
            self thread OnDeathRocketRide( optName , bulletObject );
            
            // EN: Define missile linking flag
            // JA: ミサイルリンク中フラグを定義する
            self.optStat[optName + "_Linking"] = true;
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN: If linked to a missile
        // JA: ミサイルにリンク中である場合
        if ( IsDefined( self.optStat[optName + "_Linking"] ) )
        {
            // EN: Unlink (synchronize) yourself from the missile
            // JA: ミサイルから自分のリンク（同期）を解除する
            self UnLink( );
            
            // EN: Discard missile link flag
            // JA: ミサイルリンク中フラグを破棄する
            self.optStat[optName + "_Linking"] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing during linking until the missile disappears in the function "RocketRide"
// JA : 機能 "RocketRide" のミサイルが消滅するまでのリンク中の処理
//++++++++++++++++++++++++++++++
OnDeathRocketRide( optName , bulletObject )
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
    self Endon( "end_" + optName + "_Linking" );

    
    // EN: Increase your health so you don't die when the missile explodes
    // JA: ミサイルの爆発時に死なないように、体力を上げておく
    self.maxhealth  = 10000;
    self.health     = self.maxhealth;

    // EN : wait until the missile explodes
    // JA : ミサイルが爆発するまで待つ
    bulletObject WaitTill( "death" );
    
    // EN: Unlink (synchronize) yourself from the missile
    // JA: ミサイルから自分のリンク（同期）を解除する
    self UnLink( );
    wait 0.5;

    // EN: regain one's strength
    // JA: 体力を元に戻す
    self.maxhealth  = 100;
    self.health     = self.maxhealth;
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "RandomCamo"
// JA : 機能 "RandomCamo" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfRandomCamo( )
{
    // EN : Create or destroy a "RandomCamo" variable
    // JA : "RandomCamo" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "RandomCamo" ,
        /* optFunc */       ::EmptyFunction
        );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "RandomAttachment"
// JA : 機能 "RandomAttachment" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfRandomAttachment( )
{
    // EN : Create or destroy a "RandomAttachment" variable
    // JA : "RandomAttachment" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "RandomAttachment" ,
        /* optFunc */       ::EmptyFunction
        );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "DualWeapon"
// JA : 機能 "DualWeapon" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfDualWeapon( )
{
    // EN : Create or destroy a "DualWeapon" variable
    // JA : "DualWeapon" 変数の作成か破棄を行う
    self SwitchOnfSelfFunction(
        /* optName */       "DualWeapon" ,
        /* optFunc */       ::EmptyFunction
        );
}



//++++++++++++++++++++++++++++++
// EN : Get a random weapon
// JA : ランダムに武器を取得する
//++++++++++++++++++++++++++++++
ExecGiveRandomWeapon( )
{
    // EN : Get random attachment settings
    // JA : ランダムアタッチメント設定の取得
    l_AttachmentID = "Random";
    if ( !IsDefined( self.optStat["RandomAttachment"] ) )  { l_AttachmentID = undefined; }
    
    // EN : Get random camouflage settings
    // JA : ランダム迷彩設定の取得
    l_CamoID = "Random";
    if ( !IsDefined( self.optStat["RandomCamo"] ) )        { l_CamoID = undefined; }
    
    // EN : Get dual attachment settings
    // JA : デュアルアタッチメント設定の取得
    l_Dual = true;
    if ( !IsDefined( self.optStat["DualWeapon"] ) )        { l_Dual = undefined; }

    // EN : give specified weapon
    // JA : 指定の武器を与える
    self thread ProvideWeapon(
        /* weaponID */      "Random" ,
        /* inProjectile */  "Random" ,
        /* onlyGroup */     undefined ,
        /* attachmentID */  l_AttachmentID ,
        /* camoID */        l_CamoID ,
        /* camoGroup */     undefined ,
        /* akimbo */        l_Dual ,
        /* changeHand */    true ,
        /* notice */        true
        );
}



//++++++++++++++++++++++++++++++
// EN : Drop your weapon on the ground
// JA : 所持中の武器を地面に落とす
//++++++++++++++++++++++++++++++
ExecDropWeapon( )
{
    // EN: Get information about the weapon you currently have
    // JA: 今持っている武器の情報を取得
    l_CurrentWeapon = self GetCurrentWeapon( );

    // EN: If you own any kind of weapon
    // JA: 何かしらの武器を所持している場合
    if ( IsDefined( l_CurrentWeapon ) )
    {
        // EN : Get basic name of weapon
        // JA : 武器の基本名称を取得
        l_Name = GetWeaponBaseName( l_CurrentWeapon );

        // EN : Drop your weapon on the ground
        // JA : 所持中の武器を地面に落とす
        self DropItem( l_CurrentWeapon );
        
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "DropWeapon" , undefined , l_Name , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Pick up your weapon
// JA : 所持中の武器を取り上げる
//++++++++++++++++++++++++++++++
ExecTakedWeapon( )
{
    // EN: Get information about the weapon you currently have
    // JA: 今持っている武器の情報を取得
    l_CurrentWeapon = self GetCurrentWeapon( );

    // EN: If you own any kind of weapon
    // JA: 何かしらの武器を所持している場合
    if ( IsDefined( l_CurrentWeapon ) )
    {
        // EN : Get basic name of weapon
        // JA : 武器の基本名称を取得
        l_Name = GetWeaponBaseName( l_CurrentWeapon );

        // EN : Pick up your weapon
        // JA : 所持中の武器を取り上げる
        self scripts\cp_mp\utility\inventory_utility::_TakeWeapon( l_CurrentWeapon );
        
        // EN: Display the specified text in the center of the screen
        // JA: 画面中央に指定の文章を表示する
        self ShowCenterMessage( self.curLang , "Notice" , "TakedWeapon" , undefined , l_Name , undefined );
    }
}



//++++++++++++++++++++++++++++++
// EN : Pick up your all weapons
// JA : 所持中の全ての武器を取り上げる
//++++++++++++++++++++++++++++++
ExecTakedAllWeapons( )
{
    // EN : Pick up your all weapons
    // JA : 所持中の全ての武器を取り上げる
    self TakeAllWeapons( );
    
    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    self ShowCenterMessage( self.curLang , "Notice" , "TakedAllWeapons" , undefined , undefined , undefined );
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
        /* optArg3 */   /* loopTime */  1
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
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
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
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
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
        /* optArg3 */   /* loopTime */  0.05
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
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
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
                if ( !IsDefined( self.optStat[optName + "LinkObject"] ) )
                {
                    // EN: Create a transparent object used for flight processing with your own coordinates and angle
                    // JA: 飛行処理に使う透明なオブジェクトを、自分の座標、角度で作成する
                    self.optStat[optName + "LinkObject"] = self CreateEntityObject(
                        /* notice */ undefined , /* spawnLocation */ self.origin , /* spawnLength */ undefined , /* objectName */ "script_model" ,
                        /* objectCollide */ undefined , /* angleSync */ undefined , /* objectAngle */ self.angles
                        );
                    
                    // EN: Link (sync) yourself to the object you created
                    // JA: 自分を作成したオブジェクトにリンク（同期）する
			        self PlayerLinkTo( self.optStat[optName + "LinkObject"] , undefined , 0 );

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
                    self.optStat[optName + "LinkObject"] Delete( );
                    self.optStat[optName + "LinkObject"] = undefined;
                    
                    // EN: Display the specified text in the center of the screen
                    // JA: 画面中央に指定の文章を表示する
                    self ShowCenterMessage( self.curLang , "Disabled" , "BindNoclip" , undefined , undefined , undefined );
                }

                wait 0.3;
            }
            // EN: While the "Melee Attack" button is not pressed
            // JA: 「近接攻撃」ボタンが押されていない間
            else
            {
                // EN: If the object used for flight processing has already been generated
                // JA: 飛行処理に使うオブジェクトが生成済みの場合
                if ( IsDefined( self.optStat[optName + "LinkObject"] ) )
                {
                    // EN: When the "Run/Hold your breath" button is pressed
                    // JA: 「走る・息止め」ボタンが押されたら
                    if ( self GetKeycodePressed( "Sprint" , "Sprint" ) )
                    {
                        // EN : Get the coordinates of a distance 200 times ahead in the front direction and move the created object to those coordinates.
                        // JA : 正面方向へ 200 倍先の距離の座標を取得し、作成したオブジェクトをその座標へ移動する
                        self.optStat[optName + "LinkObject"].origin = self GetPlayerForwardTrace( undefined , undefined , 350 );
                    }
                    // EN: When the "Crouch/Prone" button is pressed
                    // JA: 「しゃがみ・伏せ」ボタンが押されたら
                    else if ( self GetKeycodePressed( "Stance" , "Stance" ) )
                    {
                        // EN : Get the coordinates of a distance 5000 times ahead in the front direction and move the created object to those coordinates.
                        // JA : 正面方向へ 5000 倍先の距離の座標を取得し、作成したオブジェクトをその座標へ移動する
                        self.optStat[optName + "LinkObject"].origin = self GetPlayerForwardTrace( undefined , undefined , 5000 );
                    }
                    // EN: When neither button is pressed
                    // JA: どちらのボタンも押されていない時
                    else
                    {
                        // EN : Get the coordinates of a distance 20 times ahead in the front direction and move the created object to those coordinates.
                        // JA : 正面方向へ 20 倍先の距離の座標を取得し、作成したオブジェクトをその座標へ移動する
                        self.optStat[optName + "LinkObject"].origin = self GetPlayerForwardTrace( undefined , undefined , 20 );
                    }
                }
            }
        }
        
        // EN: If the object used for flight processing has already been generated
        // JA: 飛行処理に使うオブジェクトが生成済みの場合
        if ( IsDefined( self.optStat[optName + "LinkObject"] ) )
        {
            self.optStat[optName + "LinkObject"].angles = self GetPlayerAngles( );
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN: If the object used for flight processing has already been generated
        // JA: 飛行処理に使うオブジェクトが生成済みの場合
        if ( IsDefined( self.optStat[optName + "LinkObject"] ) )
        {
            // EN: Unlink (synchronize) yourself from the created object
            // JA: 作成したオブジェクトから自分のリンク（同期）を解除する
            self UnLink( );
            
            // EN: Delete the created object
            // JA: 作成したオブジェクトを削除する
            self.optStat[optName + "LinkObject"] Delete( );
            self.optStat[optName + "LinkObject"] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Infinity ammo"
// JA : 機能「弾無限」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfInfinityAmmo( )
{
    // EN : Execute ExecInfinityAmmo( ) or exit depending on the existence state of the "InfinityAmmo" variable
    // JA : 「InfAmmo」変数の存在状態に合わせて、ExecInfinityAmmo( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "InfinityAmmo" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "InfinityAmmo" ,
        /* optArg2 */   /* optFunc */   ::ExecInfinityAmmo ,
        /* optArg3 */   /* loopTime */  0.05
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Infinity ammo"
// JA : 機能「弾無限」の実行中の処理
//++++++++++++++++++++++++++++++
ExecInfinityAmmo( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: Get information about the weapon you currently have
        // JA: 今持っている武器の情報を取得
        l_CurrentWeapon = self GetCurrentWeapon( );

        // EN: If you have any weapons
        // JA: 武器を何か持っている場合
        if ( l_CurrentWeapon != "none" )
        {
            // EN: Set the number of remaining bullets to the maximum number of bullets for that weapon.
            // JA: 残弾数をその武器の最大弾数にする
            self SetWeaponAmmoStock( l_CurrentWeapon , WeaponMaxAmmo( l_CurrentWeapon ) );
            
            // EN: Set the number of bullets to the maximum number of bullets for that weapon.
            // JA: 装弾数をその武器の最大弾数にする
            self SetWeaponAmmoClip( l_CurrentWeapon , l_CurrentWeapon.clipSize );

            // EN: Gives maximum ammo for that weapon
            // JA: その武器の最大弾薬数を与える
            // self GiveMaxAmmo( l_CurrentWeapon );
        }


        // EN: Get information about sub-weapons that you don't have in your hand
        // JA: 手に持っていないサブ武器の情報を取得
        l_OffHandWeapon = self GetCurrentOffHand( );

        // EN: If you have any sub-weapons
        // JA: サブ武器を何か持っている場合
        if ( l_OffHandWeapon != "none" )
        {
            // EN: Set the number of remaining bullets to the maximum number of bullets for that weapon.
            // JA: 残弾数をその武器の最大弾数にする
            self SetWeaponAmmoStock( l_OffHandWeapon , WeaponMaxAmmo( l_OffHandWeapon ) );
            
            // EN: Set the number of bullets to the maximum number of bullets for that weapon.
            // JA: 装弾数をその武器の最大弾数にする
            self SetWeaponAmmoClip( l_OffHandWeapon , l_OffHandWeapon.clipSize );

            // EN: Gives maximum ammo for that weapon
            // JA: その武器の最大弾薬数を与える
            // self GiveMaxAmmo( l_OffHandWeapon );
        }


        // EN: Get information about sub-weapons that you don't have in your hand
        // JA: 代替武器の情報を取得
        l_AltWeapon = self GetAltWeapon( );

        // EN: If you have any sub-weapons
        // JA: 代替武器を何か持っている場合
        if ( l_AltWeapon != "none" )
        {
            // EN: Set the number of remaining bullets to the maximum number of bullets for that weapon.
            // JA: 残弾数をその武器の最大弾数にする
            self SetWeaponAmmoStock( l_AltWeapon , WeaponMaxAmmo( l_AltWeapon ) );
            
            // EN: Set the number of bullets to the maximum number of bullets for that weapon.
            // JA: 装弾数をその武器の最大弾数にする
            self SetWeaponAmmoClip( l_AltWeapon , l_AltWeapon.clipSize );

            // EN: Gives maximum ammo for that weapon
            // JA: その武器の最大弾薬数を与える
            // self GiveMaxAmmo( l_AltWeapon );
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// EN : Change the type of ammunition for the function "Modded Bullets"
// JA : 機能　"Modded Bullets" の弾薬の種類を変更する 
//++++++++++++++++++++++++++++++
SwitchBulletsType( )
{
    // EN : Change the type of ammunition for the function "Modded Bullet" (with notification)
    // JA : 機能　"Modded Bullet" の弾薬の種類を変更する （通知有り）
    self ChangeBulletsType( true , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Enable/disable suboption "ModdedBulletsFireTrigger" of function "Modded Bullets"
// JA : 機能 "Modded Bullets" のサブオプション "ModdedBulletsFireTrigger" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfModdedBulletsFireTrigger( )
{
    // EN : Create or destroy a "ModdedBulletsFireTrigger" variable
    // JA : "ModdedBulletsFireTrigger" 変数の作成か破棄を行う
    self SwitchOnfSelfSubFunction(
        /* optName1 */  "ModdedBullets" ,
        /* optName2 */  "ModdedBulletsFireTrigger" ,
        /* optData */   true ,
        /* optFunc */   undefined ,
        /* notice */    true
        );
}



//++++++++++++++++++++++++++++++
// EN : Enable/disable suboption "ModdedBulletsNum5" of function "Modded Bullets"
// JA : 機能 "Modded Bullets" のサブオプション "ModdedBulletsNum5" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfModdedBulletsNum5( )
{
    // EN : Create or destroy a "ModdedBulletsNum5" variable
    // JA : "ModdedBulletsNum5" 変数の作成か破棄を行う
    self SwitchOnfSelfSubFunction(
        /* optName1 */  "ModdedBullets" ,
        /* optName2 */  "ModdedBulletsNum5" ,
        /* optData */   true ,
        /* optFunc */   undefined ,
        /* notice */    true
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the type of ammunition for the function "Modded Bullet" (with or without notification specified)
// JA : 機能　"Modded Bullet" の弾薬の種類を変更する （通知の有無の指定有り）
//++++++++++++++++++++++++++++++
ChangeBulletsType( notice , random )
{
    // EN : Get ammo list
    // JA : 弾薬リストを取得する
    l_Array = GetBulletList( "AllBullet" );

    self ChangeSelfParameter( "ModdedBullets" , "BulletType" , undefined , ::OnfModdedBullets , l_Array , notice , undefined , random );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "Modded bullet"
// JA : 機能「Modded Bullet」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfModdedBullets( )
{
    // EN : Execute ExecModdedBullets( ) or exit depending on the existence state of the "ModdedBullets" variable
    // JA : "ModdedBullets" 変数の存在状態に合わせて、ExecModdedBullets( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "ModdedBullets" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "ModdedBullets" ,
        /* optArg2 */   /* optFunc */   ::ExecModdedBullets ,
        /* optArg3 */   /* loopTime */  0.05
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Modded Bullet"
// JA : 機能「改造弾」の実行中の処理
//++++++++++++++++++++++++++++++
ExecModdedBullets( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        // EN: If the "BulletType" variable does not exist
        // JA: 「BulletType」変数が存在しない場合
        if ( !IsDefined( self.optStat[optName].modData["BulletType"] ) )
        {
            // EN : Pick a weapon ID randomly from the array and set it
            // JA : 配列内からランダムに 武器ID を取り出して設定する
            self ChangeBulletsType( undefined , true );
        }
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: When waiting for a gun firing event to occur using the WaitTill function
        // JA: WaitTill 関数による 銃発射 イベントの発生を待機する場合
        if ( IsDefined( self.optStat[optName].modData["ModdedBulletsFireTrigger"] ) )
        {
            self WaitTill( "weapon_fired" );
        }
        // EN: When not using the gun firing event using the WaitTill function
        // JA: WaitTill 関数による 銃発射 イベントを利用しない場合
        else
        {
            // EN: Do not proceed to the next process while the "Attack" button is not pressed.
            // JA: "攻撃" ボタンが押されていない間は、次の処理に進まない
            if ( self GetKeycodePressed( "Attack" , "Attack" ) == false ) { return; }
        }

        // EN: Whether 3D model is being generated and Noclip is in progress
        // JA: 3Dモデル生成中で、且つNoclip中かどうか
        l_ModelNoclip = false;
        // EN: Define ammunition coordinate information to be used during 3D model generation and Noclip.
        // JA: 3Dモデル生成中で、且つNoclip中の時に使う、弾薬座標情報を定義しておく
        l_BulletStart = [];
        l_BulletEnd = [];
        // EN: Get eye location
        // JA: 目の座標を取得
        l_EyeLocation = self GetEye( );
        // EN: Get front direction
        // JA: 正面方向を取得
        l_ForwardAngle = AnglesToForward( self GetPlayerAngles( ) );
        // EN: Get the bullet generation start coordinates (shift about 50 points from the coordinates of your eyes in the direction the muzzle is facing)
        // JA: 弾の生成開始座標を取得（自分の目の座標から、銃口が向いてる方向に 50 程度ずらす）
        l_StartLocation = ( l_EyeLocation + ( l_ForwardAngle * 50 ) );
        // EN: Get the bullet generation start coordinates (shift about 1000000 points from the coordinates of your eyes in the direction the muzzle is facing)
        // JA: 弾の生成開始座標を取得（自分の目の座標から、銃口が向いてる方向に 1000000 程度ずらす）
        l_EndLocation = ( l_EyeLocation + ( l_ForwardAngle * 1000000 ) );
        
        // EN : If a 3D model has been generated
        // JA : 3Dモデルの生成がされている場合
        if ( IsDefined( self.optStat["SetModel" + "_ObjectData"] ) )
        {
            // EN: If the object used for flight processing has already been generated
            // JA: 飛行処理に使うオブジェクトが生成済みの場合
            if ( IsDefined( self.optStat["BindNoclip" + "LinkObject"] ) )
            {
                // EN: 3D model is being generated and Noclip is in progress
                // JA: 3Dモデル生成中で、且つNoclip中とする
                l_ModelNoclip = true;
                // EN : Get 3D model coordinates
                // JA : 3Dモデルの座標を取得
                l_EyeLocation = self.optStat["SetModel" + "_ObjectData"].origin;
                // EN: Get front direction
                // JA: 正面方向を取得
                l_ForwardAngle = AnglesToForward( self.optStat["SetModel" + "_ObjectData"].angles );
                // EN: Get right direction
                // JA: 右方向を取得
                l_RightAngle = AnglesToRight( self.optStat["SetModel" + "_ObjectData"].angles );
                // EN: Get left direction
                // JA: 左向を取得
                l_LeftAngle = AnglesToLeft( self.optStat["SetModel" + "_ObjectData"].angles );
                // EN: Obtain the bullet generation start coordinates (shift slightly to the left and right from the coordinates of the 3D model, and shift about 300 in the front direction)
                // JA: 弾の生成開始座標を取得（3Dモデルの座標から少し左右にずらし、正面方向に 300 程度ずらす）
                l_BulletStart["Right"]  = ( l_EyeLocation + ( l_RightAngle * 100 ) + ( 0 , 0 , -75 ) + ( l_ForwardAngle * 300 ) );
                l_BulletStart["Left"]   = ( l_EyeLocation + ( l_LeftAngle * 100 ) + ( 0 , 0 , -75 ) + ( l_ForwardAngle * 300 ) );
                // EN: Get the bullet generation start coordinates (Shift slightly to the left and right from the coordinates of the 3D model, and shift about 1000000 in the front direction)
                // JA: 弾の生成開始座標を取得（3Dモデルの座標から少し左右にずらし、正面方向に 1000000 程度ずらす）
                l_BulletEnd["Right"]    = ( l_EyeLocation + ( l_RightAngle * 100 ) + ( 0 , 0 , -75 ) + ( l_ForwardAngle * 1000000 ) );
                l_BulletEnd["Left"]     = ( l_EyeLocation + ( l_LeftAngle * 100 ) + ( 0 , 0 , -75 ) + ( l_ForwardAngle * 1000000 ) );
            }
        }
        
        // EN: When firing 5 bullets at the same time
        // JA: 弾発射数を5発同時に撃つ場合
        if ( IsDefined( self.optStat[optName].modData["ModdedBulletsNum5"] ) )
        {
            // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
            // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
            CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , ( l_StartLocation + ( 0 , 0 , 100 ) ) , l_EndLocation );
            wait 0.05;
            CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , ( l_StartLocation + ( 100 , 0 , 0 ) ) , l_EndLocation );
            wait 0.05;
            CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , ( l_StartLocation + ( -100 , 0 , 0 ) ) , l_EndLocation );
            wait 0.05;
            CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , ( l_StartLocation + ( 100 , 0 , 100 ) ) , l_EndLocation );
            wait 0.05;
            CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , ( l_StartLocation + ( -100 , 0 , 100 ) ) , l_EndLocation );
            wait 0.05;
        }
        // EN: When only one bullet is fired
        // JA: 弾発射数が1発だけの場合
        else
        {
            // EN: When generating a 3D model, but not during Noclip
            // JA: 3Dモデル生成中、Noclip中ではない場合
            if ( l_ModelNoclip == false )
            {
                // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , l_StartLocation , l_EndLocation );
                wait 0.05;
            }
            // EN: When 3D model is being generated and Noclip is in progress
            // JA: 3Dモデル生成中で、且つNoclip中の場合
            else
            {
                // EN: A ray is sent from the left and right bullet launch coordinates to the end coordinate, and information on hit data is obtained.
                // JA: 左右の弾丸発射座標から終了座標へ向けて、レイを飛ばし、ヒットしたデータの情報を取得する
                l_BulletLeft = scripts\engine\trace::_Bullet_Trace( l_BulletStart["Left"] , l_BulletEnd["Left"] , 0 , undefined );
                l_BulletRight = scripts\engine\trace::_Bullet_Trace( l_BulletStart["Right"] , l_BulletEnd["Right"] , 0 , undefined );
                
                // EN: If you are not shooting the bullet on the left side
                // JA: 左側の弾を撃っていない場合
                if ( !IsDefined( self.optStat[optName].modData["NoclipBulletLefted"] ) )
                {
                    // EN: If coordinate information has been obtained
                    // JA: 座標情報が取得できている場合
                    if ( IsDefined( l_BulletLeft["position"] ) )
                    {
                        // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , l_BulletStart["Left"] , l_BulletLeft["position"] );
                        
                        // EN: Suppose you shoot the bullet on the left.
                        // JA: 左側の弾を撃ったとする
                        self.optStat[optName].modData["NoclipBulletLefted"] = true;
                        wait 0.1;
                    }
                }
                // EN: After shooting the bullet on the left
                // JA: 左側の弾を撃った後の場合
                else
                {
                    // EN: If coordinate information has been obtained
                    // JA: 座標情報が取得できている場合
                    if ( IsDefined( l_BulletRight["position"] ) )
                    {
                        // EN: Generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // JA: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        CreateMagicBullet( self , self.optStat[optName].modData["BulletType"] , l_BulletStart["Right"] , l_BulletRight["position"] );
                        
                        // EN: Suppose you shoot the bullet on the right.
                        // JA: 右側の弾を撃ったとする
                        self.optStat[optName].modData["NoclipBulletLefted"] = undefined;
                        wait 0.1;
                    }
                }
            }
        }

    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN : Finish the general animation process that is executed when a special missile is launched.
        // JA : 特殊なミサイルが発射された時に実行する汎用アニメーション処理を終了する
        self Notify( "finalize_" + optName );
    }
}



//++++++++++++++++++++++++++++++
// EN : Call the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」を呼び出す
//++++++++++++++++++++++++++++++
OnfKamikazeBomber( )
{
    // EN : Execute ExecKamikazeBomber( ) or exit depending on the existence state of the "KamikazeBomber" variable
    // JA : 「KamikazeBomber」変数の存在状態に合わせて、ExecKamikazeBomber( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                           "KamikazeBomber" ,
        /* optFunc */                           ::WaitFireBullets ,
        /* message */                           "PleaseShooting" ,
        /* optArg1 */   /* optName1 */          "KamikazeBomber" ,
        /* optArg2 */   /* optName2 */          undefined ,
        /* optArg3 */   /* optFunc */           ::ExecKamikazeBomber ,
        /* optArg4 */   /* notice */            true ,
        /* optArg5 */   /* specificWeapon */    true ,
        /* optArg6 */   /* effectData */        "equipment_sparks" ,
        /* optArg7 */   /* endDeath */          true ,
        /* weaponID */                          "Random" ,
        /* inProjectile */                      undefined ,
        /* onlyGroup */                         undefined ,
        /* attachmentID */                      "Random" ,
        /* camoID */                            "Random"
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」の実行中の処理
//++++++++++++++++++++++++++++++
ExecKamikazeBomber( endLocation )
{
    // EN : This function ends processing when "the match is over"
    // JA : この関数は「試合が終了した」場合に処理を終了する
    level Endon( "game_ended" );


    // EN : Define the initial model of the object to be generated
    // JA : 生成するオブジェクトの初期モデルを定義する
    if ( !IsDefined( self.optStat["KamikazeBomber"].modData["ChangeKamikazeBomberModel"] ) ) { self.optStat["KamikazeBomber"].modData["ChangeKamikazeBomberModel"] = "veh8_mil_air_acharlie130"; }
    l_OptRandom     = self.optStat["KamikazeBomber"].modData["ChangeKamikazeBomberRandom"];
    l_OptObjName    = self.optStat["KamikazeBomber"].modData["ChangeKamikazeBomberModel"];
    // EN : Define the initial loop sound of the object to be generated
    // JA : 生成するオブジェクトの初期ループサウンドを定義する
    l_OptLoopSound  = "iw8_cruise_missile_plr";
    // EN : Define the initial loop effect (smoke) for the generated object
    // JA : 生成するオブジェクトの初期ループエフェクト（煙）を定義する
    l_OptSmokeFx    = "juggernaut_crate_vfx";
    l_OptExplodeFx  = self.optStat["KamikazeBomber"].modData["KamikazeLoopExplodeFX"];
    l_OptSpin       = self.optStat["KamikazeBomber"].modData["ChangeKamikazeBomberSpinning"];
    // EN : Define the initial effect (explode 1) for the generated object
    // JA : 生成するオブジェクトの初期エフェクト（爆発 1）を定義する
    l_OptFinExpFx1  = "large_transport_explode";
    // EN : Define the initial effect (explode 2) for the generated object
    // JA : 生成するオブジェクトの初期エフェクト（爆発 2）を定義する
    l_OptFinExpFx2  = "white_phosphorus_inair_explosion";

    // EN : Get Kamikaze bomber generation start position randomly
    // JA : Kamikaze bomberの生成開始位置をランダムで取得する
    l_StartLocation = endLocation + ( RandomIntRange( -30000 , 30000 ) , RandomIntRange( -30000 , 25000 ) , RandomIntRange( 15000 , 30000 ) );
    
    // EN : If Kamikaze bomber random settings are enabled
    // JA : Kamikaze bomberのランダム設定が有効になっている場合
    if ( IsDefined( l_OptRandom ) )
    {
        // EN : Randomize the 3D model of Kamikaze bomber
        // JA : Kamikaze bomberの3Dモデルをランダムに設定する
        self ChangeKamikazeBomberModel( undefined , true );
    }

    // EN : Obtain the angle of the impact coordinate facing the front.
    // JA : 着弾座標を正面に向けたアングルを取得する
    l_Angles = VectorToAngles( endLocation - l_StartLocation );

    // EN : Create an 3D model at the generation start position
    // JA : 生成開始位置に3Dモデルを作成する
    l_Kamikaze = self CreateEntityObject(
        /* notice */        undefined ,
        /* spawnLocation */ l_StartLocation ,
        /* spawnLength */   undefined ,
        /* objectName */    l_OptObjName ,
        /* objectCollide */ true ,
        /* angleSync */     undefined ,
        /* objectAngle */   l_Angles ,
        /* part */          true
        );
    // EN : Generate an object for the kill camera, but do not set model data because you want it to be transparent.
    // JA : キルカメラ用のオブジェクトを生成するが、透明にしたいためモデルデータは設定しない
    l_Killcam = self CreateEntityObject( /* notice */ undefined , /* spawnLocation */ l_Kamikaze GetTagOrigin( "tag_origin" ) , /* spawnLength */ undefined , /* objectName */ "script_model" );
    // EN : Make it follow the specified coordinates of Kamikaze bomber
    // JA : Kamikaze bomberの指定座標に追従するようにする
    l_Killcam LinkTo( l_Kamikaze , "tag_origin" , ( -1500 , 0 , 275 ) , ( 0 , 0 , 0 ) );
    // EN : The kill camera when Kamikaze bomber kills an opponent becomes a kill camera object.
    // JA : Kamikaze bomberが相手を殺した時のキルカメラを、キルカメラ用オブジェクトにする
    l_Kamikaze.killcament = l_Killcam;
    
    // EN : Make Kamikaze bomber play flight sound on loop
    // JA : Kamikaze bomberがループで飛行サウンドを再生するようにする
    l_Kamikaze PlayLoopSound( l_OptLoopSound );
    
    // EN : Kamikaze bomber plays the crash effect in a loop in a subthread.
    // JA : Kamikaze bomberがループで墜落エフェクトを再生する処理を、サブスレッドで実行する
    l_Kamikaze thread PlayEffectToObject( /* time */ 0.01 , /* obj */ l_Kamikaze , /* fx */ l_OptSmokeFx    , /* tag */ "tag_engine_right"  , /* type */ "GetTag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    l_Kamikaze thread PlayEffectToObject( /* time */ 0.01 , /* obj */ l_Kamikaze , /* fx */ l_OptExplodeFx  , /* tag */ "tag_engine_reft"   , /* type */ "GetTag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.15;

    // EN : Move the Kamikaze bomber to the crash destination coordinates in 3.5 seconds
    // JA : Kamikaze bomberを墜落先の座標に3.5秒で移動させる
    l_Kamikaze MoveTo( endLocation , 3.5 );
    
    // EN : If Kamikaze bomber random settings are enabled
    // JA : Kamikaze bomberのランダム設定が有効になっている場合
    if ( IsDefined( l_OptRandom ) )
    {
        // EN : Randomly decide whether to rotate
        // JA : 回転させるかどうかをランダムに決める
        if ( scripts\engine\utility::Cointoss( ) )
        {
            // EN : To rotate to the left, rotate to an angle of "-360 degrees x 5" in 3.5 seconds.
            // JA : 左回転させる場合、「-360度 x 5」の角度に、3.5秒かけて回転させる
            if ( scripts\engine\utility::Cointoss( ) )  { l_Kamikaze RotateRoll( (-360 * 5) , 3.5 ); }
            // EN : To rotate clockwise, rotate to an angle of 360 degrees x 5 in 3.5 seconds.
            // JA : 右回転させる場合、「360度 x 5」の角度に、3.5秒かけて回転させる
            else                                        { l_Kamikaze RotateRoll( (360 * 5) , 3.5 ); }
        }
    }
    // EN : If Kamikaze bomber random setting is disabled
    // JA : Kamikaze bomberのランダム設定が無効の場合
    else
    {
        // EN : If Kamikaze bomber spin setting is enabled
        // JA : Kamikaze bomberのスピン設定が有効の場合
        if ( IsDefined( l_OptSpin ) )
        {
            // EN : Rotate the Kamikaze bomber to an angle of 360 degrees x 5 in 3.5 seconds.
            // JA : Kamikaze bomberを「360度 x 5」の角度に、3.5秒かけて回転させる
            l_Kamikaze RotateRoll( (360 * 5) , 3.5 );
        }
    }
    
    // EN : Wait until just before the bullet hits
    // JA : 着弾直前まで待機する
    wait 3.4;

    // EN : Generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
    // JA : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
    self thread ExecNuclearExplosion( endLocation , self );
    wait 0.2;

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ "little_bird_explode" , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.05;

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 0     , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx1 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 400   , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // EN : As an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // JA : 指定した座標から半径 50000 の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    l_Kamikaze RadiusDamage( endLocation , 50000 , 50000 , 50000 , self , "MOD_EXPLOSIVE" , GetBulletID( "Nuke" ) );

    // EN : Play the aircraft explosion effect at the specified coordinates.
    // JA : 指定した座標に機体爆発のエフェクトを再生させる
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 0     , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 0     , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    PlayEffectToObject( /* time */ undefined , /* obj */ undefined , /* fx */ l_OptFinExpFx2 , /* tag */ undefined , /* type */ "GetPlay" , /* loop */ undefined , /* base */ endLocation , /* fix */ ( 200   , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // EN : Stop the looping sound that Kamikaze bomber was playing
    // JA : Kamikaze bomberが再生していたループサウンドを停止する
    l_Kamikaze StopLoopSound( l_OptLoopSound );
    
    // EN : Unfollow nuclear object
    // JA : オブジェクトの追従を解除する
    l_Killcam Unlink( );
    
    // EN : Delete the created 3D object
    // JA : 作成した3Dオブジェクトを削除する
    l_Killcam Delete( );
    l_Kamikaze Delete( );
}



//++++++++++++++++++++++++++++++
// EN : Change the model rotation settings for the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のモデルの回転設定を変更する
//++++++++++++++++++++++++++++++
SwitchKamikazeBomberSpin( )
{
    self ChangeKamikazeBomberSpin( true );
}



//++++++++++++++++++++++++++++++
// EN : Change the model rotation settings for the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のモデルの回転設定を変更する
//++++++++++++++++++++++++++++++
ChangeKamikazeBomberSpin( notice )
{
    self SwitchOnfSelfSubFunction(
        /* optName1 */  "KamikazeBomber" ,
        /* optName2 */  "ChangeKamikazeBomberSpinning" ,
        /* optData */   true ,
        /* optFunc */   undefined ,
        /* notice */    notice
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the random settings of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のランダム設定を変更する
//++++++++++++++++++++++++++++++
SwitchKamikazeBomberRandom( )
{
    self ChangeKamikazeBomberRandom( true );
}



//++++++++++++++++++++++++++++++
// EN : Change the random settings of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のランダム設定を変更する
//++++++++++++++++++++++++++++++
ChangeKamikazeBomberRandom( notice )
{
    self SwitchOnfSelfSubFunction(
        /* optName1 */  "KamikazeBomber" ,
        /* optName2 */  "ChangeKamikazeBomberRandom" ,
        /* optData */   true ,
        /* optFunc */   undefined ,
        /* notice */    notice
        );
}



//++++++++++++++++++++++++++++++
// EN : Change the model type of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
SwitchKamikazeBomberModel( )
{
    self ChangeKamikazeBomberModel( true , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Change the model type of the function "Kamikaze bomber"
// JA : 機能「Kamikaze bomber」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
ChangeKamikazeBomberModel( notice , random )
{
    // EN: Define an array and perform an operation that changes the current parameter from within the array
    // JA: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_Array = GetStandardVehicleModelList( );

    self ChangeSelfParameter( "KamikazeBomber" , "ChangeKamikazeBomberModel" , undefined , ::OnfKamikazeBomber , l_Array , notice , undefined , random );
}



//++++++++++++++++++++++++++++++
// EN : Delete the last object created with the function "CreateEntityObject"
// JA : 機能 "CreateEntityObject" で作成したオブジェクトの内、最後のオブジェクトを削除する
//++++++++++++++++++++++++++++++
ExecDeleteLastObject( )
{
    l_OptName1 = "DeleteLastObject";
    l_OptName2 = "_ObjectCount";

    if ( IsDefined( level.lvlStat[l_OptName1 + l_OptName2] ) )
    {
        if ( 0 <= level.lvlStat[l_OptName1 + l_OptName2].size )
        {
            level.lvlStat[l_OptName1 + l_OptName2][( level.lvlStat[l_OptName1 + l_OptName2].size - 1 )] Delete( );
            level.lvlStat[l_OptName1 + l_OptName2][( level.lvlStat[l_OptName1 + l_OptName2].size - 1 )] = undefined;
            
            // EN: Display the text "[Notification] Delete Object: object name" in the center of the screen
            // JA: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
            self ShowCenterMessage( self.curLang , "Notice" , l_OptName1 , undefined , ( level.lvlStat[l_OptName1 + l_OptName2].size - 1 ) , undefined );
        }
    }
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

    // EN : Get the vehicle ID from the currently selected item
    // JA : 現在選択中の項目から、車両IDを取得する
    l_VehicleName = level.modMenuData[self.modSystem.menuLayerCurrent].item[self.modSystem.menuOptionCurrent].textID;

    if ( !IsDefined( level.modMenuData[self.modSystem.menuLayerCurrent].item[self.modSystem.menuOptionCurrent].subParam ) )
    {
        l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::Vehicle_Spawn_SpawnVehicle( l_VehicleName , l_SpawnData );
    }
    else
    {
        l_SpawnVec = scripts\cp_mp\vehicles\vehicle_spawn::Vehicle_Spawn_SpawnVehicle( "little_bird" , l_SpawnData );
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
    }

    // EN: Display the specified text in the center of the screen
    // JA: 画面中央に指定の文章を表示する
    self ShowCenterMessage( self.curLang , "Notice" , "CreateObject" , undefined , l_VehicleName , undefined );
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "JetPack"
// JA : 機能 "JetPack" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfJetPack( )
{
    // EN : Execute ExecJetPack( ) or exit depending on the existence state of the "JetPack" variable
    // JA : "JetPack" 変数の存在状態に合わせて ExecJetPack( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "JetPack" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "JetPack" ,
        /* optArg2 */   /* optFunc */   ::ExecJetPack ,
        /* optArg3 */   /* loopTime */  0.1
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "JetPack"
// JA : 機能 "JetPack" の実行中の処理
//++++++++++++++++++++++++++++++
ExecJetPack( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        self Attach( "wmd_vm_missile_cruise" , "tag_stowed_back3" );
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: When the "Jump" button is pressed
        // JA: 「ジャンプ」ボタンが押されたら
        if ( self GetKeycodePressed( "Jump" , "Jump" ) )
        {
            // EN : Play a sound effect starting from the specified coordinates
            // JA : 指定した座標を起点に、サウンドエフェクトを再生させる
            PlaySoundAtPos( self.origin , "ks_a10_fire_dist_crack" );
            // EN : Play the effect starting from the specified coordinates
            // JA : 指定した座標を起点に、エフェクトを再生させる
            PlayEffectToObject( /* time */ undefined , /* obj */ self , /* fx */ "hoopty_explode" , /* tag */ "j_ankle_ri" , /* type */ "GetPlay" , /* loop */ undefined , /* base */ self.origin , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            PlayEffectToObject( /* time */ undefined , /* obj */ self , /* fx */ "hoopty_explode" , /* tag */ "j_ankle_le" , /* type */ "GetPlay" , /* loop */ undefined , /* base */ self.origin , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            // EN : Causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // JA : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            Earthquake( 0.15 , 0.2 , self GetTagOrigin( "j_spine4" ) , 300 );
            // EN : Move the angular velocity directly upwards
            // JA : 角速度を真上に向けて移動させる
            self SetVelocity( self GetVelocity( ) + ( 0 , 0 , 100 ) );
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        self Detach( "wmd_vm_missile_cruise" , "tag_stowed_back3" );
    }
}



//++++++++++++++++++++++++++++++
// EN : Switch the enable/disable state of the function "WalkingAC130"
// JA : 機能 "WalkingAC130" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
OnfWalkingAC130( )
{
    // EN : Execute ExecWalkingAC130( ) or exit depending on the existence state of the "WalkingAC130" variable
    // JA : "WalkingAC130" 変数の存在状態に合わせて ExecWalkingAC130( ) を実行するか終了する
    self SwitchOnfSelfFunction(
        /* optName */                   "WalkingAC130" ,
        /* optFunc */                   ::ExecLoopFunction ,
        /* message */                   undefined ,
        /* optArg1 */   /* optName */   "WalkingAC130" ,
        /* optArg2 */   /* optFunc */   ::ExecWalkingAC130 ,
        /* optArg3 */   /* loopTime */  0.05 ,
        /* optArg4 */                   undefined ,
        /* optArg5 */                   undefined ,
        /* optArg6 */                   undefined ,
        /* optArg7 */                   undefined ,
        /* weaponID */                  GetBulletID( "AC130_25mm" )
        );
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "WalkingAC130"
// JA : 機能 "WalkingAC130" の実行中の処理
//++++++++++++++++++++++++++++++
ExecWalkingAC130( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {
        // EN : give specified weapon
        // JA : 指定の武器を与える
        self thread ProvideWeapon( GetBulletID( "AC130_40mm" ) );
        self thread ProvideWeapon( GetBulletID( "AC130_105mm" ) );

        // EN : Executes general animation processing on a subthread when a special missile is launched.
        // JA : 特殊なミサイルが発射された時に実行する汎用アニメーション処理をサブスレッド上で実行する
        self thread OnWaitingFiredMissile( optName );
        // EN : Set the HUD to AC130 specifications
        // JA : HUDをAC130仕様にする
        /*
        self VisionSetKillstreakForPlayer( "ac130_color" );
        self SetClientOMNvar( "ui_ac130_hud" , 1 );
        self SetClientOMNvar( "ui_killstreak_weapon_1_ammo", self GetWeaponAmmoClip( "ac130_105mm_mp" ) );
        self SetClientOMNvar( "ui_killstreak_weapon_2_ammo", self GetWeaponAmmoClip( "ac130_40mm_mp" ) );
        self SetClientOMNvar( "ui_killstreak_weapon_3_ammo", self GetWeaponAmmoClip( "ac130_25mm_mp" ) );
        self SetClientOMNvar( "ui_killstreak_countdown" , GetTime( ) + Int( self.timeout * 1000 ) );
        self SetClientOMNvar( "ui_killstreak_health" , self.maxhealth );
        self SetClientOMNvar( "ui_killstreak_flares" , 2 );
        */
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: Get information about the weapon you currently have
        // JA: 今持っている武器の情報を取得
        l_CurrentWeapon = self GetCurrentWeapon( );
        // EN: Change processing depending on weapon type
        // JA: 武器種類によって処理を変更する
        switch ( l_CurrentWeapon.basename )
        {
            case "ac130_105mm_mp":
            case "ac130_40mm_mp":
            case "ac130_25mm_mp":
                // EN: Set the number of remaining bullets to the maximum number of bullets for that weapon.
                // JA: 残弾数をその武器の最大弾数にする
                self SetWeaponAmmoStock( l_CurrentWeapon , WeaponMaxAmmo( l_CurrentWeapon ) );
                // EN: Set the number of bullets to the maximum number of bullets for that weapon.
                // JA: 装弾数をその武器の最大弾数にする
                self SetWeaponAmmoClip( l_CurrentWeapon , l_CurrentWeapon.clipSize );
                break;
        }
        
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        // EN: Pick up the target's weapon
        // JA: 持っている対象の武器を取り上げる
        self ConfigureWeapon( /* weaponData */ GetBulletID( "AC130_40mm" ) , /* takeHand */ true );
        self ConfigureWeapon( /* weaponData */ GetBulletID( "AC130_105mm" ) , /* takeHand */ true );

        // EN : Restore HUD to default
        // JA : HUDをデフォルトに戻す
        /*
        self SetClientOMNvar( "ui_ac130_hud" , 0 );
        self VisionSetKillstreakForPlayer( "" );
        self scripts\cp_mp\utility\killstreak_utility::Killstreak_RestoreNvgState( );
        */
        // EN : Finish the general animation process that is executed when a special missile is launched.
        // JA : 特殊なミサイルが発射された時に実行する汎用アニメーション処理を終了する
        self Notify( "finalize_" + optName );
        self.optStat[optName] = undefined;
    }
}



//++++++++++++++++++++++++++++++
// EN : Adds the specified mod menu layer
// JA : 指定したモッドメニューレイヤーを追加する
//++++++++++++++++++++++++++++++
AddModMenuLayer( textID , auth , layer , update , jumpPage )
{
    if ( !IsDefined( level.modMenuData[layer] ) )
    {
        level.modMenuData[layer]                                                        = SpawnStruct( );
    }
    if ( !IsDefined( level.modMenuData[layer].item ) )
    {
        level.modMenuData[layer].item                                                   = [];
    }
    if ( !IsDefined( level.modMenuData[layer].item[level.modMenuData[layer].item.size] ) )
    {
        level.modMenuData[layer].item[level.modMenuData[layer].item.size]               = SpawnStruct( );
    }

    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].textID    = textID;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].update    = update;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].auth      = auth;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].jumpPage  = jumpPage;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].function  = ::ModMenuOpenSubMenu;
}



//++++++++++++++++++++++++++++++
// EN : Add item to specified mod menu layer
// JA : 指定したモッドメニューレイヤーに項目を追加する
//++++++++++++++++++++++++++++++
AddModMenuItem( textID , subParam , area , layer , update , func , auth )
{
    if ( !IsDefined( level.modMenuData[layer] ) )
    {
        level.modMenuData[layer]                                                        = SpawnStruct( );
    }
    if ( !IsDefined( level.modMenuData[layer].item ) )
    {
        level.modMenuData[layer].item                                                   = [];
    }
    if ( !IsDefined( level.modMenuData[layer].item[level.modMenuData[layer].item.size] ) )
    {
        level.modMenuData[layer].item[level.modMenuData[layer].item.size]               = SpawnStruct( );
    }
    
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].textID    = textID;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].update    = update;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].area      = area;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].subParam  = subParam;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].function  = func;
    level.modMenuData[layer].item[( level.modMenuData[layer].item.size - 1 )].auth      = auth;
}



//++++++++++++++++++++++++++++++
// EN : Returns the corresponding translated text from the "current language", "current menu hierarchy", and "currently selected item index"
// JA : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
GetModMenuText( selfLang , selfLayer , selfOption )
{
    if ( IsDefined( level.modMenuData[selfLayer] ) )
    {
        if ( IsDefined( level.modMenuData[selfLayer].item[selfOption] ) )
        {
            if ( IsDefined( level.modMenuData[selfLayer].item[selfOption].textID ) )
            {
                return GetMultilingualText( selfLang , level.modMenuData[selfLayer].item[selfOption].textID );
            }
        }
    }
    return "<TEXT_UNDEFINED>";
}



//++++++++++++++++++++++++++++++
// EN : Obtain the enabled/disabled status of the item from the "current language", "current menu hierarchy" and "currently selected item index"
// JA : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、その項目の有効・無効状態を取得する
//++++++++++++++++++++++++++++++
GetOptionStatus( selfLang , selfLayer , selfOption )
{
    // EN: If the currently open menu level is the player refer menu
    // JA: 今開いているメニュー階層がプレイヤー参照メニューの場合
    if ( selfLayer == level.MODDEF.LY_PLAYERSREF )                              { return " "; }

    if ( !IsDefined( level.modMenuData[selfLayer] ) )                           { return "<ERROR_GetOptStat_NoLayer>"; }
    if ( !IsDefined( level.modMenuData[selfLayer].item[selfOption] ) )          { return "<ERROR_GetOptStat_NoItem>"; }
    if ( !IsDefined( level.modMenuData[selfLayer].item[selfOption].update ) )   { return "<ERROR_GetOptStat_NoUpdate>"; }

    l_Update    = level.modMenuData[selfLayer].item[selfOption].update;

    if      ( l_Update == level.MODDEF.MOD_NOTONF )                             { return ""; }
    else if ( l_Update == level.MODDEF.MOD_REFLESH )                            { return " "; }
    else if ( l_Update == level.MODDEF.AR_SUBMENU )                             { return "  "; }
    else if ( ( l_Update == level.MODDEF.MOD_ENABLED ) ||
            ( l_Update == level.MODDEF.MOD_FASTREFLESH ) )
    {
        l_Area      = level.modMenuData[selfLayer].item[selfOption].area;
        l_TextID    = level.modMenuData[selfLayer].item[selfOption].textID;
        l_SubParam  = level.modMenuData[selfLayer].item[selfOption].subParam;

        if ( l_Area == level.MODDEF.AR_SELF )
        {
            if ( IsDefined( l_SubParam ) )
            {
                if ( IsDefined( self.optStat[l_SubParam].modData[l_TextID] ) )
                {
                    return " " + GetMultilingualText( selfLang , "Enabled" );
                }
            }
            else
            {
                if ( IsDefined( self.optStat[l_TextID] ) )
                {
                    return " " + GetMultilingualText( selfLang , "Enabled" );
                }
            }
        }
        else if ( l_Area == level.MODDEF.AR_CONTENT )
        {
            if ( IsDefined( l_SubParam ) )
            {
                if ( IsDefined( self.optStat[l_SubParam].modData[l_TextID] ) )
                {
                    return " : " + self.optStat[l_SubParam].modData[l_TextID];
                }
            }
            else
            {
                if ( IsDefined( self.optStat[l_TextID] ) )
                {
                    return " : " + self.optStat[l_TextID];
                }
            }
        }
        else if ( l_Area == level.MODDEF.AR_LVCONTENT )
        {
            if ( IsDefined( l_SubParam ) )
            {
                if ( IsDefined( level.lvlStat[l_SubParam].modData[l_TextID] ) )
                {
                    return " : " + level.lvlStat[l_SubParam].modData[l_TextID];
                }
            }
            else
            {
                if ( IsDefined( level.lvlStat[l_TextID] ) )
                {
                    return " : " + level.lvlStat[l_TextID];
                }
            }
        }
        else if ( l_Area == level.MODDEF.AR_LEVEL )
        {
            if ( IsDefined( l_SubParam ) )
            {
                if ( IsDefined( level.lvlStat[l_SubParam].modData[l_TextID] ) )
                {
                    return " " + GetMultilingualText( selfLang , "Enabled" );
                }
            }
            else
            {
                if ( IsDefined( level.lvlStat[l_TextID] ) )
                {
                    return " " + GetMultilingualText( selfLang , "Enabled" );
                }
            }
        }
        else if ( l_Area == level.MODDEF.AR_DVAR )
        {
            return " : " + GetDVARInt( l_SubParam );
        }
        else if ( l_Area == level.MODDEF.AR_PLAYER )
        {
            if ( IsDefined( level.players[self.modSystem.menuPlayer] ) )
            {
                if ( IsDefined( level.players[self.modSystem.menuPlayer].optStat[l_TextID] ) )
                {
                    return " " + GetMultilingualText( selfLang , "Enabled" );
                }
            }
        }
        else if ( l_Area == level.MODDEF.AR_DEVIDE )
        {
            if ( IsDefined( self.optStat[l_TextID + l_SubParam] ) )
            {
                return " : " + self.optStat[l_TextID + l_SubParam];
            }
        }
        else if ( l_Area == level.MODDEF.AR_DEVIDEVOL )
        {
            if ( IsDefined( self.optStat[l_TextID + l_SubParam] ) )
            {
                return " : " + self.optStat[l_TextID + l_SubParam].size;
            }
        }
        else if ( l_Area == level.MODDEF.AR_DEVIDELEV )
        {
            if ( IsDefined( level.lvlStat[l_TextID + l_SubParam] ) )
            {
                return " : " + level.lvlStat[l_TextID + l_SubParam].size;
            }
        }

        return " " + GetMultilingualText( selfLang , "Disabled" );
    }

    return "<ERROR_GetOptStat_NoItemArg>";
}



//++++++++++++++++++++++++++++++
// EN : Returns the function to be executed when selecting an item from the "current menu hierarchy" and "currently selected item index"
// JA : 「現在のメニュー階層」、「現在選択中の項目インデックス」から、項目決定時に実行する関数を返す
//++++++++++++++++++++++++++++++
GetOptionFunction( selfLayer , selfOption )
{
    if ( IsDefined( level.modMenuData[selfLayer] ) )
    {
        if ( IsDefined( level.modMenuData[selfLayer].item[selfOption] ) )
        {
            if ( IsDefined( level.modMenuData[selfLayer].item[selfOption].function ) )
            {
                return level.modMenuData[selfLayer].item[selfOption].function;
            }
        }
    }

    return ::EmptyFunction;
}



//++++++++++++++++++++++++++++++
// EN : Returns the maximum index of the menu from the "current menu hierarchy" and "current privilege state"
// JA : 「現在のメニュー階層」、「現在の権限状態」から、そのメニューの最大インデックスを返す
//++++++++++++++++++++++++++++++
GetLayerMaxIndex( selfLayer , selfLevel )
{
    l_Max = 0;
    
    if ( !IsDefined( level.modMenuData[selfLayer] ) )
    {
        return l_Max;
    }

    for ( i = 0; i < level.modMenuData[selfLayer].item.size; i++ )
    {
        if ( !IsDefined( level.modMenuData[selfLayer].item[i] ) )
        {
            break;
        }
        
        if ( !IsDefined( level.modMenuData[selfLayer].item[i].auth ) )
        {
            l_Max = ( level.modMenuData[selfLayer].item.size - 1 );
            break;
        }
        else
        {
            if ( level.modMenuData[selfLayer].item[i].auth <= selfLevel )
            {
                l_Max = i;
            }
            else
            {
                break;
            }
        }
    }

    return l_Max;
}



//++++++++++++++++++++++++++++++
// EN : Returns the text sentence of the corresponding permission status from "Current permission status"
// JA : 「現在の権限状態」から、該当する権限状態のテキスト文章を返す
//++++++++++++++++++++++++++++++
GetVerifiedText( verificationStatus )
{
    if (        verificationStatus == level.MODDEF.LV_UNVERIFIED )  { return "Unverified"; }
    else if (   verificationStatus == level.MODDEF.LV_COHOST )      { return "Cohost"; }
    else if (   verificationStatus == level.MODDEF.LV_HOST )        { return "Host"; }
    else                                                            { return "Unverified"; }
}



//++++++++++++++++++++++++++++++
// EN : Build a mod menu
// JA : モッドメニューを構築する
//++++++++++++++++++++++++++++++
ModMenuConstruction( )
{
    level.modMenuData = []; 

    AddModMenuLayer(    "LanguagesMenu"                                                                         , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_LANGUAGES );
        AddModMenuItem( "Lang_EN"                                   , undefined                                 , undefined                 , level.MODDEF.LY_LANGUAGES         , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "This mod menu is ^5demo version"           , undefined                                 , undefined                 , level.MODDEF.LY_LANGUAGES         , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "Full mod menu ^2200KB over & in unique mods" , undefined                                 , undefined                 , level.MODDEF.LY_LANGUAGES         , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "Who wants the ^1full version"              , undefined                                 , undefined                 , level.MODDEF.LY_LANGUAGES         , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "Discord ID : ^6hinatapoko"                 , undefined                                 , undefined                 , level.MODDEF.LY_LANGUAGES         , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );

    AddModMenuLayer(    "CombatAssistMenu"                                                                      , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_COMBATASSIST );
        AddModMenuItem( "ThirdPerson"                               , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_COMBATASSIST      , level.MODDEF.MOD_ENABLED      , ::OnfThirdPerson );
        AddModMenuItem( "Suicide"                                   , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_COMBATASSIST      , level.MODDEF.MOD_ENABLED      , ::ExecSuicide );

    AddModMenuLayer(    "FunnyMenu"                                                                             , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_FUNNY );
        AddModMenuItem( "NinjaMode"                                 , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_FUNNY             , level.MODDEF.MOD_ENABLED      , ::OnfNinjaMode );
        AddModMenuItem( "JetPack"                                   , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_FUNNY             , level.MODDEF.MOD_ENABLED      , ::OnfJetPack );
        AddModMenuItem( "DiscoCamo"                                 , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_FUNNY             , level.MODDEF.MOD_ENABLED      , ::OnfDiscoCamo );

    AddModMenuLayer(    "ModelsMenu"                                                                            , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_MODELS );
        AddModMenuItem( "SetModel"                                  , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_MODELS            , level.MODDEF.MOD_ENABLED      , ::OnfSetModel );
        AddModMenuItem( "ChangeModel"                               , "_ObjectID"                               , level.MODDEF.AR_DEVIDE    , level.MODDEF.LY_MODELS            , level.MODDEF.MOD_ENABLED      , ::SwitchChangeModel );
        AddModMenuItem( "---"                                       , undefined                                 , undefined                 , level.MODDEF.LY_MODELS            , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
    if ( IsDefined( level.lvlStat["ModelListPackages"] ) && ( 0 < level.lvlStat["ModelListPackages"].size ) )
    {
        AddModMenuLayer(    "PackageModels"                                                                     , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_PACKAGE_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListPackages"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListPackages"][i]   , undefined                                 , undefined                 , level.MODDEF.LY_PACKAGE_MODELS    , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }
    if ( IsDefined( level.lvlStat["ModelListFlags"] ) && ( 0 < level.lvlStat["ModelListFlags"].size ) )
    {
        AddModMenuLayer(    "FlagModels"                                                                        , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_FLAG_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListFlags"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListFlags"][i]      , undefined                                 , undefined                 , level.MODDEF.LY_FLAG_MODELS       , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }
    if ( IsDefined( level.lvlStat["ModelListDogTags"] ) && ( 0 < level.lvlStat["ModelListDogTags"].size ) )
    {
        AddModMenuLayer(    "DogTagModels"                                                                      , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_DOGTAG_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListDogTags"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListDogTags"][i]    , undefined                                 , undefined                 , level.MODDEF.LY_DOGTAG_MODELS     , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }
    if ( IsDefined( level.lvlStat["ModelListVehicles"] ) && ( 0 < level.lvlStat["ModelListVehicles"].size ) )
    {
        AddModMenuLayer(    "VehiclesModels"                                                                    , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_VEHICLE_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListVehicles"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListVehicles"][i]   , undefined                                , undefined                 , level.MODDEF.LY_VEHICLE_MODELS    , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }
    if ( IsDefined( level.lvlStat["ModelListProps"] ) && ( 0 < level.lvlStat["ModelListProps"].size ) )
    {
        AddModMenuLayer(    "PropModels"                                                                        , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_PROP_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListProps"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListProps"][i]      , undefined                                 , undefined                 , level.MODDEF.LY_PROP_MODELS       , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }
    if ( IsDefined( level.lvlStat["ModelListMaps"] ) && ( 0 < level.lvlStat["ModelListMaps"].size ) )
    {
        AddModMenuLayer(    "MapModels"                                                                         , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_MODELS            , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_MAP_MODELS );
        for ( i = 0; i < level.lvlStat["ModelListMaps"].size; i++ )
        {
            AddModMenuItem( level.lvlStat["ModelListMaps"][i]       , undefined                                 , undefined                 , level.MODDEF.LY_MAP_MODELS        , level.MODDEF.MOD_NOTONF       , ::ExecChangeModel );
        }
    }

    AddModMenuLayer(    "WeaponsMenu"                                                                           , level.MODDEF.LV_VERIFIED  , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_WEAPONS );
        AddModMenuItem( "RandomCamo"                                , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_ENABLED      , ::OnfRandomCamo );
        AddModMenuItem( "RandomAttachment"                          , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_ENABLED      , ::OnfRandomAttachment );
        AddModMenuItem( "DualWeapon"                                , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_ENABLED      , ::OnfDualWeapon );
        AddModMenuItem( "GiveRandomWeapon"                          , undefined                                 , undefined                 , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_NOTONF       , ::ExecGiveRandomWeapon );
        AddModMenuItem( "DropWeapon"                                , undefined                                 , undefined                 , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_NOTONF       , ::ExecDropWeapon );
        AddModMenuItem( "TakedWeapon"                               , undefined                                 , undefined                 , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_NOTONF       , ::ExecTakedWeapon );
        AddModMenuItem( "TakedAllWeapons"                           , undefined                                 , undefined                 , level.MODDEF.LY_WEAPONS           , level.MODDEF.MOD_NOTONF       , ::ExecTakedAllWeapons );

    AddModMenuLayer(    "CustomWeaponsMenu"                                                                     , level.MODDEF.LV_VIP       , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_CUSTOMWEAPONS );
        AddModMenuItem( "RocketRide"                                , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMWEAPONS     , level.MODDEF.MOD_ENABLED      , ::OnfRocketRide );
        AddModMenuItem( "WalkingAC130"                              , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMWEAPONS     , level.MODDEF.MOD_ENABLED      , ::OnfWalkingAC130 );
        AddModMenuItem( "RealCarepackageGun"                        , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMWEAPONS     , level.MODDEF.MOD_ENABLED      , ::OnfRealCarepackageGun );

    AddModMenuLayer(    "BulletsMenu"                                                                           , level.MODDEF.LV_VIP       , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_BULLETS );
        AddModMenuItem( "ModdedBullets"                             , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_BULLETS           , level.MODDEF.MOD_ENABLED      , ::OnfModdedBullets );
        AddModMenuItem( "BulletType"                                , "ModdedBullets"                           , level.MODDEF.AR_CONTENT   , level.MODDEF.LY_BULLETS           , level.MODDEF.MOD_ENABLED      , ::SwitchBulletsType );
        AddModMenuItem( "ModdedBulletsFireTrigger"                  , "ModdedBullets"                           , level.MODDEF.AR_SELF      , level.MODDEF.LY_BULLETS           , level.MODDEF.MOD_ENABLED      , ::OnfModdedBulletsFireTrigger );
        AddModMenuItem( "ModdedBulletsNum5"                         , "ModdedBullets"                           , level.MODDEF.AR_SELF      , level.MODDEF.LY_BULLETS           , level.MODDEF.MOD_ENABLED      , ::OnfModdedBulletsNum5 );

    AddModMenuLayer(    "PopularMenu"                                                                           , level.MODDEF.LV_VIP       , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_POPULAR );
        AddModMenuItem( "InfinityAmmo"                              , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_POPULAR           , level.MODDEF.MOD_ENABLED      , ::OnfInfinityAmmo );
        AddModMenuItem( "BindNoclip"                                , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_POPULAR           , level.MODDEF.MOD_ENABLED      , ::OnfBindNoclip );
        AddModMenuItem( "BindNoclipDiscription"                     , undefined                                 , undefined                 , level.MODDEF.LY_POPULAR           , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "Invisible"                                 , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_POPULAR           , level.MODDEF.MOD_ENABLED      , ::OnfInvisible );

    AddModMenuLayer(    "CustomKillstreaksMenu"                                                                 , level.MODDEF.LV_VIP       , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_CUSTOMKILLSTREAKS );
        AddModMenuItem( "KamikazeBomber"                            , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMKILLSTREAKS , level.MODDEF.MOD_ENABLED      , ::OnfKamikazeBomber );
        AddModMenuItem( "ChangeKamikazeBomberModel"                 , "KamikazeBomber"                          , level.MODDEF.AR_CONTENT   , level.MODDEF.LY_CUSTOMKILLSTREAKS , level.MODDEF.MOD_ENABLED      , ::SwitchKamikazeBomberModel );
        AddModMenuItem( "ChangeKamikazeBomberSpinning"              , "KamikazeBomber"                          , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMKILLSTREAKS , level.MODDEF.MOD_ENABLED      , ::SwitchKamikazeBomberSpin );
        AddModMenuItem( "ChangeKamikazeBomberRandom"                , "KamikazeBomber"                          , level.MODDEF.AR_SELF      , level.MODDEF.LY_CUSTOMKILLSTREAKS , level.MODDEF.MOD_ENABLED      , ::SwitchKamikazeBomberRandom );

    AddModMenuLayer(    "PoweredMenu"                                                                           , level.MODDEF.LV_ADMIN     , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_POWERED );
        AddModMenuItem( "Godmode"                                   , undefined                                 , level.MODDEF.AR_SELF      , level.MODDEF.LY_POWERED           , level.MODDEF.MOD_ENABLED      , ::OnfGodmode );

    AddModMenuLayer(    "VehiclesMenu"                                                                          , level.MODDEF.LV_ADMIN     , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_VEHICLES );
    AddModMenuLayer(    "SpawnVehicles"                                                                         , level.MODDEF.LV_ADMIN     , level.MODDEF.LY_VEHICLES          , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_DEFVEHICLES );
        AddModMenuItem( "atv"                                       , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "little_bird"                               , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "---"                                       , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "apc_russian"                               , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "cop_car"                                   , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "technical"                                 , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "large_transport"                           , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "light_tank"                                , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "cargo_truck"                               , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "hoopty"                                    , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "hoopty_truck"                              , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "jeep"                                      , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "medium_transport"                          , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "pickup_truck"                              , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "tac_rover"                                 , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
        AddModMenuItem( "van"                                       , undefined                                 , undefined                 , level.MODDEF.LY_DEFVEHICLES       , level.MODDEF.MOD_NOTONF       , ::ExecSpawnVehicle );
    
    AddModMenuLayer(    "GameSettingsMenu"                                                                      , level.MODDEF.LV_COHOST    , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_GAMESETTINGS );
        AddModMenuItem( "ForceRespawnPoint"                         , undefined                                 , level.MODDEF.AR_LEVEL     , level.MODDEF.LY_GAMESETTINGS      , level.MODDEF.MOD_ENABLED      , ::OnfForceRespawnPoint );
        AddModMenuItem( "DeleteLastObject"                          , "_ObjectCount"                            , level.MODDEF.AR_DEVIDELEV , level.MODDEF.LY_GAMESETTINGS      , level.MODDEF.MOD_FASTREFLESH  , ::ExecDeleteLastObject );
        AddModMenuItem( "FastRestrat"                               , undefined                                 , undefined                 , level.MODDEF.LY_GAMESETTINGS      , level.MODDEF.MOD_NOTONF       , ::ExecFastRestrat );
        AddModMenuItem( "PauseTimer"                                , undefined                                 , level.MODDEF.AR_LEVEL     , level.MODDEF.LY_GAMESETTINGS      , level.MODDEF.MOD_ENABLED      , ::OnfPauseTimer );

    AddModMenuLayer(    "PlayersMenu"                                                                           , level.MODDEF.LV_COHOST    , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_PLAYERSREF );
        AddModMenuItem( "SetUnverified"                             , undefined                                 , undefined                 , level.MODDEF.LY_PLAYERSMOD        , level.MODDEF.MOD_REFLESH      , ::RemoveAuthUnverified );
        AddModMenuItem( "SetCoHost"                                 , undefined                                 , undefined                 , level.MODDEF.LY_PLAYERSMOD        , level.MODDEF.MOD_REFLESH      , ::GiveAuthCohost );
        AddModMenuItem( "---"                                       , undefined                                 , undefined                 , level.MODDEF.LY_PLAYERSMOD        , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "TeleportToMe"                              , undefined                                 , undefined                 , level.MODDEF.LY_PLAYERSMOD        , level.MODDEF.MOD_NOTONF       , ::ExecTeleportToMeSingle );
        AddModMenuItem( "TeleportToHim"                             , undefined                                 , undefined                 , level.MODDEF.LY_PLAYERSMOD        , level.MODDEF.MOD_NOTONF       , ::ExecTeleportToHimSingle );

    AddModMenuLayer(    "AllPlayersMenu"                                                                        , level.MODDEF.LV_HOST      , level.MODDEF.LY_ROOT              , level.MODDEF.AR_SUBMENU       , level.MODDEF.LY_ALLPLAYERS );
        AddModMenuItem( "SetUnverified"                             , undefined                                 , undefined                 , level.MODDEF.LY_ALLPLAYERS        , level.MODDEF.MOD_NOTONF       , ::RemoveAuthUnverifiedForALLPlayers );
        AddModMenuItem( "SetCoHost"                                 , undefined                                 , undefined                 , level.MODDEF.LY_ALLPLAYERS        , level.MODDEF.MOD_NOTONF       , ::GiveAuthCohostForALLPlayers );
        AddModMenuItem( "---"                                       , undefined                                 , undefined                 , level.MODDEF.LY_ALLPLAYERS        , level.MODDEF.MOD_NOTONF       , ::EmptyFunction );
        AddModMenuItem( "TeleportToMe"                              , undefined                                 , undefined                 , level.MODDEF.LY_ALLPLAYERS        , level.MODDEF.MOD_NOTONF       , ::ExecTeleportToMeForALLPlayers );
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
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7Project ^5H^7iN^1A^7tyu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7プロジェクト ^5ひ^7な^1ち^7ゅ"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^5H^7iN^1A^7tyu ^7計畫"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7проект ^5огонь^1На^7Чуу"; }
            break;

        case "Enabled":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^2Enabled^7] "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^2有効化^7] "; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^2激活^7] "; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^2активация^7] "; }
            break;

        case "Disabled":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^1Disabled^7] "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^1無効化^7] "; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^1无效^7] "; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^1Аннулирование^7] "; }
            break;

        case "Notice":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^3Notice^7] "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^3通知^7] "; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^3通知^7] "; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^3уведомление^7] "; }
            break;

        case "Warning":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^6Warning^7] "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^6警告^7] "; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^6警告^7] "; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^6Предупреждение^7] "; }
            break;

        case "NotFuncExec":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Function not executed"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "機能が未実行です"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "函数未执行"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Функция не выполнена"; }
            break;

        case "UnimplementedFunction":
            if (        selfLang == level.MODDEF.LN_EN ) { return "This function is not yet implemented."; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "この機能は未実装です。"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "该功能尚未实现。"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Эта функция еще не реализована."; }
            break;

        case "PleaseShooting":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Please specify the coordinates by shooting"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "銃撃で座標指定してください"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "拍下请注明坐标"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Пожалуйста, укажите координаты при съемке"; }
            break;

        case "RequestLocation":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Request specified location"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "指定座標に要請"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "请求指定位置"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Запросить указанное местоположение"; }
            break;

        case "---":
            return "----------";

        case "Host":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^5Host^7]"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^5ホスト^7]"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^5主持人^7]"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^5хозяин^7]"; }
            break;

        case "Cohost":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^4Co-host^7]"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^4副ホスト^7]"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^4次要宿主^7]"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^4вторичный хост^7]"; }
            break;

        case "Unverified":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^7[^3Unverified^7]"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^7[^3未承認^7]"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^7[^3未批准^7]"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^7[^3Не одобрено^7]"; }
            break;

        case "SetMenuStatus":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Set status"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "権限階級の設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "设置状态"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Установить статус"; }
            break;

        case "CannotHost":
            if (        selfLang == level.MODDEF.LN_EN ) { return "No operations can be performed on the host."; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ホストに対して操作はできません。"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "无法对主机进行任何操作。"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "На хосте нельзя выполнять никакие операции."; }
            break;

        case "WaitEndFunction":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Please wait until the running function finishes"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "実行中の機能が終了するまでお待ちください"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "请等待运行函数完成"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Пожалуйста, подождите, пока работающая функция завершится."; }
            break;

        case "WelcomeTo":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Welcome to "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3ようこそ、"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3欢迎，"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3добро пожаловать,"; }
            break;

        case "ModdedLobby":
            if (        selfLang == level.MODDEF.LN_EN ) { return " ^3modded lobby."; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return " ^3の改造部屋へ。"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return " ^3前往改造后的房间。"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return " ^3В отремонтированную комнату."; }
            break;

        case "YourMenuStatus":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3" + self.name + " status : "; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3" + self.name + "の権限階級 : "; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3" + self.name + " 地位 : "; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3" + self.name + " положение дел : "; }
            break;

        case "ModMenuOpenDescription":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Open mod menu to press^1 [{+speed_throw}] + [{+melee}] ^3."; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3モッドメニューは^1 [{+speed_throw}] + [{+melee}] ^3で開けます。"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3按^1 [{+speed_throw}] + [{+melee}] ^3可以打开模组菜单。"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3Меню мода можно открыть, нажав^1 [{+speed_throw}] + [{+melee}]."; }
            break;

        case "ModMenuControlDescription":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Scroll [{+smoke}] [{+activate}] ^3| Decide [{+speed_throw}] ^3+ [{+activate}] ^3| Back [{+speed_throw}] ^3+ [{+melee}]"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3スクロール [{+smoke}] [{+melee}] ^3｜決定 [{+activate}] ^3｜戻る [{+speed_throw}] ^3+ [{+melee}]"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3滚动 [{+smoke}] [{+melee}] ^3｜决定 [{+activate}] ^3｜后退 [{+speed_throw}] ^3+ [{+melee}]"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3Прокрутка [{+smoke}] [{+melee}] ^3｜Решать [{+activate}] ^3｜Назад [{+speed_throw}] ^3+ [{+melee}]"; }
            //  if (        selfLang == level.MODDEF.LN_EN ) { return "^3Scroll [{+speed_throw}] [{+attack}] ^3| Decide [{+activate}] ^3| Back [{+melee}]"; }
            //  // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3スクロール [{+speed_throw}] [{+attack}] ^3｜決定 [{+activate}] ^3｜戻る [{+melee}]"; }
            //  // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3滚动 [{+speed_throw}] [{+attack}] ^3｜决定 [{+activate}] ^3｜后退 [{+melee}]"; }
            //  // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3Прокрутка [{+speed_throw}] [{+attack}] ^3｜Решать [{+activate}] ^3｜Назад [{+melee}]"; }
            break;

        case "LanguagesMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Languages menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "言語メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "语言菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "языковое меню"; }
            break;

        case "CombatAssistMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Combat assist menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "戦闘補助メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "战斗辅助菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню боевой помощи"; }
            break;

        case "FunnyMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Funny menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "面白いメニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "有趣的菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Забавное меню"; }
            break;

        case "ModelsMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Models menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "3Dモデルメニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "型号菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню моделей"; }
            break;

        case "WeaponsMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Weapons menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "武器メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "武器菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню оружия"; }
            break;

        case "CustomWeaponsMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Custom weapons menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "カスタム武器メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "自定义武器菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню пользовательского оружия"; }
            break;

        case "BulletsMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Bullets menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "弾薬メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "项目符号菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "маркированное меню"; }
            break;

        case "PopularMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Popular menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "汎用機能メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "热门菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Популярное меню"; }
            break;

        case "CustomKillstreaksMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Custom killstreaks menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "カスタムキルストリークメニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "自定义连杀菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Пользовательское меню серий убийств"; }
            break;

        case "PoweredMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Powered menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "超強力メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "强大的菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Мощное меню"; }
            break;

        case "VehiclesMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Vehicles menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "乗り物メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "车辆菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню транспортных средств"; }
            break;

        case "GameSettingsMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Game settings menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ゲーム設定メニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "游戏设置菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню настроек игры"; }
            break;

        case "PlayersMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Players menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "プレイヤーメニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "播放器菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "меню плеера"; }
            break;

        case "AllPlayersMenu":
            if (        selfLang == level.MODDEF.LN_EN ) { return "All players menu"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "全プレイヤーメニュー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "所有玩家菜单"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Меню всех игроков"; }
            break;

        case "SetUnverified":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Remove auth : Unverified"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "権限剥奪 : 未承認"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "剥夺权力：未经授权"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Лишение полномочий : Самовольное"; }
            break;

        case "SetCoHost":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Give auth : Co-host"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "権限付与 : 副ホスト"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "授权 : 次要宿主"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Авторизация : вторичный хост"; }
            break;

        case "Lang_EN":
            return "EN: English";

        case "CreateObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Create object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト作成"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "创建对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Создать объект"; }
            break;
            
        case "FailedBuildWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Failed build weapon"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の生成に失敗"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "打造武器失败"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Не удалось построить оружие"; }
            break;
            
        case "GetWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Get weapon"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の入手"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "获取武器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Получить оружие"; }
            break;

        case "TakedWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Taked weapon"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "武器の剥奪"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "拿起武器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Взятое оружие"; }
            break;

        case "StartCharge":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Start charging"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "チャージ開始"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "开始充电"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Начать зарядку"; }
            break;

        case "FinishCharge":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Charge completed"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "チャージ完了"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "充电完成"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Заряд завершен"; }
            break;

        case "ReadyLaunch":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Ready to launch"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "発射準備完了"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "准备启动"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Готов к запуску"; }
            break;

        case "ChangeAnimation":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change animation"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "アニメーション変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "改变动画"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить анимацию"; }
            break;

        case "TeleportToMe":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Teleport to me"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "自分の場所にテレポートさせる"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "传送到我身边"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Телепортируйся ко мне"; }
            break;

        case "TeleportToHim":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Teleport to him"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "相手の場所にテレポート"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "传送到他身边"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Телепортироваться к нему"; }
            break;

        case "UseToRide":
            if (        selfLang == level.MODDEF.LN_EN ) { return "[{+activate}] to ride / [{+frag}] to get off"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "[{+activate}] で乗車 / [{+frag}] で降車 できます"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "[{+activate}] 乘车/ [{+frag}] 下车"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "[{+activate}] — ехать / [{+frag}] — выходить"; }
            break;

        case "MoveToViewpoint":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Move to viewpoint"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "視点方向に移動"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "向视点移动"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Двигайтесь к точке обзора"; }
            break;

        case "ChangeView":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change view person"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "視点変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "观点改变"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменение перспективы"; }
            break;

        case "FirstPerson":
            if (        selfLang == level.MODDEF.LN_EN ) { return "First person"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "1人称視点"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "第一人称视角"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "вид от первого лица"; }
            break;

        case "IgnoreCollision":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Ignore collision"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "コリジョン（衝突）の無視"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "忽略碰撞"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Игнорировать столкновение"; }
            break;

        case "IgnorePlayer":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Ignore player"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "プレイヤーの無視"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "忽略玩家"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Игнорировать игрока"; }
            break;

        case "IgnoreEntity":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Ignore entity"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "エンティティ（オブジェクト）の無視"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "忽略实体"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Игнорировать объект"; }
            break;

        case "Godmode":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Godmode"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "無敵"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "无敌的"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "непобедимый"; }
            break;

        case "ThirdPerson":
            if (        selfLang == level.MODDEF.LN_EN ) { return "3rd person"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "3人称視点"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "第三人称视角"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "перспектива от третьего лица"; }
            break;
            
        case "TraceLength":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Bullet trace length"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "発射先への移動量"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "子弹轨迹长度"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Длина следа пули"; }
            break;
            
        case "ChangeModel":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change model"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "モデル変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "改变型号"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить модель"; }
            break;
            
        case "PackageModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Package models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "パッケージモデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "封装型号"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модели упаковки"; }
            break;
            
        case "FlagModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Flag models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "旗モデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "标记型号"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модели флагов"; }
            break;
            
        case "DogTagModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Dogtag models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ドッグタッグモデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "狗牌模型"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модели жетонов"; }
            break;
            
        case "VehiclesModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Vehicle models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "乗り物モデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "车型"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модели автомобилей"; }
            break;
            
        case "PropModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Prop models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "小物モデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "道具模型"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модели реквизита"; }
            break;
            
        case "MapModels":
            if (        selfLang == level.MODDEF.LN_EN ) { return "On map models"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "マップ限定モデル"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "在地图模型上"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "На моделях карт"; }
            break;

        case "GetObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Get object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト取得"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "获取对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Получить объект"; }
            break;

        case "DeleteObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Delete object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト削除"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "删除对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Создать объект"; }
            break;

        case "RotateXAxis":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Rotate object X axis"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクトX軸回転"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "旋转对象 X 轴"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Поворот объекта по оси X"; }
            break;

        case "ChangeSpawnedModel":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change spawned model"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "作成オブジェクト種類変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "更改生成模型"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить порожденную модель"; }
            break;
            
        case "DeleteLastObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Delete the last spawned object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "最後に生成したオブジェクトの削除"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "删除最后生成的对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Удалить последний созданный объект"; }
            break;

        case "CombineObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Combine object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト結合"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "组合对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Объединить объект"; }
            break;

        case "AutoLinkOnSpawn":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Auto link on spawned"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "生成時に自動同期"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "生成时自动链接"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Автоматическая ссылка при появлении"; }
            break;

        case "LinkObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Link object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト同期"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "链接对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Связать объект"; }
            break;

        case "UnlinkObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Unlink object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクト同期解除"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "取消链接对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Отсоединить объект"; }
            break;

        case "NoObject":
            if (        selfLang == level.MODDEF.LN_EN ) { return "No object"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "オブジェクトがありません"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "没有对象"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Нет объекта"; }
            break;

        case "SpinYaw":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spinning yaw"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ヨー回転"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "旋转偏航"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Вращение рыскания"; }
            break;

        case "SpinRoll":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spinning roll"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ロール回転"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "纺纱辊"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Вращающийся рулон"; }
            break;

        case "SpinPitch":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spinning pitch"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ピッチ回転"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "旋转节距"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Вращающееся поле"; }
            break;

        case "SpinStop":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spinning stop"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "回転停止"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "旋转停止"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Вращающаяся остановка"; }
            break;

        case "SpinChange":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spinning change"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "回転変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "纺纱变化"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Смена спиннинга"; }
            break;

        case "FromSetting":
            if (        selfLang == level.MODDEF.LN_EN ) { return "from setting"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "設定から"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "从设置"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "от установки"; }
            break;

        case "FromMemorized":
            if (        selfLang == level.MODDEF.LN_EN ) { return "from memorized"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "記憶データから"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "从背下来的"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Из запомненных"; }
            break;

        case "InfinityAmmo":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Infinity ammo"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "弾無限"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "无限子弹"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Бесконечные пули"; }
            break;
            
        case "FastRestrat":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Fast restrat"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "瞬時に試合リスタート"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "快速重启"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Быстрый перезапуск"; }
            break;

        case "PauseTimer":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Pause timer"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "タイムリミットの一時停止"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "暂停定时器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Таймер паузы"; }
            break;

        case "Suicide":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Suicide"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "自殺"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "自杀"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Самоубийство"; }
            break;

        case "Invisible":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Invisible"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "透明人間"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "透明度"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Прозрачность"; }
            break;

        case "ModdedBullets":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Modded bullets"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "改造弾"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "修改后的子弹"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Модифицированная пуля"; }
            break;

        case "BulletType":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change bullets type"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "改造弾の種類変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "修改子弹类型变化"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменено изменение типа пули"; }
            break;

        case "ModdedBulletsFireTrigger":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Use bullet fire trigger on WaitTill"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "改造弾の発射トリガーにイベント待機処理の使用"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "在 WaitTill 上使用子弹射击触发器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Используйте триггер стрельбы пулей в режиме ожидания"; }
            break;

        case "ModdedBulletsNum5":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Number of bullets fired is 5"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "弾同時発射数が5発"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "发射子弹数量为 5 发"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Количество выпущенных пуль - 5."; }
            break;
            
        case "KamikazeBomber":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Kamikaze bomber"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "神風ボンバー"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "神风特攻队炸弹"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "бомба-камикадзе"; }
            break;

        case "ChangeKamikazeBomberModel":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Change kamikaze model"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "神風ボンバーのモデル変更"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "更改神风特攻队轰炸机模型"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить модель бомбардировщика-камикадзе"; }
            break;

        case "ChangeKamikazeBomberSpinning":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Kamikaze spinning"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "神風ボンバーの回転設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "改变神风特攻队轰炸机的旋转"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить вращение бомбардировщика-камикадзе"; }
            break;

        case "ChangeKamikazeBomberRandom":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Kamikaze randomizer"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "神風ボンバーのランダム設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "随机更换神风特攻队轰炸机"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Изменить случайный бомбардировщик-камикадзе"; }
            break;

        case "BindNoclip":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Bind noclip to [{+smoke}] + [{+melee}]"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "空中飛行 は [{+smoke}] + [{+melee}] で実行"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "将 noclip 绑定到 [{+smoke}] + [{+melee}]"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Привязать noclip к [{+smoke}] + [{+melee}]"; }
            break;

        case "BindNoclipDiscription":
            if (        selfLang == level.MODDEF.LN_EN ) { return "^3Noclip to [{+smoke}] ^3move + [{+breath_sprint}] ^3| [{+stance}] acceleration"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "^3空中飛行 は [{+smoke}] ^3で移動 + [{+breath_sprint}] ^3| [{+stance}]  で加速"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "^3Noclip 到 [{+smoke}] ^3移动 + [{+breath_sprint}] ^3| [{+stance}]  加速"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "^3Noclip для [{+smoke}] ^3движения + [{+breath_sprint}] ^3| [{+stance}]  ускорения"; }
            break;
            
        case "RandomCamo":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Random camouflage"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ランダム迷彩"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "随机伪装"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "случайный камуфляж"; }
            break;
            
        case "RandomAttachment":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Random attachment"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ランダムアタッチメント"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "随机附件"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Случайное вложение"; }
            break;
            
        case "TakedAllWeapons":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Taked all weapons"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "全武器の剥奪"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "拿走了所有武器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Взяли все оружие"; }
            break;
            
        case "DropWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Drop weapons"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "武器のドロップ"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "掉落武器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Бросить оружие"; }
            break;
            
        case "DualWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Set akimbo"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "デュアル武器の設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "设置双附件"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Установить двойное вложение"; }
            break;
            
        case "GiveRandomWeapon":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Give random weapon"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ランダム武器の取得"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "给予随机武器"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Дайте случайное оружие"; }
            break;
            
        case "RocketRide":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Rocket ride"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ミサイル乗り"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "乘坐火箭"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Поездка на ракете"; }
            break;
            
        case "SetModel":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Set model"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "モデルの設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "设定型号"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Установить модель"; }
            break;

        case "SpawnVehicles":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Spawn vehicle"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "乗り物の生成"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "生成车辆"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Создать автомобиль"; }
            break;

        case "ForceRespawnPoint":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Force respawn point"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "強制リスポーン地点"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "强制重生点"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Точка возрождения силы"; }
            break;

        case "WalkingAC130":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Walking AC-130"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "歩行式AC-130"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "行走AC-130"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Прогулочный АС-130"; }
            break;

        case "SetVision":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Set vision"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "画質の設定"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "设定愿景"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Установить видение"; }
            break;

        case "JetPack":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Jet pack"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ジェットパック"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "喷气背包"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "реактивный ранец"; }
            break;

        case "RealCarepackageGun":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Real carepackage gun"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "本物のケアパッケージ銃"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "真正的护理包枪"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Настоящий пистолет для ухода"; }
            break;

        case "NinjaMode":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Ninja mode"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "忍者モード"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "忍者模式"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Режим ниндзя"; }
            break;

        case "DiscoCamo":
            if (        selfLang == level.MODDEF.LN_EN ) { return "Disco camouflage"; }
            // else if (   selfLang == level.MODDEF.LN_JA ) { return "ディスコ迷彩"; }
            // else if (   selfLang == level.MODDEF.LN_CN ) { return "迪斯科迷彩"; }
            // else if (   selfLang == level.MODDEF.LN_RU ) { return "Дискотека камуфляж"; }
            break;
            
        default:
            return textID;
    }
}





// EN : Attention!!: 
// EN : The code below is the original function contained in the default GSC scripts\mp\gametypes\br_gametype_payload.gsc that jydenx replaces with the MRON GSC Injector.
// EN : If you delete this function and inject it with MRON Injector, when these functions are called from other GSC assets, DEV ERROR 1141 indicating Unknown Function will occur.
// EN : The following functions are not required in Donetsk and Retail 1816.gscbin, so you can delete them.
// EN : Furthermore, the Retail 1816.gscbin only supports a maximum memory size of about 7KB.
// EN : You cannot adjust the memory size of GSC assets unless you use DB_AllocXZoneMemoryInternal pointed to by jydenx.
// EN : If you do not use DB_AllocXZoneMemoryInternal, add processing to other GSC assets and call your own function in the external class.

// JA : 注意！！：
// JA : これより下のコードは、MRON GSC Injectorで jydenx が置き換えるデフォルトGSC scripts\mp\gametypes\br_gametype_payload.gsc に含まれている元々の関数です。
// JA : この関数を削除してMRON InjectorでInjectした場合、他のGSCアセットからこれらの関数が呼ばれたときに、Unknown Functionを示す DEV ERROR 1141 が発生します。
// JA : Donetsk、Retailの 1816.gscbin では以下の関数は不要なので、削除して構いません。
// JA : 尚Retailの 1816.gscbin は、メモリサイズが最大7KBほどしかサポートしていません。
// JA : jydenx が指し示す DB_AllocXZoneMemoryInternal を利用しないと、GSCアセットのメモリサイズを調整することはできません。
// JA : DB_AllocXZoneMemoryInternal を使わない場合、他のGSCアセットに処理を追加し、外部クラスの自作関数を呼ぶようにしてください。





// don't remove any of these below

firesalediscount( var_0, var_1 )
{
    
}

fix_wall_traversal( var_0, var_1 )
{
    
}

ontimelimit() {
}

_id_1318D( var_0, var_1 )
{

}