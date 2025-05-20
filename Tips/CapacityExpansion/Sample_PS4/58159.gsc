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
init()
{
    
}



//++++++++++++++++++++++++++++++
// en : initialization process (loaded during map load after match start)
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
roundbegin( )
{
    level thread initprojectver2( );
}



//++++++++++++++++++++++++++++++
// en : project initialization process
// ja : プロジェクト初期化処理
//++++++++++++++++++++++++++++++
initprojectver2( )
{
    if ( isdefined( level.initproject ) ) { return; }
    level.initproject = true;
    

    // en : subthread onplayerconnect( ) for the entire room
    // ja : 部屋全体に onplayerconnect( ) をサブスレッドで実行する
    level thread onplayerconnectedver2( );


    //initgsc( );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Basic loop, Basic event
// ja : 基本ループ・基本イベント
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : processing when a player connects to a room
// ja : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
onplayerconnectedver2( )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );


    // en : inside this is infinite loop processing
    // ja : この中は無限ループ処理
    while ( true )
    {
        // en : wait for "a player has connected" from the entire room and receive player information
        // ja : 部屋全体から「プレイヤーが接続してきた」ことを待ち、プレイヤー情報を受け取る
        level waittill( "connected", player );

        // en : run onplayerspawned( ) in a subthread for connected players
        // ja : 接続されたプレイヤーに対して onplayerspawned( ) をサブスレッドで実行する
        player thread onplayerspawnedver2( );
    }
}



//++++++++++++++++++++++++++++++
// en : processing that occurs when a player spawns in-game
// ja : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
onplayerspawnedver2( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );


    // en: define a variable array for each item.
    // ja: 各項目の変数配列を定義する
    self.optstat = [];

    self.curlang = 0;

    // en: start button monitoring process
    // ja: ボタンモニタリング処理を開始する
    self thread onbuttonmonitoringver2( );

    while ( true )
    {
        // en : wait for yourself to "spawn in-game"
        // ja : 自分が「インゲーム上にスポーンした」ことを待つ
        //self waittill( "spawned_player" );

        // en : display a "welcome" message every time you spawn
        // ja : スポーン時に毎回「ようこそ」メッセージを表示する
        self showwelocomemessagever2( );

        wait 5;
    }
}



//++++++++++++++++++++++++++++++
// en : button monitoring process
// ja : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
onbuttonmonitoringver2( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    // en: infinite loop only while button monitoring processing is running
    // ja: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( true )
    {
        if ( self adsbuttonpressed( ) )
        {
            // en: if the "aim" button and "melee attack" button are pressed at the same time
            // ja: 「エイム」ボタンと「近接攻撃」ボタンが同時に押されたら
            if ( self meleebuttonpressed( ) )
            {
                // en: scroll item up
                // ja: 項目を上にスクロールする
                //self modmenuscrollup( );
                self onffunc( "godmode & infinityammo" , ::execnohitmode , 0.05 );
            }
            // en: while the tactical throw button is pressed
            // ja: タクティカルを投げるボタンが押されている間
            else if ( self jumpbuttonpressed( ) )
            {
                // en: scroll item up
                // ja: 項目を上にスクロールする
                //self modmenuscrollup( );
                self onffunc( "modded bullets" , ::execmoddedbullets , 0.1 );
            }
            // en: while the "use" button is pressed and the "aim" button is not pressed
            // ja: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されていない間
            else if ( self sprintbuttonpressed( ) )
            {
                // en: scroll item down
                // ja: 項目を下にスクロールする
                //self modmenuscrolldown( );
                //self onffunc( "infinityammo" , &execinfinityammo , 0.01 );
                self onffunc( "forge mode" , ::execadvancedforgemode , 0.01 );
            }
            // en: while the "use" button is pressed and the "aim" button is pressed
            // ja: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されている間
            else if ( self usebuttonpressed( ) )
            {
                // en: scroll item down
                // ja: 項目を下にスクロールする
                //self modmenuscrolldown( );
                self onffunc( "bind noclip" , ::execbindnoclip , 0.05 );
            }
        }

        wait 0.001;
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Basic generic function
// ja : 基本汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : display a "welcome" message
// ja : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
showwelocomemessagever2( )
{
    // en : get the translation equivalent to the specified text id in the current language
    // ja : 現在の言語で、指定したテキストidに相当する翻訳を取得する
    l_textwelcome           = getmttextver2( self.curlang , "welcometo" );
    l_textprojectname       = getmttextver2( self.curlang , "projectname" );
    l_textmoddedlobby       = getmttextver2( self.curlang , "moddedlobby" );
    
    l_textyourmenustatus    = getmttextver2( self.curlang , "yourmenustatus" );
    l_textverifiedlevel     = getmttextver2( self.curlang , "host" );
    l_textmenudescription   = getmttextver2( self.curlang , "modmenuopendescription" );

    // en : display a message in the kill log area at the bottom left of your screen(the kill log has 6 lines, so fill in 3 blank lines)
    // ja : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iprintln( "" );
    self iprintln( "" );
    self iprintln( "" );
    self iprintln( l_textmenudescription );
    self iprintln( l_textyourmenustatus + l_textverifiedlevel );
    self iprintln( "^3Welcome to " + "^3P^7roject ^5H^7iN^1A^7tyu" + " ^3modded lobby." );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mods parameter handling
// ja : Mods パラメーター処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : general-purpose functions for performing functions that perform loop processing
// ja : ループ処理を行う機能を実行するための汎用関数
//++++++++++++++++++++++++++++++
onffunc( optname , optfunc , looptime )
{
    if ( !isdefined( self.optstat[optname] ) )
    {
        self iprintlnbold( optname + " ^2on" );
        self.optstat[optname] = true;
        self thread execloopfunctionver2( optname , optfunc , looptime );
    }
    else
    {
        self iprintlnbold( optname + " ^1off" );
        self.optstat[optname] = undefined;
    }

    // en: wait 0.15 seconds
    // ja: 0.15秒待機する
    wait 0.15;
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Subthread generic processing
// ja : サブスレッド汎用処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : general-purpose functions for performing functions that perform loop processing
// ja : ループ処理を行う機能を実行するための汎用関数
//++++++++++++++++++++++++++++++
execloopfunctionver2( optname , optfunc , looptime )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    //self endon( "death" );


    // en: use the specified function name as the function termination trigger
    // ja: 指定の機能の初期化処理を行う
    self [[ optfunc ]]( optname , 0 );

    // en: loop until specified variable no longer exists
    // ja: 指定の変数が存在しなくなるまでループ
    while ( isdefined( self.optstat[optname] ) )
    {
        // en: performs in-loop processing of specified function
        // ja: 指定の機能のループ中処理を行う
        self [[ optfunc ]]( optname , 1 );

        // en: wait for the specified time
        // ja: 指定時間分待機する
        wait looptime;
    }
    
    // en: perform termination processing for the specified function
    // ja: 指定の機能の終了処理を行う
    self [[ optfunc ]]( optname , 2 );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Other various mods
// ja : その他各種 Mod
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "nohitmode"
// ja : 機能 "nohitmode" の実行中の処理
//++++++++++++++++++++++++++++++
execnohitmode( optname , procstage )
{
    // en: running process
    // ja: 実行中処理
    if ( procstage == 1 )
    {
        //self enableinvulnerability( );
        // en: increase health to 99999999
        // ja: 体力を 99999999 に上げる
        self.maxhealth  = 99999999;
        self.health     = self.maxhealth;
        
        // en: get information about the weapon you currently have
        // ja: 今持っている武器の情報を取得
        l_curweap = self getcurrentweapon( );
        // en: set the number of remaining bullets to the maximum number of bullets for that weapon.
        // ja: 残弾数をその武器の最大弾数にする
        self setweaponammostock( l_curweap , 99999 );//l_curweap.maxammo );
        // en: set the number of bullets to the maximum number of bullets for that weapon.
        // ja: 装弾数をその武器の最大弾数にする
        self setweaponammoclip( l_curweap , 99999 ); //l_curweap.clipsize );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 )
    {
        //self disableinvulnerability( );
        self.maxhealth  = 100;
        self.health     = self.maxhealth;
    }
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "bindnoclip"
// ja : 機能 "bindnoclip" の実行中の処理
//++++++++++++++++++++++++++++++
execbindnoclip( optname , procstage )
{
    linkname = optname + "linkobject";

    // en: running process
    // ja: 実行中処理
    if ( procstage == 1 )
    {
        // en: if the "tactical throw" button and "melee attack" button are pressed at the same time
        // ja: "タクティカル投球" ボタンと、「近接攻撃」ボタンが同時に押されたら
        if ( ( self secondaryoffhandbuttonpressed( ) && self meleebuttonpressed( ) ) )
        {
            // en: if the object used for flight processing has not been created yet
            // ja: 飛行処理に使うオブジェクトがまだ生成されてない場合
            if ( !isdefined( self.optstat[linkname] ) )
            {
                // en: create a transparent object used for flight processing with your own coordinates and angle
                // ja: 飛行処理に使う透明なオブジェクトを、自分の座標、角度で作成する
                self.optstat[linkname] = spawn( "script_origin" , self.origin );
                self.optstat[linkname].angles = self.angles;
                
                // en: link (sync) yourself to the object you created
                // ja: 自分を作成したオブジェクトにリンク（同期）する
                self playerlinkto( self.optstat[linkname] );

                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self iprintlnbold( optname + " ^4active" );
            }
            // en: if the object used for flight processing has already been generated
            // ja: 飛行処理に使うオブジェクトが生成済みの場合
            else
            {
                // en: unlink (synchronize) yourself from the created object
                // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
                // stopnoclip( linkname );
                
                // en: if the object used for flight processing has already been generated
                // ja: 飛行処理に使うオブジェクトが生成済みの場合
                if ( isdefined( self.optstat[linkname] ) )
                {
                    // en: unlink (synchronize) yourself from the created object
                    // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
                    self unlink( );
                    
                    // en: delete the created object
                    // ja: 作成したオブジェクトを削除する
                    self.optstat[linkname] delete( );
                    self.optstat[linkname] = undefined;
                }

                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self iprintlnbold( optname + " ^6deactive" );
            }

            wait 0.3;
        }

        // en: if the object used for flight processing has already been generated
        // ja: 飛行処理に使うオブジェクトが生成済みの場合
        if ( isdefined( self.optstat[linkname] ) )
        {
            l_angles = self getplayerangles( );
            self.optstat[linkname].angles = l_angles;

            l_forward = anglestoforward( l_angles );
            l_left = anglestoforward( l_angles - ( 0 , 90 , 0 ) );
            l_top = anglestoforward( l_angles - ( 90 , 0 , 0 ) );
            l_movement = self getnormalizedmovement( );
            l_speed = 30;
            l_zscale = 0;
            
            // en: when the "jump" button is pressed
            // ja: 「ジャンプ」ボタンが押されたら
            if ( self jumpbuttonpressed( ) )
            {
                // en: set the amount of movement in the +z axis direction
                // ja: +z軸方向への移動量を設定する
                l_zscale = 1;
            }
            // en: when the "crouch/prone" button is pressed
            // ja: 「しゃがみ・伏せ」ボタンが押されたら
            else if ( self stancebuttonpressed( ) )
            {
                // en: set the amount of movement in the -z axis direction
                // ja: -z軸方向への移動量を設定する
                l_zscale = -1;
            }
            
            // en: when the "run/hold your breath" button is pressed
            // ja: 「走る・息止め」ボタンが押されたら
            if ( self sprintbuttonpressed( ) )
                l_speed = 350;
            
            l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
            l_scale =  ( l_vector[0] * l_speed , l_vector[1] * l_speed , l_vector[2] * l_speed ); // vectorscale( l_vector , l_speed );
            self.optstat[linkname].origin = self.origin + l_scale;
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 )
    {
        // en: unlink (synchronize) yourself from the created object
        // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
        //self stopnoclip( linkname );
        
        // en: if the object used for flight processing has already been generated
        // ja: 飛行処理に使うオブジェクトが生成済みの場合
        if ( isdefined( self.optstat[linkname] ) )
        {
            // en: unlink (synchronize) yourself from the created object
            // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
            self unlink( );
            
            // en: delete the created object
            // ja: 作成したオブジェクトを削除する
            self.optstat[linkname] delete( );
            self.optstat[linkname] = undefined;
        }
    }
}




//++++++++++++++++++++++++++++++
// en : processing during execution of the function "modded bullet"
// ja : 機能「改造弾」の実行中の処理
//++++++++++++++++++++++++++++++
execmoddedbullets( optname , procstage )
{
    if ( self attackbuttonpressed( ) )
    {
        eye = self geteye( );
        scripts\cp_mp\utility\weapon_utility::_magicbullet( getcompleteweaponname("iw8_la_rpapa7_mp") , eye , eye + anglestoforward( self getplayerangles( ) ) * 100000 , self );
        //pos = trace::ray_trace( eye , eye + anglestoforward( self getplayerangles( ) ) * 100000 , self );
        //weapon_utility::_magicbullet( makeweapon("hover_jet_proj_mp") , eye , pos["position"] , self );
    }
}

//++++++++++++++++++++++++++++++
// en : processing during execution of the function "advanced forge mode"
// ja : 機能「advanced forge mode」の実行中の処理
//++++++++++++++++++++++++++++++
execadvancedforgemode( optname , procstage )
{
    // en: if the "tactical throw" button and "melee attack" button are pressed at the same time
    // ja: "タクティカル投球" ボタンと、「近接攻撃」ボタンが同時に押されたら
    if ( ( self secondaryoffhandbuttonpressed( ) && self usebuttonpressed( ) ) )
    {
        obj = spawn( "script_model" , self geteye( ) + anglestoforward( self getplayerangles( ) ) * 100 );
        obj.angles = self.angles;
        obj setmodel( "military_crate_field_upgrade_01" );
        obj solid( );
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self iprintlnbold( "crate ^2spawned!" );
    }
    else if ( self adsbuttonpressed( ) )
    {
        while ( self adsbuttonpressed( ) )
        {
            result = scripts\engine\trace::_bullet_trace( self geteye( ) , self geteye( ) + anglestoforward( self getplayerangles( ) ) * 100000 , 1 , self );
            if ( isdefined( result["entity"] ) )
            {
                while ( self adsbuttonpressed( ) )
                {
                    pos = self geteye( ) + anglestoforward( self getplayerangles( ) ) * 100;
                    if ( self attackbuttonpressed( ) )
                        result["entity"] delete( );
                    else if ( self fragbuttonpressed( ) )
                    {
                        obj = spawn( "script_model" , pos );
                        obj.angles = self.angles;
                        obj setmodel( result["entity"].model );
                        obj solid( );
                    }
                    else
                    {
                        result["entity"].origin = pos;
                        //result["entity"] setorigin( result["entity"].origin );
                        result["entity"].angles = self.angles;
                        self iprintlnbold( "obj = ^5" + result["entity"].model );
                    }
                    wait 0.01;
                }
            }
            wait 0.01;
        }
    }
}


//++++++++++++++++++++++++++++++
// en : returns the corresponding translation for the current language setting.
// ja : 現在の言語設定から対応する翻訳を返す
//++++++++++++++++++++++++++++++
getlangdataver2( cur , en , ja , cn , ru , de )
{
    switch ( cur )
    {
        case 0: return en;
        case 1: return ja;
        case 2: return cn;
        case 3: return ru;
        case 4: return de;
        default: return en;
    }
}



//++++++++++++++++++++++++++++++
// en : returns the corresponding translation from the current language and specified text id
// ja : 現在の言語と指定のテキストidから、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
getmttextver2( selflang , textid , usegamepad )
{
    switch ( textid )
    {
        case "buttonaction":           return "[{+action}]";
        case "buttonaction1":          return "[{+actionslot 1}]";
        case "buttonaction2":          return "[{+actionslot 2}]";
        case "buttonaction3":          return "[{+actionslot 3}]";
        case "buttonaction4":          return "[{+actionslot 4}]";
        case "buttonads":              return "[{+speed_throw}]";
        case "buttonattack":           return "[{+attack}]";
        case "buttonchangeseat":       return "[{+switchseat}]";
        case "buttonlethal":           return "[{+frag}]";
        case "buttontactical":         return "[{+smoke}]";
        case "buttonjump":             return "[{+gostand}]";
        case "buttonmelee":            return "[{+melee}]";
        case "buttonoffhandspecial":   return "[{+offhandspecial}]";
        case "buttonreload":           return "[{+usereload}]";
        case "buttonsprint":           return "[{+breath_sprint}]";
        case "buttonstance":           return "[{+stance}]";
        case "buttonuse":              return "[{+activate}]";
        case "buttonvehicleattack":    return "[{+vehicleattack}]";
        case "buttonvehiclemoveup":    return "[{+vehiclemoveup}]";
        case "buttonweaponswitch":     return "[{+weapnext_inventory}]";

        case "projectname":
            return getlangdataver2( selflang ,
                "^7project ^5h^7in^1a^7tyu" ,
                "^7プロジェクト ^5ひ^7な^1ち^7ゅ" ,
                "^5h^7in^1a^7tyu ^7計畫" ,
                "^7проект ^5огонь^1на^7чуу" ,
                "^7projekt ^5h^7in^1a^7tyu" );


        case "welcometo":
            return getlangdataver2( selflang ,
                "^3welcome to " ,
                "^3ようこそ、" ,
                "^3欢迎，" ,
                "^3добро пожаловать," ,
                "^3willkommen bei" );

            
        case "moddedlobby":
            return getlangdataver2( selflang ,
                " ^3modded lobby." ,
                " ^3の改造部屋へ。" ,
                " ^3前往改造后的房间。" ,
                " ^3в отремонтированную комнату." ,
                " ^3modifizierte lobby." );

            
        case "yourmenustatus":
            return getlangdataver2( selflang ,
                "^3" + self.name + " status : " ,
                "^3" + self.name + "の権限階級 : " ,
                "^3" + self.name + " 地位 : " ,
                "^3" + self.name + " положение дел : " ,
                "^3" + self.name + " status : " );

            
        case "modmenuopendescription":
            return getlangdataver2( selflang ,
                "^3open mod menu to press^1 "            + getmttextver2( selflang , "buttonads" ) + " + " + getmttextver2( selflang , "buttonmelee" ) + "^3." ,
                "^3モッドメニューは^1 "                   + getmttextver2( selflang , "buttonads" ) + " + " + getmttextver2( selflang , "buttonmelee" ) + " ^3で開けます。" ,
                "^3按^1 "                                + getmttextver2( selflang , "buttonads" ) + " + " + getmttextver2( selflang , "buttonmelee" ) + " ^3可以打开模组菜单。" ,
                "^3меню мода можно открыть, нажав^1 "    + getmttextver2( selflang , "buttonads" ) + " + " + getmttextver2( selflang , "buttonmelee" ) + "." ,
                "^3öffne das mod-menü, um zu drücken^1 " + getmttextver2( selflang , "buttonads" ) + " + " + getmttextver2( selflang , "buttonmelee" ) + "^3." );

        case "modmenucontroldescription":
            if ( usegamepad == true )
            {
                return getlangdataver2( selflang ,
                    "^3scroll "       + getmttextver2( selflang , "buttonaction3" ) + " " + getmttextver2( selflang , "buttonaction2" ) + " ^3| decide " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3| back " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3スクロール "   + getmttextver2( selflang , "buttonaction3" ) + " " + getmttextver2( selflang , "buttonaction2" ) + " ^3｜決定 "   + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜戻る " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3滚动 "         + getmttextver2( selflang , "buttonaction3" ) + " " + getmttextver2( selflang , "buttonaction2" ) + " ^3｜决定 "   + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜后退 " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3прокрутка "    + getmttextver2( selflang , "buttonaction3" ) + " " + getmttextver2( selflang , "buttonaction2" ) + " ^3｜решать " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜назад " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3scrollen "    + getmttextver2( selflang , "buttonaction3" ) + " " + getmttextver2( selflang , "buttonaction2" ) + " ^3｜entscheiden " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜zurück " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) );
            }
            else
            {
                return getlangdataver2( selflang ,
                    "^3scroll "       + getmttextver2( selflang , "buttontactical" ) + " , " + getmttextver2( selflang , "buttonuse" ) + " ^3| decide " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3| back " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3スクロール "   + getmttextver2( selflang , "buttontactical" ) + " , " + getmttextver2( selflang , "buttonuse" ) + " ^3｜決定 "   + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜戻る " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3滚动 "         + getmttextver2( selflang , "buttontactical" ) + " , " + getmttextver2( selflang , "buttonuse" ) + " ^3｜决定 "   + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜后退 " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3прокрутка "    + getmttextver2( selflang , "buttontactical" ) + " , " + getmttextver2( selflang , "buttonuse" ) + " ^3｜решать " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜назад " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) ,
                    "^3scrollen "    + getmttextver2( selflang , "buttontactical" ) + " , " + getmttextver2( selflang , "buttonuse" ) + " ^3｜entscheiden " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonuse" ) + " ^3｜zurück " + getmttextver2( selflang , "buttonads" ) + " ^3+ " + getmttextver2( selflang , "buttonmelee" ) );
            }

        case "host":
            return getlangdataver2( selflang ,
                "^7[^5host^7]" ,
                "^7[^5ホスト^7]" ,
                "^7[^5主持人^7]" ,
                "^7[^5хозяин^7]" ,
                "^7[^5gastgeber^7]" );



        default:
            if ( !isdefined( textid ) ) textid = "";
            return textid;
    }
    
    if ( !isdefined( textid ) ) textid = "";
    return textid;
}




// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// CP Default
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



ongesture()
{
    
}


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// MP Default
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //


//init(){}
_id_13223(){}
turn_on_have_target_hud( var_0 ){}
setupchallengelocales(){}
getchallengemapid(){}
_id_11ADB(){}
_id_11AD9(){}
_id_11AD7(){}
mapchallengelocalesfortuneskeep(){}
_id_11AD8( var_0 ){}
_id_11AD6( var_0 ){}
challengesenabled(){}
challengesenabledforplayer(){}
relic_amped_is_there_valid_new_victim(){}
getatvspawns(){}
_id_140DB( var_0 ){}
_id_12C6E( var_0 ){}
_id_1383B( var_0 ){}
getchallengestatcacheamount( var_0 ){}
reportchallengestatamount( var_0, var_1 ){}
_id_138D5( var_0 ){}
getextractionpadent( var_0, var_1 ){}
_id_13C45(){}
flushchallengestat( var_0 ){}
incchallengestat( var_0, var_1 ){}
flushchallengestats(){}
onplayerkilled( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ){}
_id_11FFC( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 ){}
_id_12097( var_0, var_1 ){}
chooseanim_arrival_forcode( var_0, var_1, var_2, var_3, var_4, var_5 ){}
_id_14010(){}
vehiclekilled( var_0, var_1, var_2, var_3, var_4 ){}
equipmentdestroyed( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
killstreakkilled( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
ondeath( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
onplayerkillassist( var_0 ){}
_id_12047( var_0, var_1 ){}
_id_1204A( var_0, var_1, var_2, var_3, var_4, var_5, var_6 ){}
_id_12032( var_0, var_1, var_2, var_3 ){}
_id_12021( var_0 ){}
_id_12003( var_0 ){}
_id_1201F( var_0 ){}
_id_12062( var_0 ){}
_id_12096( var_0 ){}
_id_12092( var_0 ){}
_id_1203D( var_0 ){}
ondestroyedbytrophy(){}
gettouchinglocaletriggers( var_0, var_1 ){}
run_laser_vfx_loop( var_0 ){}
_id_1200A( var_0, var_1 ){}
_id_12009( var_0, var_1, var_2 ){}
_id_1204B( var_0, var_1 ){}
_id_1205F( var_0, var_1 ){}
_id_12060( var_0 ){}
_id_12002(){}
_id_120A8( var_0 ){}
_id_12098( var_0 ){}
_id_12004( var_0, var_1 ){}
_id_120A4( var_0, var_1 ){}
_id_12061( var_0 ){}
_id_12053( var_0 ){}
_id_12050( var_0, var_1 ){}
_id_1203C( var_0 ){}
_id_1205A( var_0 ){}
_id_1208F(){}
//ongesture(){}
_id_1301E( var_0, var_1 ){}
_id_12000( var_0 ){}
_id_12007( var_0, var_1 ){}
_id_12094(){}
_id_1207C(){}
_id_14583( var_0, var_1 ){}
_id_12C3F( var_0, var_1 ){}
_id_13276(){}
routers_picked_up( var_0 ){}
init_turrets( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 ){}
runplunderextractsitetimer( var_0 ){}
resetstreamerposhint(){}
init_silo_elevator( var_0, var_1, var_2, var_3 ){}
init_sentry_traps( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 ){}
relic_squadlink_onsteppedclose(){}
runleadmarkers( var_0 ){}
play_station_closed_vo( var_0 ){}
play_stealthy_disguise_vo( var_0, var_1 ){}
play_sound_from_closest_player( var_0 ){}
_id_12CE0( var_0, var_1 ){}
watchreloading( var_0 ){}
va_cluster_spawnpoint_valid( var_0 ){}
turret_struct( var_0 ){}
unset_relic_focus_fire( var_0 ){}
useserverhud( var_0 ){}
make_c4_pick_up_interact( var_0, var_1 ){}
_id_1424B(){}
update_objective_ownerclient( var_0 ){}
_id_12083(){}
_id_12005(){}
_id_120A9( var_0 ){}
_id_125F3(){}
onplayerteamrevive( var_0, var_1 ){}
onsuccessfulhit( var_0 ){}
onspawn(){}
updatesuperweaponkills( var_0, var_1 ){}
updatesuperkills( var_0, var_1, var_2 ){}
resistedstun( var_0 ){}
triggereddelayedexplosion(){}
minedestroyed( var_0, var_1, var_2 ){}
//roundbegin(){}
roundend( var_0 ){}
playerdamaged( var_0, var_1, var_2, var_3, var_4, var_5 ){}
processuavassist( var_0, var_1 ){}
killstreakdamaged( var_0, var_1, var_2, var_3, var_4 ){}
unsetreduceregendelayonkill( var_0 ){}
getkillstreaknamefromweapon( var_0 ){}
processfinalkillchallenges( var_0, var_1 ){}
usedkillstreak( var_0 ){}
resetstuckthermite(){}
attachmentgroup( var_0 ){}
getoperatorfavoriteweapon( var_0 ){}
