//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2025/03/01
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2025/03/01
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
// EN : Writing separate processing for Donetsk and Retail.
// EN : For retail use, comment out the "for Donetsk" part.
// EN : Then uncomment the "for Retail" part.
// JA : 注意！！：
// JA : Donetsk向けとRetail向けの処理を分けて書いています
// JA : Retail向けに使うには "for Donetsk" 部分をコメントアウトしてください
// JA : そして "for Retail" 部分のコメントアウトを外してください。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://






//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// EN : Attention!!: 
// EN : The functions below are required when running a custom GSC using the GSC asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// EN : If you delete them, it will no longer function and you will get DEV ERROR 1141.
// JA : 注意！！：
// JA : ここから下にある関数は、GSCアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムGSCを実行する時に必要な関数です。
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
// en : initialization process (loaded during map load after match start)
// en : * this initialization function is for loading the gsc asset "scripts\mp\gametypes\br_gametype_payload.gsc")
// en : * if you use this gsc with donetsk 1816.gscbin, you do not need this init( ) function.
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// ja : ※この初期化関数はgscアセット「scripts\mp\gametypes\br_gametype_payload.gsc」が読み込むための関数です）
// ja : ※donetsk 1816.gscbin でこのgscを使用する場合、この init( ) 関数は不要です
//++++++++++++++++++++++++++++++
init( )
{
    level thread initproject( );
}



//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
// en : attention!!: 
// en : the functions above are required when running a custom gsc using the gsc asset "scripts\mp\gametypes\br_gametype_payload.gsc".
// en : if you delete them, it will no longer function and you will get dev error 1141.
// ja : 注意！！：
// ja : ここから上にある関数は、gscアセット「scripts\mp\gametypes\br_gametype_payload.gsc」でカスタムgsc実行する時に必要な関数です。
// ja : 削除するとdev error 1141で機能しなくなります。
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::://





//++++++++++++++++++++++++++++++
// en : initialization process (loaded during map load after match start.)
// en : * this initialization function is read by "1816.gscbin" (scripts\mp\art.gsc).
// en : * if you use a gsc other than "1816.gscbin", this main( ) function is not necessary.
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
// ja : ※この初期化関数は 「1816.gscbin」（scripts\mp\art.gsc）が読み込むための関数です）
// ja : ※「1816.gscbin」以外のgscを使用する場合、この main( ) 関数は不要です
//++++++++++++++++++++++++++++++
//main( )
//{
//    level thread initproject( );
//}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : initialization process and main loop.
// ja : 初期化処理・基本ループ
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : system initialization process (measures to prevent custom gsc from being loaded in twenty)
// ja : システム初期化処理（カスタムgscが二十で読み込まれないようにするための対策）
//++++++++++++++++++++++++++++++
initproject( )
{
    
    if ( isdefined( level.patchinit ) ) return;
    level.patchinit = true;

    level thread buildweaponmap( );
    
    // en : create various definitions
    // ja : 各種定義を作成する
    level.lvlstat = [];

    // en : subthread onplayerconnect( ) for the entire room
    // ja : 部屋全体に onplayerconnect( ) をサブスレッドで実行する
    level thread onplayerconnect( );
}




//++++++++++++++++++++++++++++++
// en : processing when a player connects to a room
// ja : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
onplayerconnect( )
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
        player thread onplayerspawned( );
    }
}



//++++++++++++++++++++++++++++++
// en : processing that occurs when a player spawns in-game
// ja : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
onplayerspawned( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    
    // en : set to english
    // ja : 英語設定にする
    self.curlang = 0;
    // en : set as host
    // ja : ホスト設定にする
    self.verificationstatusindex = 5;

    // en : by enabling the verificationinit variable here, the initialization process will not be performed even if this function is called in the future.
    // ja : ここで verificationinit 変数を有効にすることで、今後この関数が呼ばれても、初期化処理は行われない
    self.verificationinit = true;

    // en : promotional message in the center of the screen
    // ja : 画面中央に宣伝メッセージ
    self thread execpromotionalmessage( );

    if ( self ishost( ) )
    {
        // en : button monitoring process
        // ja : ボタンモニタリング処理
        self thread onbuttonmonitoring( );
    }


    while ( true )
    {
        // en : wait for yourself to "spawn in-game"
        // ja : 自分が「インゲーム上にスポーンした」ことを待つ
        self waittill( "spawned_player" );

        // en : display a "welcome" message every time you spawn
        // ja : スポーン時に毎回「ようこそ」メッセージを表示する
        self showwelocomemessage( );
        
        // en : execute processing when applying custom game mode
        // ja : カスタムゲームモード適応時の処理を実行する
        self customgamemodechecker( );
    }
}



//++++++++++++++++++++++++++++++
// en : promotional message in the center of the screen
// ja : 画面中央に宣伝メッセージ
//++++++++++++++++++++++++++++++
execpromotionalmessage( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    // en : infinite loop until game exit
    // ja : ゲーム退出まで無限ループ
    while ( true )
    {
        // en : get the translation equivalent to the specified text id in the current language
        // ja : 現在の言語で、指定したテキストidに相当する翻訳を取得する
        l_textprojectname       = getmttext( self.curlang , "projectname" );
        l_textcreated           = getmttext( self.curlang , "created" );
        l_textlearngsc          = getmttext( self.curlang , "learngsc" );

        // en : display a message in the center of the screen
        // ja : 画面中央にメッセージを表示する
        self iprintln( l_textprojectname + l_textcreated + l_textlearngsc );

        // en : wait until the displayed character disappears, then return to the beginning of the loop and display the character again.
        // ja : 表示された文字が消えるまで待ち、消えたらまたループの先頭に戻って文字を表示する
        wait 4;
    }
}



//++++++++++++++++++++++++++++++
// en : button monitoring process
// ja : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
onbuttonmonitoring( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    
    // en: if button monitoring processing has already been executed, do not perform subsequent processing.
    // ja: ボタンモニタリング処理が実行済みである場合、以降の処理を行わない
    if ( isdefined( self.buttonmonitoring ) )
        return;

    // en: mark button monitoring processing as executed
    // ja: ボタンモニタリング処理を実行済みとする
    self.buttonmonitoring = true;

    // en: infinite loop only while button monitoring processing is running
    // ja: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( isdefined( self.buttonmonitoring ) )
    {
        // en: while the "use" button is pressed and the "aim" button is pressed
        // ja: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されている間
        if ( self getkeycodepressed( "buttonads" , "buttonads" ) && self getkeycodepressed( "buttonuse" , "buttonuse" ) )
                {
            // en : switch the enable/disable state of the function "quickscopelobby"
            // ja : 機能 "quickscopelobby" の有効/無効を切り替える
            self thread onfquickscopelobby( );
            // en: interval wait time. without this, pressing the ads + use button even for a moment will execute the process over 100 times.
            // ja: インターバル待機時間、これを入れないとads + useボタンを一瞬でも押したら100回以上大量に処理が実行されてしまいます
            wait 1;
        }
        else if ( self getkeycodepressed( "buttonads" , "buttonads" ) && self getkeycodepressed( "buttonmelee" , "buttonmelee" ) )
        {
            // en : change language
            // ja : 言語を変更する
            self changelanguage( );
            // en: interval wait time. without this, pressing the ads + melee button even for a moment will execute the process over 100 times.
            // ja: インターバル待機時間、これを入れないと ads + melee ボタンを一瞬でも押したら100回以上大量に処理が実行されてしまいます
            wait 0.3;
        }

        // en: if you do not wait for a few seconds during an infinite loop, processing will slow down in the infinite loop thread.
        // ja: 無限ループ中は必ず数秒でも待機しないと、無限ループスレッド内で処理落ちが発生します
        wait 0.001;
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : general processing.
// ja : 汎用処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : empty function that displays nothing
// ja : 何も表示しない空の関数
//++++++++++++++++++++++++++++++
emptyfunction( )
{

}



//++++++++++++++++++++++++++++++
// en : change language
// ja : 言語を変更する
//++++++++++++++++++++++++++++++
changelanguage( )
{
    // en: change the current language to the language selected in the mod menu
    // ja: 現在の言語を、モッドメニューで選択中の言語に変更する
    self.curlang++;
    
    if ( 5 < self.curlang ) self.curlang = 0;
}



//++++++++++++++++++++++++++++++
// en : obtain input judgment results tailored to keyboard and controller
// ja : キーボード、コントローラーに合わせた入力判定結果を取得する
//++++++++++++++++++++++++++++++
getkeycodepressed( kbtype , controllertype )
{
    l_keytype = "";

    // en: if you are using a gamepad
    // ja: ゲームパッドを使用中の場合
    if ( self usinggamepad( ) ) { l_keytype = controllertype; }
    // en: when using a keyboard and mouse
    // ja: キーボード・マウスを使用中の場合
    else                        { l_keytype = kbtype; }
    
    // en: get the input judgment corresponding to the specified key
    // ja: 指定のキーに相当する入力判定を取得する
    switch ( l_keytype )
    {
        // en: while the "aim" button is pressed
        // ja: 「エイム」ボタンが押されている間
        case "buttonads":               return self adsbuttonpressed( );
        // en: when the button to throw tactical is pressed
        // ja: タクティカルを投げるボタンが押されたら
        case "buttontactical":          return self secondaryoffhandbuttonpressed( );
        // en: while the "use" button is pressed
        // ja: 「使用」ボタンが押されている間
        case "buttonuse":               return self usebuttonpressed( );
        // en: when the "reload" button is pressed
        // ja: 「リロード」ボタンが押されたら
        case "buttonreload":            return self reloadbuttonpressed( );
        // en: when the "melee attack" button is pressed
        // ja: 「近接攻撃」ボタンが押されたら
        case "buttonmelee":             return self meleebuttonpressed( );
        // en: when the "attack" button is pressed
        // ja: 「攻撃」ボタンが押されたら
        case "buttonattack":            return self attackbuttonpressed( );
        // en: when the button to throw lethal is pressed
        // ja: リーサルを投げるボタンが押されたら
        case "buttonlethal":            return self fragbuttonpressed( );
        // en: when the "crouch/prone" button is pressed
        // ja: 「しゃがみ・伏せ」ボタンが押されたら
        case "buttonstance":            return self stancebuttonpressed( );
        // en: when the "jump" button is pressed
        // ja: 「ジャンプ」ボタンが押されたら
        case "buttonjump":              return self jumpbuttonpressed( );
        // en: when the "run/hold your breath" button is pressed
        // ja: 「走る・息止め」ボタンが押されたら
        case "buttonsprint":            return self sprintbuttonpressed( );

        case "none":                    return true;
        case "noneoff":                 return false;
        case "buttondpadup":            return isdefined( self.optstat[l_keytype] );
        case "buttondpaddown":          return isdefined( self.optstat[l_keytype] );

        // en: if any other specific key is pressed
        // ja: それ以外の特定のキーが押されたら
        //default: return self scripts\mp\utility\player::_getbuttonpressed( l_keytype );
        //default: return self buttonpressed( l_keytype );
        default:
            if ( !isdefined( self.buttonspressed ) )            { return false; }
            if ( !isdefined( self.buttonspressed[l_keytype] ) ) { return false; }
            return self.buttonspressed[l_keytype].pressed;

    }
}



//++++++++++++++++++++++++++++++
// en : returns the text sentence of the corresponding permission status from "current permission status"
// ja : 「現在の権限状態」から、該当する権限状態のテキスト文章を返す
//++++++++++++++++++++++++++++++
getverifiedtext( status )
{
    switch ( status )
    {
        case 1:     return "verified";      // level.moddef.lv_verified
        case 2:     return "vip";           // level.moddef.lv_vip
        case 3:     return "admin";         // level.moddef.lv_admin
        case 4:     return "cohost";        // level.moddef.lv_cohost
        case 5:     return "host";          // level.moddef.lv_host
        default:    return "unverified";    // level.moddef.lv_unverified
    }
}



//++++++++++++++++++++++++++++++
// en : check if you have been assigned permissions of "unverified" or higher
// ja : 自分に「未承認」以上の権限が割り振られているか調べる
//++++++++++++++++++++++++++++++
isverified( )
{
    // en: if the approval authority has not been initialized yet, it is considered "unverified".
    // ja: まだ承認権限の初期化がされていない場合は「未承認」とみなす
    if ( !isdefined( self.verificationinit ) )
        return false;

    // en: check if it is greater than or equal to "unverified" and return the result
    // ja: 「unverified」以上かどうかを確認して、その結果を返す
    if ( self.verificationstatusindex <= 0 )
        return false;
    
    return true;
}



//++++++++++++++++++++++++++++++
// en : display a "welcome" message
// ja : 「ようこそ」メッセージを表示する
//++++++++++++++++++++++++++++++
showwelocomemessage( )
{
    l_quickscope = "quickscopelobby";
    // en : if you are not assigned permissions higher than "unverified", do nothing.
    // ja : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self isverified( ) ) && ( !isdefined( level.lvlstat[l_quickscope] ) ) )
        return;

    // en : get the translation equivalent to the specified text id in the current language
    // ja : 現在の言語で、指定したテキストidに相当する翻訳を取得する
    l_textwelcome           = getmttext( self.curlang , "welcometo" );
    l_textprojectname       = getmttext( self.curlang , "projectname" );
    l_textmoddedlobby       = getmttext( self.curlang , "moddedlobby" );
    
    l_textyourmenustatus    = getmttext( self.curlang , "yourmenustatus" );
    l_textverifiedlevel     = getmttext( self.curlang , getverifiedtext( self.verificationstatusindex ) );
    l_textmenudescription1  = getmttext( self.curlang , "modmenuopendescription1" );
    l_textmenudescription2  = getmttext( self.curlang , "modmenuopendescription2" );

    if ( isdefined( level.lvlstat[l_quickscope] ) )
    {
        l_textmoddedlobby       = getmttext( self.curlang , "welcomequickscopelobby" );
        l_textyourmenustatus    = getmttext( self.curlang , "quickscopelobbydescription1" );
        l_textverifiedlevel     = "";
        l_textmenudescription1  = getmttext( self.curlang , "quickscopelobbydescription2" );
    }

    // en : display a message in the kill log area at the bottom left of your screen(the kill log has 6 lines, so fill in 3 blank lines)
    // ja : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iprintln( "" );
    self iprintln( "" );
    self iprintln( l_textmenudescription2 );
    self iprintln( l_textmenudescription1 );
    self iprintln( l_textyourmenustatus );
    self iprintln( l_textwelcome + l_textprojectname + l_textmoddedlobby );
}



//++++++++++++++++++++++++++++++
// en : general-purpose processing to display the fixed phrase "[category] sentence 1: sentence 2"
// ja : "[カテゴリ] 文章1 : 文章2" という定型文を表示するための汎用処理
//++++++++++++++++++++++++++++++
showcentermessage( selflang , tagname , msg1 , msg2 , content , prefix )
{
    // en : define empty string
    // ja : 空の文字列を定義
    l_content = "";
    
    // en : if sentence 2 is set, get the translation of sentence 2
    // ja : 文章2が設定されている場合は、文章2の翻訳を取得する
    if ( isdefined( msg2 ) )
        l_content = " : ^5" + getmttext( selflang , msg2 );
    // en : if a content sentence is set, set the sentence as is.
    // ja : コンテンツ文が設定されている場合は、そのままの文章を設定する
    else if ( isdefined( content ) )
        l_content = " : ^5" + content;
    
    // en : if endings are set, add the ending translation to the end
    // ja : 語尾が設定されている場合は、語尾の翻訳を最後に追加する
    if ( isdefined( prefix ) )
        l_content = l_content + getmttext( selflang , prefix );

    // en : display fixed phrases in the center of the screen
    // ja : 定型文を画面中央に表示する
    self iprintlnbold( getmttext( selflang , tagname ) + getmttext( selflang , msg1 ) + l_content );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : general processing (parameter)
// ja : 汎用処理（パラメーター）
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : display text and execute functions according to the on/off state of specified level variables.
// ja : 指定の level 変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
switchonflevelfunction( optname , optfunc , message , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6  , optarg7 )
{
    // en : since the process of deleting the previously created case is in progress, the process is interrupted as it cannot be recreated.
    // ja : 前回作った筐体の削除処理が実行中の為、再作成できないとして処理を中断する
    if ( isdefined( level.lvlstat[optname + "deleting"] ) )
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "waitendfunction" , undefined , undefined , undefined );
        return;
    }

    // en: if the specified level variable does not already exist
    // ja: 指定の level 変数がまだ存在しない場合
    if ( !isdefined( level.lvlstat[optname] ) )
    {
        // en : execute the process when the specified parameter is enabled
        // ja : 指定のパラメーターを有効にした時の処理を実行する
        self enabledlevelparameter( self.curlang , optname , undefined , message , true , optfunc , true , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 );
    }
    // en: if the specified level variable has already been created
    // ja: 指定の level 変数が既に作られている場合
    else
    {
        // en : execute the process when the specified parameter is disabled
        // ja : 指定のパラメーターを無効にした時の処理を実行する
        self disabledlevelparameter( self.curlang , optname , undefined , true );
    }
}



//++++++++++++++++++++++++++++++
// en : processing when the specified level parameter is enabled
// ja : 指定の level パラメーターを有効にした時の処理
//++++++++++++++++++++++++++++++
enabledlevelparameter( selflang , optname1 , optname2 , message , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 )
{
    l_optname = "";

    // en: if suboptions are specified
    // ja: サブオプションが指定されている場合は
    if ( isdefined( optname2 ) )
    {
        l_optname = optname2;
        
        // en: set the specified data in the variable of the specified subfunction
        // ja: 指定のサブ機能の変数に、指定のデータを設定する
        level.lvlstat[optname1].moddata[optname2] = optdata;
        self.optstat[optname1].moddata[optname2] = optdata;
    }
    // en: if no suboptions are specified
    // ja: サブオプションが指定されていない場合は
    else if ( isdefined( optname1 ) )
    {
        l_optname = optname1;

        // en: enable specified variable
        // ja: 指定の変数を有効にする
        level.lvlstat[optname1] = true;
        self.optstat[optname1] = true;
        
        // en: add structure to "lvlstat" variable
        // ja: "lvlstat" 変数に構造体を追加する
        level.lvlstat[optname1] = spawnstruct( );
        self.optstat[optname1] = spawnstruct( );
        
        // en: create an array to set parameters dedicated to each function
        // ja: 各機能専用のパラメーターを設定するための配列を作成
        level.lvlstat[optname1].moddata = [];
        self.optstat[optname1].moddata = [];
    }

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
    {
        // en: if you want to display a specific message
        // ja: 特定のメッセージを表示する場合
        if ( isdefined( message ) )
        {
            // en: display the text "[notice] message" in the center of the screen
            // ja: 画面中央に "[通知] メッセージ" という文章を表示する
            self showcentermessage( selflang , "notice" , message , undefined , undefined , undefined );
        }
        // en: if no message is specified
        // ja: メッセージの指定がない場合
        else
        {
            // en: display the text "[enabled] function name" in the center of the screen
            // ja: 画面中央に「[有効化] 機能名称」という文章を表示する
            self showcentermessage( selflang , "enabled" , l_optname , undefined , undefined , undefined );
        }
    }

    // en: if a function to execute is specified
    // ja: 実行する関数が指定されている場合
    if ( isdefined( optfunc ) )
    {
        // en: execute the specified function in a subthread
        // ja: 指定した関数をサブスレッドで実行する
        if      ( isdefined( optarg7 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 ); }
        else if ( isdefined( optarg6 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 ); }
        else if ( isdefined( optarg5 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 , optarg3 , optarg4 , optarg5 ); }
        else if ( isdefined( optarg4 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 , optarg3 , optarg4 ); }
        else if ( isdefined( optarg3 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 , optarg3 ); }
        else if ( isdefined( optarg2 ) )    { self thread [[ optfunc ]]( optarg1 , optarg2 ); }
        else if ( isdefined( optarg1 ) )    { self thread [[ optfunc ]]( optarg1 ); }
        else                                { self thread [[ optfunc ]]( ); }
    }
}



//++++++++++++++++++++++++++++++
// en : processing when the specified level parameter is disabled
// ja : 指定の level パラメーターを無効にした時の処理
//++++++++++++++++++++++++++++++
disabledlevelparameter( selflang , optname1 , optname2 , notice )
{
    l_optname = "";

    // en: if suboptions are specified
    // ja: サブオプションが指定されている場合は
    if ( isdefined( optname2 ) )
    {
        l_optname = optname2;

        // en: disable (discard) the specified subfunction variable
        // ja: 指定のサブ機能の変数を無効（破棄）する
        level.lvlstat[optname1].moddata[optname2] = undefined;
        self.optstat[optname1].moddata[optname2] = undefined;
    }
    // en: if no suboptions are specified
    // ja: サブオプションが指定されていない場合は
    else
    {
        l_optname = optname1;

        // en: disable (discard) the specified variable
        // ja: 指定の変数を無効（破棄）する
        level.lvlstat[optname1] = undefined;
        self.optstat[optname1] = undefined;
    }

    // en: set the specified option name as the function termination trigger
    // ja: 指定のオプション名の終了トリガーを通知する
    level notify( "end_lobby_" + l_optname );

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
    {
        // en: display the text "[disabled] function name" in the center of the screen
        // ja: 画面中央に「[無効化] 機能名称」という文章を表示する
        self showcentermessage( selflang , "disabled" , l_optname , undefined , undefined , undefined );
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : weapons system
// ja : 武器システム
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //







//++++++++++++++++++++++++++++++
// en : get weapon group list
// ja : 武器グループリストを取得する
//++++++++++++++++++++++++++++++
getweapongrouplist( withexplosives , specifiedgroup )
{
    l_weapontype = "";
    l_weaponarray = [];

    // en : if a single weapon group is specified, recreate the weapon group array to only have one.
    // ja : 単一の武器グループの指定がある場合は、武器グループ配列を作り直して1個だけにする
    if ( isdefined( specifiedgroup ) )
    {
        l_weaponarray[0] = specifiedgroup;
    }
    // en : if a single weapon group is not specified
    // ja : 単一の武器グループの指定がない場合
    else
    {
        // en : loop for the number of weapon type groups
        // ja : 武器種類のグループ数分ループ
        for ( weapontype = 0; weapontype <= 14; weapontype++ )
        {
            // en : assemble the weapon type string “weapon_??”
            // ja : 「weapon_??」という武器種類の文字列を組み立てる
            l_weapontype = "weapon_";
            switch ( weapontype )
            {
                case 0:     l_weapontype += "assault";          break;
                case 1:     l_weapontype += "smg";              break;
                case 2:     l_weapontype += "lmg";              break;
                case 3:     l_weapontype += "sniper";           break;
                case 4:     l_weapontype += "dmr";              break;
                case 5:     l_weapontype += "shotgun";          break;
                case 6:     l_weapontype += "pistol";           break;
                case 7:     l_weapontype += "projectile";       break;
                case 8:     l_weapontype += "machine_pistol";   break;
                case 9:     l_weapontype += "grenade";          break;
                case 10:    l_weapontype += "explosive";        break;
                case 11:    l_weapontype += "rail";             break;
                case 12:    l_weapontype += "beam";             break;
                case 13:    l_weapontype += "melee";            break;
                case 14:    l_weapontype += "other";            break;
            }
            // en : add the assembled weapon type string to the array
            // ja : 組み立てた武器種類の文字列を配列に追加する
            l_weaponarray = scripts\engine\utility::array_add( l_weaponarray , l_weapontype );
        }

        // en : exclude explosives from array if random weapons do not include explosives
        // ja : ランダム武器に爆発物を含めない場合は、配列から爆発物を除外する
        if ( !isdefined( withexplosives ) )
        {
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_projectile" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_grenade" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_explosive" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_rail" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_beam" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_melee" );
            l_weaponarray = scripts\engine\utility::array_remove( l_weaponarray , "weapon_other" );
        }
    }

    return l_weaponarray;
}



//++++++++++++++++++++++++++++++
// en : get weapon camouflage list
// ja : 武器迷彩リストを取得する
//++++++++++++++++++++++++++++++
getweaponcamouflagelist( )
{
    l_camotype = "";
    l_camoarray = [];

    // en : loop for the number of camouflage types
    // ja : 迷彩種類の個数分ループ
    for ( camosize = 0; camosize <= 11; camosize++ )
    {
        // en : loop for the number of camouflage type groups
        // ja : 迷彩種類のグループ数分ループ
        for ( camotype = 0; camotype <= 9; camotype++ )
        {
            l_camotype = "camo_";

            // en : if the current loop count is less than 10, fill in 0 with the prefix
            // ja : 今のループ回数が10回未満であれば、プレフィックスで0を補完する
            if ( camosize < 10 ) { l_camotype += "0"; }
            l_camotype += "" + (camosize + 1);

            // en : assemble a camouflage type string like "camo_01a"
            // ja : 「camo_01a」のような迷彩種類の文字列を組み立てる
            switch ( camotype )
            {
                case 0: l_camotype += "a"; break;
                case 1: l_camotype += "b"; break;
                case 2: l_camotype += "c"; break;
                case 3: l_camotype += "d"; break;
                case 4: l_camotype += "e"; break;
                case 5: l_camotype += "f"; break;
                case 6: l_camotype += "g"; break;
                case 7: l_camotype += "h"; break;
                case 8: l_camotype += "i"; break;
                case 9: l_camotype += "j"; break;
            }
            // en : add the assembled camouflage type string to the array
            // ja : 組み立てた迷彩種類の文字列を配列に追加する
            l_camoarray = scripts\engine\utility::array_add( l_camoarray , l_camotype );
        }
    }

    return l_camoarray;
}



//++++++++++++++++++++++++++++++
// en : create a blueprint weapon
// ja : 設計図武器を作成する
//++++++++++++++++++++++++++++++
createblueprintweapon( weaponid , rootid )
{
    l_bpnum = 1;

    // en : randomly select a blueprint number and obtain the corresponding blueprint for the weapon you currently have.
    // ja : 設計図番号をランダムで抽出し、現在の手持ちの武器の該当の設計図を取得する
    switch ( weaponid )
    {
        case "random":
        case "currentbp":
        case "bpcamo":
            l_bpnum = randomintrange( 1 , 51 );
            break;

        case "t9bp":
        case "s4bp":
            l_bpnum = randomintrange( 1 , 5 );
            break;
    }
    
    l_weaponbuild = scripts\mp\class::fixcollision( rootid , undefined , undefined , l_bpnum , undefined , undefined , scripts\cp_mp\utility\game_utility::isnightmap( ) );
    // en : if generated weapon data exists
    // ja : 生成された武器データが存在する場合
    if ( isdefined( l_weaponbuild ) )
    {
        // en : get the full weapon name from the generated weapon data
        // ja : 生成された武器データから、完全な武器名を取得する
        return scripts\mp\utility\weapon::getweaponfullname( l_weaponbuild );
    }

    return undefined;
}



//++++++++++++++++++++++++++++++
// en : create a specified weapon
// ja : 指定された武器を作成する
//++++++++++++++++++++++++++++++
createspecifiedweapon( weaponid , attachmentsid , attachmenttype , camoid )
{
    // en : generate weapon data from the specified weapon type and camouflage type.
    // ja : 指定の武器種類、迷彩種類から、武器データを生成する
    l_weaponbuild = scripts\mp\class::buildweapon( scripts\mp\utility\weapon::getweaponrootname( weaponid ) , attachmentsid , camoid , "none" , -1 , undefined , undefined , undefined , scripts\cp_mp\utility\game_utility::isnightmap( ) );
    // en : if generated weapon data exists
    // ja : 生成された武器データが存在する場合
    if ( isdefined( l_weaponbuild ) )
    {
        // en : get random attachment
        // ja : ランダムアタッチメント取得
        l_weaponbuild = providerandomattachment( l_weaponbuild , attachmenttype );
        // en : if generated weapon data exists
        // ja : 生成された武器データが存在する場合
        if ( isdefined( l_weaponbuild ) )
        {
            // en : get the full weapon name from the generated weapon data
            // ja : 生成された武器データから、完全な武器名を取得する
            return scripts\mp\utility\weapon::getweaponfullname( l_weaponbuild );
        }
    }
    return undefined;
}



//++++++++++++++++++++++++++++++
// en : get result from give specified weapon
// ja : 指定した武器を与える処理の結果を取得する
//++++++++++++++++++++++++++++++
getresultfromprovideweapon( weaponfullname , onlygetid , changehand , akimbo , notice )
{
    // en : if you want to get only the weapon id
    // ja : 武器idのみを取得する場合
    if ( isdefined( onlygetid ) )
    {
        return weaponfullname;
    }
    // en : when giving a player a weapon
    // ja : 武器をプレイヤーに持たせる場合
    else
    {
        // en : gives the specified weapon and returns the result whether it was successful or not.
        // ja : 指定した武器を与えて、成功したかどうかの結果を返す
        l_weapondata = self configureweapon( weaponfullname , undefined , changehand , true , akimbo , notice );
        return l_weapondata;
    }
}



//++++++++++++++++++++++++++++++
// en : give specified weapon
// ja : 指定した武器を与える
//++++++++++++++++++++++++++++++
provideweapon( weaponid , inprojectile , onlygroup , attachmentid , camoid , camogroup , akimbo , changehand , notice , onlygetid )
{ 
    l_weaponarray = [];
    l_camoarray = [];
    l_camoid = camoid;
    l_targetweapon = undefined;
    l_rootweapon = undefined;
    l_weaponbuild = undefined;
    l_bpnum = 0;

    switch ( weaponid )
    {
        // en : if the weapon type is specified as "random"
        // ja : 武器種類が「ランダム」と指定されている場合
        case "random":
            // en : get weapon group list
            // ja : 武器グループリストを取得する
            l_weaponarray = getweapongrouplist( inprojectile , onlygroup );
            break;
            
        // en : if the weapon type is specified as "currentbp"
        // ja : 武器種類が "currentbp" と指定されている場合
        case "currentbp":
            // en: get information about the weapon you currently have
            // ja: 今持っている武器の情報を取得
            l_targetweapon = self getcurrentweapon( );
            break;
            
        // en : if the weapon type is specified as "t9bp"
        // ja : 武器種類が "t9bp" と指定されている場合
        case "t9bp":
            // en: randomly pick a weapon name from the cw weapon array
            // ja: cw武器配列からランダムに武器名を取り出す
            l_targetweapon = scripts\engine\utility::random( level.lvlstat["wplist_t9wp"] );
            break;
            
        // en : if the weapon type is specified as "s4bp"
        // ja : 武器種類が "s4bp" と指定されている場合
        case "s4bp":
            // en: randomly pick a weapon name from the vg weapon array
            // ja: vg武器配列からランダムに武器名を取り出す
            l_targetweapon = scripts\engine\utility::random( level.lvlstat["wplist_s4wp"] );
            break;
    }

    if ( ( weaponid == "currentbp" ) || ( weaponid == "t9bp" ) || ( weaponid == "s4bp" ) )
    {
        // en: get the root name of the weapon
        // ja: 武器のルート名を取得
        if ( isdefined( l_targetweapon ) ) { l_rootweapon = scripts\mp\utility\weapon::getweaponrootname( l_targetweapon ); }
        // en: if the weapon information does not exist, the process is aborted.
        // ja: 武器情報が存在しない場合、処理を中断する
        if ( !isdefined( l_targetweapon ) && !isdefined( l_rootweapon ) )
        {
            self showcentermessage( self.curlang , "failed" , "weaponnotavailable" , undefined , undefined , undefined );
            return;
        }
    }
    
    // en : if the camouflage type is specified
    // ja : 迷彩種類が指定されている場合
    if ( isdefined( camoid ) )
    {
        // en : if the camouflage type is specified as "random"
        // ja : 迷彩種類が「ランダム」と指定されている場合
        if ( camoid == "random" )
        {
            // en : get weapon camouflage list
            // ja : 武器迷彩リストを取得する
            l_camoarray = getweaponcamouflagelist( );
        }
        // en : get a random camouflage within a camouflage group
        // ja : 迷彩グループ内でランダムに迷彩を取得する
        else if ( camoid == "group" )
        {
            l_camoid = "camo_" + ( randomintrange( 0 , 12 ) + 1 ) + camogroup;
        }
    }

    for ( i = 0; i < 150; i++ )
    {
        // en : if the camouflage type is specified
        // ja : 迷彩種類が指定されている場合
        if ( isdefined( camoid ) )
        {
            // en : if the camouflage type is specified as "random"
            // ja : 迷彩種類が「ランダム」と指定されている場合
            if ( camoid == "random" )
            {
                // en : pick a camouflage type randomly from the array
                // ja : 配列内からランダムに迷彩種類を取り出す
                l_camoid = scripts\engine\utility::random( l_camoarray );
            }
        }
        // en : if the camouflage type is not specified
        // ja : 迷彩種類が指定されていない場合
        else
        {
            // en : leave camouflage type unspecified
            // ja : 迷彩種類を未指定とする
            l_camoid = undefined;
        }

        // en : if the weapon type is specified as "currentbp" , "t9bp" , "s4bp"
        // ja : 武器種類が "currentbp" , "t9bp" , "s4bp" と指定されている場合
        if ( ( weaponid == "currentbp" ) || ( weaponid == "t9bp" ) || ( weaponid == "s4bp" ) )
        {
            // en : create a blueprint weapon
            // ja : 設計図武器を作成する
            l_weaponfullname = createblueprintweapon( weaponid , l_rootweapon );
            // en : if the weapon name exists, get result from give specified weapon
            // ja : 武器名が存在する場合、指定した武器を与える処理の結果を取得する
            if ( isdefined( l_weaponfullname ) )
            {
                l_result = self getresultfromprovideweapon( l_weaponfullname , onlygetid , changehand , akimbo , notice );
                return l_result;
            }
        }
        // en : if the weapon type is specified as "random"
        // ja : 武器種類が「ランダム」と指定されている場合
        else if ( weaponid == "random" )
        {
            // en : pick a weapon type randomly from the array
            // ja : 配列内からランダムに武器種類を取り出す
            l_weapongroupid = scripts\engine\utility::random( l_weaponarray );
            
            if ( isdefined( l_weapongroupid ) )
            {
                // en : randomly select a weapon from the weapon types
                // ja : 武器種類からランダムに武器を選ぶ
                l_weaponid = risktokens( l_weapongroupid );
                if ( isdefined( l_weaponid ) )
                {
                    if ( isdefined( l_camoid ) && ( l_camoid == "bpcamo" ) )
                    {
                        l_rootweapon = scripts\mp\utility\weapon::getweaponrootname( l_weaponid );
                        if ( isdefined( l_rootweapon ) )
                        {
                            // en : create a blueprint weapon
                            // ja : 設計図武器を作成する
                            l_weaponfullname = createblueprintweapon( weaponid , l_rootweapon );
                            // en : if the weapon name exists, get result from give specified weapon
                            // ja : 武器名が存在する場合、指定した武器を与える処理の結果を取得する
                            if ( isdefined( l_weaponfullname ) )
                            {
                                l_result = self getresultfromprovideweapon( l_weaponfullname , onlygetid , changehand , akimbo , notice );
                                return l_result;
                            }
                        }
                    }
                    else
                    {
                        // en : create a specified weapon
                        // ja : 指定された武器を作成する
                        l_weaponfullname = createspecifiedweapon( l_weaponid , undefined , attachmentid , l_camoid );
                        // en : if the weapon name exists, get result from give specified weapon
                        // ja : 武器名が存在する場合、指定した武器を与える処理の結果を取得する
                        if ( isdefined( l_weaponfullname ) )
                        {
                            l_result = self getresultfromprovideweapon( l_weaponfullname , onlygetid , changehand , akimbo , notice );
                            return l_result;
                        }
                    }
                }
            }
        }
        // en : when the weapon type is specified directly by id
        // ja : 武器種類が直接id指定されている場合
        else
        {
            l_attachmentlist = undefined;

            // en : if attachment id is specified
            // ja : アタッチメントidが指定されている場合
            if ( isdefined( attachmentid ) )
            {
                // en : if the attachment id is not specified as "random"
                // ja : アタッチメントidが "ランダム" と指定されていない場合
                if ( attachmentid != "random" )
                {
                    // en : add attachment id to weapon id
                    // ja : 武器idにアタッチメントidを追加する
                    weaponid += attachmentid;
                    // en : extract attachment id from weapon id
                    // ja : 武器idからアタッチメントidを取り出す
                    l_attachmentlist = strtok( weaponid , "+" );
                }
            }
            
            if ( isdefined( l_camoid ) && ( l_camoid == "bpcamo" ) )
            {
                l_rootweapon = scripts\mp\utility\weapon::getweaponrootname( weaponid );
                if ( isdefined( l_rootweapon ) )
                {
                    // en : create a blueprint weapon
                    // ja : 設計図武器を作成する
                    l_weaponfullname = createblueprintweapon( l_camoid , l_rootweapon );
                    // en : if the weapon name exists, get result from give specified weapon
                    // ja : 武器名が存在する場合、指定した武器を与える処理の結果を取得する
                    if ( isdefined( l_weaponfullname ) )
                    {
                        l_result = self getresultfromprovideweapon( l_weaponfullname , onlygetid , changehand , akimbo , notice );
                        return l_result;
                    }
                }
            }
            else
            {
                // en : create a specified weapon
                // ja : 指定された武器を作成する
                l_weaponfullname = createspecifiedweapon( weaponid , l_attachmentlist , attachmentid , l_camoid );
                // en : if the weapon name exists, get result from give specified weapon
                // ja : 武器名が存在する場合、指定した武器を与える処理の結果を取得する
                if ( isdefined( l_weaponfullname ) )
                {
                    l_result = self getresultfromprovideweapon( l_weaponfullname , onlygetid , changehand , akimbo , notice );
                    return l_result;
                }
            }
        }
        wait 0.001;
    }

    // en: display the text "[notification] weapon operation status: weapon id" in the center of the screen.
    // ja: 画面中央に "[通知] 武器の操作状態 : 武器id" という文章を表示する
    self showcentermessage( self.curlang , "notice" , "failedbuildweapon" , undefined , "onprovideweapon" , undefined );
    return "failedweapon";
}



//++++++++++++++++++++++++++++++
// en : get random attachment
// ja : ランダムアタッチメント取得
//++++++++++++++++++++++++++++++
providerandomattachment( weaponbuild , attachmentid )
{
    l_weaponbuild = weaponbuild;

    // en : if attachment id is specified
    // ja : アタッチメントidが指定されている場合
    if ( isdefined( attachmentid ) )
    {
        // en : if the attachment id is specified as "random"
        // ja : アタッチメントidが "ランダム" と指定されている場合
        if ( attachmentid == "random" )
        {
            // en : randomly determine the number of attachments
            // ja : アタッチメントの個数をランダムに決める
            l_attachmentmax = randomintrange( 1 , 8 );
            // en : loop for the number of attachments
            // ja : アタッチメントの個数分ループ
            for ( attachcount = 0; attachcount < l_attachmentmax; attachcount++ )
            {
                // en : get attachment types that can be set in weapon data
                // ja : 武器データに設定可能なアタッチメント種類を取得する
                l_attachmentdata = scripts\mp\weapons::getrandomgraverobberattachment( l_weaponbuild );
                // en : if attachment data exists
                // ja : アタッチメントデータが存在する場合
                if ( isdefined( l_attachmentdata ) )
                {
                    // en : add attachment to weapon data
                    // ja : 武器データにアタッチメントを追加する
                    l_weaponfulldata = scripts\mp\weapons::addattachmenttoweapon( l_weaponbuild , l_attachmentdata );
                    // en : update weapon data if weapon data integration is successful
                    // ja : 武器データの統合が成功している場合、武器データを更新する
                    if ( isdefined( l_weaponfulldata ) )
                    {
                        l_weaponbuild = l_weaponfulldata;
                    }
                }
            }
        }
    }

    return l_weaponbuild;
}



//++++++++++++++++++++++++++++++
// en : give or take away the specified weapon
// ja : 指定した武器を与えるか、もしくは取り上げる
//++++++++++++++++++++++++++++++
configureweapon( weapondata , takehand , changehand , randomchoose , akimbo , notice )
{
    l_weapondata = weapondata;
    l_textid = "failedbuildweapon";

    // en : if you already have the specified weapon
    // ja : 既に指定された武器を持っている場合
    if ( self hasweapon( weapondata ) )
    {
        // en : when picking up a weapon
        // ja : 武器を取り上げる場合
        if ( isdefined( takehand ) )
        {
            // en : pick up the specified weapon and initialize the weapon data
            // ja : 指定された武器を取り上げて、武器データを初期化する
            self scripts\cp_mp\utility\inventory_utility::_takeweapon( weapondata );
            l_weapondata = undefined;
            
            // en : set text id
            // ja : テキストidを設定
            l_textid = "takedweapon";

            // en : when switching weapons
            // ja : 武器を切り替える場合
            if ( isdefined( changehand ) )
            {
                // en : waits a millisecond to confirm that the weapon is no longer in your possession.
                // ja : 武器が手元から無くなったことを確認するため、ミリ秒待機する
                wait 0.001;
            }
        }
        // en : when giving a weapon
        // ja : 武器を与える場合
        else
        {
            // en : set text id
            // ja : テキストidを設定
            l_textid = "alreadyhaveweapon";
            // en : switch to the same weapon because you already have it
            // ja : 既に同じ武器を持っているため、その武器に切り替える
            self setspawnweapon( weapondata );
        }
    }
    // en : if you do not have the specified weapon
    // ja : 指定された武器を持っていない場合
    else
    {
        // en : when picking up a weapon
        // ja : 武器を取り上げる場合
        if ( isdefined( takehand ) )
        {
            // en : set text id
            // ja : テキストidを設定
            l_textid = "nohaveweapon";
            // en : set the result of failing to pick up a weapon because you no longer have one
            // ja : 既に武器を持っていないため、武器の取り上げに失敗した結果を設定する
            l_weapondata = undefined;
        }
        // en : when giving a weapon
        // ja : 武器を与える場合
        else
        {
            // en : give specified weapon
            // ja : 指定した武器を与える
            self scripts\cp_mp\utility\inventory_utility::_giveweapon( weapondata , undefined , akimbo , 1 );
            self setspawnweapon( weapondata );
            
            // en: gives maximum ammo for that weapon
            // ja: その武器の最大弾薬数を与える
            self givemaxammo( weapondata );
            
            // en : set text id
            // ja : テキストidを設定
            l_textid = "getweapon";
        }
    }
    
    // en : when switching weapons
    // ja : 武器を切り替える場合
	if ( isdefined( changehand ) )
    {
        // en : if the specified weapon exists
        // ja : 指定された武器が存在する場合
        if ( isdefined( l_weapondata ) )
        {
            // en : switch weapons
            // ja : 武器を切り替える
            self scripts\cp_mp\utility\inventory_utility::_switchtoweaponimmediate( weapondata );
        }
        // en : if the specified weapon does not exist
        // ja : 指定された武器が存在しない場合
        else
        {
            // en : if you don't have any weapons in hand
            // ja : 今手に持っている武器が何もない場合
            if ( isnullweapon( self getcurrentweapon( ) ) )
            {
                // en : if you have a main weapon, switch to that weapon.
                // ja : メイン武器を所持していれば、その武器に切り替える
                if ( isdefined( self.primaryweapon ) )
                {
                    self scripts\cp_mp\utility\inventory_utility::_switchtoweaponimmediate( self.primaryweapon );
                }
            }
        }
    }

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
    {
        // en: display the text "[notification] weapon operation status: weapon id" in the center of the screen.
        // ja: 画面中央に "[通知] 武器の操作状態 : 武器id" という文章を表示する
        self showcentermessage( self.curlang , "notice" , l_textid , undefined , weapondata , undefined );
    }

    // en : return weapon processing results
    // ja : 武器の処理結果を返す
    return l_weapondata;
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : quickscopelobby
// ja : クイックスコープロビー
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "quickscopelobby"
// ja : 機能 "quickscopelobby" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfquickscopelobby( )
{
    l_optname = "quickscopelobby";

    // en : create or destroy a "autogivecohost" variable
    // ja : "autogivecohost" 変数の作成か破棄を行う
    self switchonflevelfunction(
        /* optname */   l_optname ,
        /* optfunc */   ::emptyfunction ,
        /* message */   undefined ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined ,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
    wait 0.01;
    
    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    foreach( player in level.players )
    {
        if ( isdefined( level.lvlstat[l_optname] ) )
        {
            // en : display a "welcome" message every time you spawn
            // ja : スポーン時に毎回「ようこそ」メッセージを表示する
            player showwelocomemessage( );
            // en : execute processing when applying custom game mode
            // ja : カスタムゲームモード適応時の処理を実行する
            player customgamemodechecker( );
        }
        else
        {
            // en: commit suicide
            // ja: 自分を自殺させる
            player suicide( );
        }
    }

}



//++++++++++++++++++++++++++++++
// en : execute processing when applying custom game mode
// ja : カスタムゲームモード適応時の処理を実行する
//++++++++++++++++++++++++++++++
customgamemodechecker( )
{
    if ( isdefined( level.lvlstat["quickscopelobby"] ) )
    {
        wait 0.1;
        // en : pick up your all weapons
        // ja : 所持中の全ての武器を取り上げる
        self takeallweapons( );
        wait 0.1;

        // en : define weapon parameters
        // ja : 武器パラメーターを定義する
        l_sniperordmr       = "weapon_sniper";  // scripts\engine\utility::cointoss( ) ? "weapon_sniper" : "weapon_dmr";
        l_camoid            = "random";
        l_attachmentid      = "random";
        l_dual              = scripts\engine\utility::cointoss( ) ? true : undefined;
        l_usebp             = scripts\engine\utility::cointoss( );
        if ( l_usebp )
        {
            l_attachmentid  = undefined;
            l_camoid        = "bpcamo";
        }
        
        // en : give specified weapon
        // ja : 指定の武器を与える
        l_pistole = self thread provideweapon(
            /* weaponid */      "random" ,
            /* inprojectile */  undefined ,
            /* onlygroup */     "weapon_pistol" ,
            /* attachmentid */  l_attachmentid ,
            /* camoid */        l_camoid ,
            /* camogroup */     undefined ,
            /* akimbo */        l_dual ,
            /* changehand */    true ,
            /* notice */        undefined ,
            /* onlygetid */     undefined
            );

        wait 1;

        if ( isdefined( l_pistole ) )
        {
            // en: get information about the weapon you currently have
            // ja: 今持っている武器の情報を取得
            l_pistole = self getcurrentweapon( );
            // en: set ammo capacity and remaining bullets to 0
            // ja: 装弾数・残弾数を0にする
            self setweaponammostock(    l_pistole , 0 );
            self setweaponammoclip(     l_pistole , 0 , "left" );
            self setweaponammoclip(     l_pistole , 0 , "right" );
            self setweaponammoclip(     l_pistole , 0 );
        }

        wait 0.1;

        l_camoid            = "random";
        l_attachmentid      = "random";
        l_usebp             = true;//scripts\engine\utility::cointoss( );
        if ( l_usebp )
        {
            l_attachmentid  = undefined;
            l_camoid        = "bpcamo";
        }
        
        // en : give specified weapon
        // ja : 指定の武器を与える
        l_sniper = self thread provideweapon(
            /* weaponid */      "random" ,
            /* inprojectile */  undefined ,
            /* onlygroup */     l_sniperordmr ,
            /* attachmentid */  l_attachmentid ,
            /* camoid */        l_camoid ,
            /* camogroup */     undefined ,
            /* akimbo */        undefined ,
            /* changehand */    true ,
            /* notice */        true ,
            /* onlygetid */     undefined
            );

        // en : camper check for custom game mode 'quickscopelobby'
        // ja : カスタムゲームモード "quickscopelobby" のキャンパーチェック
        self thread onquickscopelobbycampercheck( );

        // en : longscope check for custom game mode 'quickscopelobby'
        // ja : カスタムゲームモード "quickscopelobby" のガン見チェック
        self thread onquickscopelobbylongscopecheck( );
    }
}



//++++++++++++++++++++++++++++++
// en : camper check for custom game mode 'quickscopelobby'
// ja : カスタムゲームモード "quickscopelobby" のキャンパーチェック
//++++++++++++++++++++++++++++++
onquickscopelobbycampercheck( )
{
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );

    l_prevorigin = undefined;
    l_distance = 50;

    while ( isdefined( level.lvlstat["quickscopelobby"] ) )
    {
        if ( isdefined( l_prevorigin ) && ( distance( self.origin , l_prevorigin ) < l_distance ) )
        {
            wait 2;
            if ( distance( self.origin , l_prevorigin ) < l_distance )
            {
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "warning" , "camperdetected"   , undefined , undefined , undefined );    wait 2;
                self showcentermessage( self.curlang , "warning" , "^13"              , undefined , undefined , undefined );    wait 1;
                self showcentermessage( self.curlang , "warning" , "^12"              , undefined , undefined , undefined );    wait 1;
                self showcentermessage( self.curlang , "warning" , "^11"              , undefined , undefined , undefined );    wait 1;
                self showcentermessage( self.curlang , "notice" , "violationpunished" , undefined , undefined , undefined );
                self setorigin( self.origin + ( 0 , 0 , 100 ) );                                                                wait 0.1;
                self setvelocity( self getvelocity( ) + ( randomintrange( 500 , 1000 ) , randomintrange( 500 , 1000 ) , randomintrange( 500 , 1000 ) ) );
            }
        }

        l_prevorigin = self.origin;
        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// en : longscope check for custom game mode 'quickscopelobby'
// ja : カスタムゲームモード "quickscopelobby" のガン見チェック
//++++++++++++++++++++++++++++++
onquickscopelobbylongscopecheck( )
{
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );

    while ( isdefined( level.lvlstat["quickscopelobby"] ) )
    {
        if ( self adsbuttonpressed( ) )
        {
            wait 1;
            if ( self adsbuttonpressed( ) )
            {
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "warning" , "longscopedetected" , undefined , undefined , undefined );
                self allowads( false );
                wait 0.2;
                self allowads( true );
            }
        }
        wait 0.05;
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : multilingual translation system
// ja : 多言語翻訳システム
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : returns the corresponding translation for the current language setting.
// ja : 現在の言語設定から対応する翻訳を返す
//++++++++++++++++++++++++++++++
getlangdata( cur , en , ja , cn , ru , de )
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
getmttext( selflang , textid , usegamepad )
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
            return getlangdata( selflang ,
                "^3P^7roject ^5H^7iN^1A^7tyu" ,
                "^3プ^7ロジェクト ^5ひ^7な^1ち^7ゅ" ,
                "^5H^7iN^1A^7tyu ^7計畫" ,
                "^7проект ^5огонь^1На^7Чуу" ,
                "^3P^7rojekt ^5H^7iN^1A^7tyu" );
                
        case "created":
            return getlangdata( selflang ,
                " ^3Created " ,
                " ^3制作の " ,
                " ^3创建 " ,
                " ^3созданный " ,
                " ^3Produktion " );

        case "learngsc":
            return getlangdata( selflang ,
            	"^6Basic learning ^3GSC",
                "^6基礎学習用 ^3GSC",
                "^6基础学习用 ^3GSC",
                "^3GSC ^6для базового обучения",
                "^3GSC ^6für das Grundlernen" );


        case "welcometo":
            return getlangdata( selflang ,
                "^3Welcome to " ,
                "^3ようこそ、" ,
                "^3欢迎，" ,
                "^3добро пожаловать," ,
                "^3Willkommen bei" );

            
        case "moddedlobby":
            return getlangdata( selflang ,
                " ^3modded lobby." ,
                " ^3の改造部屋へ。" ,
                " ^3前往改造后的房间。" ,
                " ^3В отремонтированную комнату." ,
                " ^3modifizierte Lobby." );

            
        case "yourmenustatus":
            return getlangdata( selflang ,
                "^3" + self.name + " status : " ,
                "^3" + self.name + "の権限階級 : " ,
                "^3" + self.name + " 地位 : " ,
                "^3" + self.name + " положение дел : " ,
                "^3" + self.name + " status : " );
            
        case "modmenuopendescription1":
            return getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + " ^3: " + getmttext( selflang , "quickscopelobby" );

        case "modmenuopendescription2":
            return getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) + " ^3: " + getmttext( selflang , "changelanguage" );

                
        case "changelanguage":
            return getlangdata( selflang ,
                "Language change",
                "言語変更",
                "语言更改",
                "Смена языка",
                "Sprachwechsel" );

        case "host":
            return getlangdata( selflang ,
                "^7[^5Host^7]" ,
                "^7[^5ホスト^7]" ,
                "^7[^5主持人^7]" ,
                "^7[^5хозяин^7]" ,
                "^7[^5Gastgeber^7]" );

        case "cohost":
            return getlangdata( selflang ,
                "^7[^4Co-host^7]" ,
                "^7[^4副ホスト^7]" ,
                "^7[^4次要宿主^7]" ,
                "^7[^4вторичный хост^7]" ,
                "^7[^4Co-gastgeber^7]" );

        case "admin":
            return getlangdata( selflang ,
                "^7[^1Admin^7]" ,
                "^7[^1管理者^7]" ,
                "^7[^1行政人员^7]" ,
                "^7[^1администратор^7]" ,
                "^7[^1Verwaltung^7]" );

        case "vip":
            return getlangdata( selflang ,
                "^7[^2VIP^7]" ,
                "^7[^2要人^7]" ,
                "^7[^2重要的人^7]" ,
                "^7[^2важная личность^7]" ,
                "^7[^2VIP^7]" );

        case "verified":
            return getlangdata( selflang ,
                "^7[^6Verified^7]" ,
                "^7[^6承認者^7]" ,
                "^7[^6授权人^7]" ,
                "^7[^6Авторизирующий^7]" ,
                "^7[^6Verifiziert^7]" );

        case "unverified":
            return getlangdata( selflang ,
                "^7[^3Unverified^7]" ,
                "^7[^3未承認^7]" ,
                "^7[^3未批准^7]" ,
                "^7[^3Не одобрено^7]" ,
                "^7[^3Nicht verifiziert^7]" );

        case "enabled":
            return getlangdata( selflang ,
                "^7[^2Enabled^7] " ,
                "^7[^2有効化^7] " ,
                "^7[^2激活^7] " ,
                "^7[^2активация^7] " ,
                "^7[^2Ermöglicht^7] " );

        case "disabled":
            return getlangdata( selflang ,
                "^7[^1Disabled^7] " ,
                "^7[^1無効化^7] " ,
                "^7[^1无效^7] " ,
                "^7[^1Аннулирование^7] " ,
                "^7[^1Deaktiviert^7] " );

        case "notice":
            return getlangdata( selflang ,
                "^7[^3Notice^7] " ,
                "^7[^3通知^7] " ,
                "^7[^3通知^7] " ,
                "^7[^3уведомление^7] " ,
                "^7[^3Beachten^7] " );

        case "warning":
            return getlangdata( selflang ,
                "^7[^6Warning^7] " ,
                "^7[^6警告^7] " ,
                "^7[^6警告^7] " ,
                "^7[^6Предупреждение^7] " ,
                "^7[^6Warnung^7] " );

        case "failed":
            return getlangdata( selflang ,
                "^7[^1Failed^7] " ,
                "^7[^1失敗^7] " ,
                "^7[^1失败的^7] " ,
                "^7[^1Неуспешный^7] " ,
                "^7[^1Fehlgeschlagen^7] " );

        case "success":
            return getlangdata( selflang ,
                "^7[^8Success^7] " ,  
                "^7[^8成功^7] " ,  
                "^7[^8成功^7] " ,  
                "^7[^8Успех^7] " ,  
                "^7[^8Erfolg^7] " );
      
        case "notfuncexec":
            return getlangdata( selflang ,
                "Function not executed" ,
                "機能が未実行です" ,
                "函数未执行" ,
                "Функция не выполнена" ,
                "Funktion nicht ausgeführt" );

        case "unimplementedfunction":
            return getlangdata( selflang ,
                "This function is not yet implemented." ,
                "この機能は未実装です。" ,
                "该功能尚未实现。" ,
                "Эта функция еще не реализована." ,
                "Diese Funktion ist derzeit noch nicht implementiert." );

        case "pleaseshooting":
            return getlangdata( selflang ,
                "Please specify the coordinates by shooting" ,
                "銃撃で座標指定してください" ,
                "拍下请注明坐标" ,
                "Пожалуйста, укажите координаты при съемке" ,
                "Bitte geben Sie die Koordinaten durch Aufnahme an" );

        case "requestlocation":
            return getlangdata( selflang ,
                "Request specified location" ,
                "指定座標に要請" ,
                "请求指定位置" ,
                "Запросить указанное местоположение" ,
                "Angegebenen Standort anfordern" );

        case "waitendfunction":
            return getlangdata( selflang ,
                "Please wait until the running function finishes" ,
                "実行中の機能が終了するまでお待ちください" ,
                "请等待运行函数完成" ,
                "Пожалуйста, подождите, пока работающая функция завершится." ,
                "Bitte warten Sie, bis die laufende Funktion beendet ist" );

        case "cannothost":
            return getlangdata( selflang ,
                "No operations can be performed on the host." ,
                "ホストに対して操作はできません。" ,
                "无法对主机进行任何操作。" ,
                "На хосте нельзя выполнять никакие операции." ,
                "Auf dem Host können keine Vorgänge ausgeführt werden." );

        case "cannotusedata":
            return getlangdata( selflang ,
                "This data is not available in the current map mode." ,
                "現在のマップ・モードではこのデータの使用ができません。" ,
                "此数据在当前地图模式下不可用。" ,
                "Эти данные недоступны в текущем режиме карты." ,
                "Diese Daten sind im aktuellen Kartenmodus nicht verfügbar." );

        case "setmenustatus":
            return getlangdata( selflang ,
                "Set status" ,
                "権限階級の設定" ,
                "设置状态" ,
                "Установить статус" ,
                "Status festlegen" );
        
        case "start":
            return getlangdata( selflang ,
                "START" ,
                "開始" ,
                "开始" ,
                "начинать" ,
                "START" );


        case "createobject":
            return getlangdata( selflang ,
                "Create object" ,
                "オブジェクト作成" ,
                "创建对象" ,
                "Создать объект" ,
                "Objekt erstellen" );

        case "failedbuildweapon":
            return getlangdata( selflang ,
                "Failed build weapon" ,
                "武器の生成に失敗" ,
                "打造武器失败" ,
                "Не удалось построить оружие" ,
                "Fehlgeschlagener Waffenbau" );

        case "failedspawnobject":
            return getlangdata( selflang ,
                "Failed to spawn object" ,
                "オブジェクトの作成に失敗" ,
                "无法生成对象" ,
                "Не удалось создать объект" ,
                "Objekt konnte nicht erzeugt werden" );

        case "getweapon":
            return getlangdata( selflang ,
                "Get weapon" ,
                "武器の入手" ,
                "获取武器" ,
                "Получить оружие" ,
                "Waffe holen" );

        case "takedweapon":
            return getlangdata( selflang ,
                "Taked weapon" ,
                "武器の剥奪" ,
                "拿起武器" ,
                "Взятое оружие" ,
                "Waffe genommen" );

        case "nohaveweapon":
            return getlangdata( selflang ,
                "No have weapon" ,
                "武器の未所持" ,
                "没有武器" ,
                "нет оружия" ,
                "Keine Waffe" );

        case "alreadyhaveweapon":
            return getlangdata( selflang ,
                "Already have weapon" ,
                "武器の既所持" ,
                "已经拥有武器" ,
                "Оружие уже есть" ,
                "Habe bereits Waffe" );
                
        case "quickscopelobby":
            return getlangdata( selflang ,  
                "quick scope lobby" ,  
                "スナイパー限定ロビー" ,  
                "快瞄大厅" ,  
                "лобби для быстрого прицеливания" ,  
                "quick-scope-lobby" );
                
        case "welcomequickscopelobby":
            return getlangdata( selflang ,
                " ^6quick scope lobby." ,  
                " ^6のスナイパー限定ロビーへ。" ,  
                " ^6快瞄大厅。" ,  
                " ^6лобби для быстрого прицеливания." ,  
                " ^6quick-scope-lobby." );
                
        case "quickscopelobbydescription1":
            return getlangdata( selflang ,  
                "only sniper quick shots are allowed in this lobby" ,  
                "このロビーではスナイパーのクイックショットのみが許可されます" ,  
                "此大厅仅允许狙击枪快射" ,  
                "в этом лобби разрешены только быстрые выстрелы из снайперской винтовки" ,  
                "in dieser lobby sind nur schnelle schüsse mit dem scharfschützengewehr erlaubt" ); 
                
        case "quickscopelobbydescription2":
            return getlangdata( selflang ,  
                "camping is also impossible. enjoy a pure sniper battle!" ,  
                "芋プレイも不可能です、純粋なスナイパーバトルを楽しもう！" ,  
                "蹲守也不可能。享受纯粹的狙击战！" ,  
                "кемперство также невозможно. наслаждайтесь чистой снайперской битвой!" ,  
                "campen ist ebenfalls unmöglich. genieße ein reines scharfschützen-duell!" );  
                
        case "longscopedetected":
            return getlangdata( selflang ,  
                "^1long scope detected!" ,  
                "^1ロングスコープを検出しました！" ,  
                "^1检测到长镜瞄！" ,  
                "^1обнаружен длинный прицел!" ,  
                "^1langes zielfernrohr erkannt!" );  
                
        case "camperdetected":
            return getlangdata( selflang ,  
                "^1camper behavior detected!" ,  
                "^1キャンパー行為を検出しました！" ,  
                "^1检测到蹲守行为！" ,  
                "^1обнаружено кемперство!" ,  
                "^1camper-verhalten erkannt!" ); 
                
        case "violationpunished":
            return getlangdata( selflang ,  
                "violation punished." ,  
                "違反行為を処罰しました。" ,  
                "违规行为已处罚。" ,  
                "нарушение наказано." ,  
                "verstoß geahndet." );

        default:
            if ( !isdefined( textid ) ) textid = "";
            return textid;
    }
    
    if ( !isdefined( textid ) ) textid = "";
    return textid;
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Weapon patch for MRON Injector
// ja : MRON Injector用武器パッチ
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



risktokens( var_0 )
{
    var_1 = randomintrange( 0, level.mronpatchwptable[var_0].size );
    return level.mronpatchwptable[var_0][var_1];
}



vehcolignorelist()
{
    if ( level.mapname == "mp_firingrange" || isstartstr( level.mapname, "mp_audio" ) )
        return 1;

    return 0;
}



track_get_launch_target()
{
    level.mronpatchwpt9s4 = [];
    loadweaponsourcetablefromcsv( "mp/itemsourcetable.csv" );
    loadweaponsourcetablefromcsv( "mp/itemsourcetable_ch2.csv" );
}



loadweaponsourcetablefromcsv( var_0 )
{
    var_1 = 0;

    for (;;)
    {
        var_2 = tablelookupbyrow( var_0, var_1, 1 );

        if ( !isdefined( var_2 ) || var_2 == "" )
            break;

        if ( var_2 != "weapon" )
        {
            var_1++;
            continue;
        }

        var_3 = tablelookupbyrow( var_0, var_1, 3 );
        var_4 = tablelookupbyrow( var_0, var_1, 2 );
        level.mronpatchwpt9s4[var_4] = var_3;
        var_1++;
    }
}



vehicle_ai_avoidance_cleanup( var_0 )
{
    if ( !isdefined( level.mronpatchwpt9s4 ) )
        track_get_launch_target();

    var_1 = level.mronpatchwpt9s4[var_0];

    if ( isdefined( var_1 ) && ( var_1 == "t9" || var_1 == "s4" ) )
    {
        if ( !istrue( level._id_14434 ) )
            return 0;

        if ( !getdvarint( "LNLMORMPTS" ) )
            return 0;

        return 1;
    }

    if ( isdefined( var_1 ) && var_1 != "iw8" )
        return 0;

    return 1;
}



parseattachdefaulttoidmap( var_0 )
{
    if ( var_0 != "" )
    {
        var_1 = strtok( var_0, " " );
        var_2 = [];

        foreach ( var_4 in var_1 )
        {
            var_5 = strtok( var_4, "|" );

            if ( getdvarint( "scr_selectfire_enabled", 1 ) == 0 )
            {
                if ( scripts\engine\utility::string_starts_with( var_5[0], "select" ) )
                    continue;
            }

            if ( var_5.size == 2 )
            {
                var_2[var_5[0]] = int( var_5[1] );
                continue;
            }

            var_2[var_5[0]] = 0;
        }

        return var_2;
    }

    return undefined;
}



getweaponvarianttablename( var_0 )
{
    if ( scripts\mp\utility\script::isstrstart( var_0, "iw8_" ) )
        var_0 = getsubstr( var_0, 4 );

    if ( scripts\mp\utility\script::isstrstart( var_0, "s4_" ) )
    {

    }

    return "mp/gunsmith/" + var_0 + "_variants.csv";
}



buildweaponmap()
{
    level.mronpatchwpmapdt = [];
    level.mronpatchwptable = [];
    level.mronpatchwpstat = [];
    var_0 = scripts\mp\utility\game::unset_relic_grounded();
    var_1 = tablelookupgetnumrows( "mp/statstable.csv" );

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = tablelookupbyrow( "mp/statstable.csv", var_2, 0 );
        var_4 = tablelookup( "mp/statstable.csv", 0, var_3, 4 );

        if ( var_4 == "" )
            continue;

        if ( var_0 || scripts\cp_mp\utility\weapon_utility::vehicle_ai_script_models( var_4 ) || vehcolignorelist() )
        {
            level.mronpatchwpmapdt[var_4] = spawnstruct();
            var_5 = tablelookup( "mp/statstable.csv", 0, var_3, 0 );

            if ( var_5 != "" )
                level.mronpatchwpmapdt[var_4].number = var_5;

            var_6 = tablelookup( "mp/statstable.csv", 0, var_3, 1 );

            if ( var_6 != "" )
            {
                level.mronpatchwpmapdt[var_4].group = var_6;
                var_7 = tablelookup( "mp/statstable.csv", 0, var_3, 41 );

                if ( var_7 != "" )
                {
                    var_8 = int( var_7 );
                    var_9 = 0;
                    var_10 = tablelookup( "mp/statstable.csv", 0, var_3, 17 );

                    if ( var_10 != "" )
                        var_9 = getdvarint( var_10, 0 ) == 0;

                    if ( var_8 > -1 && vehicle_ai_avoidance_cleanup( var_4 ) && !var_9 )
                    {
                        if ( !isdefined( level.mronpatchwptable[var_6] ) )
                            level.mronpatchwptable[var_6] = [];

                        level.mronpatchwptable[var_6][level.mronpatchwptable[var_6].size] = var_4;
                    }
                    else
                        level.mronpatchwpmapdt[var_4]._id_13EFC = 1;
                }
            }

            if ( !istrue( level.mronpatchwpmapdt[var_4]._id_13EFC ) )
                level.mronpatchwpstat[var_4] = 1;

            var_11 = tablelookup( "mp/statstable.csv", 0, var_3, 2 );

            if ( var_11 != "" )
                level.mronpatchwpmapdt[var_4]._id_11BD1 = var_11;

            var_12 = tablelookup( "mp/statstable.csv", 0, var_3, 5 );

            if ( var_12 != "" )
                level.mronpatchwpmapdt[var_4].assetname = var_12;

            var_13 = tablelookup( "mp/statstable.csv", 0, var_3, 44 );

            if ( var_13 != "" )
                level.mronpatchwpmapdt[var_4].perk = var_13;

            var_14 = tablelookup( "mp/statstable.csv", 0, var_3, 9 );
            var_15 = parseattachdefaulttoidmap( var_14 );

            if ( isdefined( var_15 ) )
                level.mronpatchwpmapdt[var_4].attachdefaulttoidmap = var_15;

            var_16 = tablelookup( "mp/statstable.csv", 0, var_3, 8 );

            if ( var_16 != "" )
            {
                var_16 = float( var_16 );
                level.mronpatchwpmapdt[var_4].speed = var_16;
            }

            continue;
        }

        var_9 = undefined;

        if ( tablelookup( "mp/statstable.csv", 0, var_3, 1 ) != "" )
        {
            if ( tablelookup( "mp/statstable.csv", 0, var_3, 41 ) != "" )
            {
                var_10 = tablelookup( "mp/statstable.csv", 0, var_3, 17 );

                if ( var_10 != "" )
                    var_9 = getdvarint( var_10, 0 ) == 0;
            }
        }

        if ( !istrue( var_9 ) )
            level.mronpatchwpstat[var_4] = 1;
    }

    var_17 = [];
    level.weaponlootmapdata = [];
    var_2 = -1;

    for (;;)
    {
        var_2++;
        var_18 = tablelookupbyrow( "loot/weapon_ids.csv", var_2, 0 );

        if ( var_18 == "" )
            break;

        var_4 = tablelookupbyrow( "loot/weapon_ids.csv", var_2, 1 );

        if ( !var_0 && !scripts\cp_mp\utility\weapon_utility::vehicle_ai_script_models( var_4 ) && !vehcolignorelist() )
            continue;

        var_19 = tablelookupbyrow( "loot/weapon_ids.csv", var_2, 6 );
        var_20 = getweaponvarianttablename( var_4 );
        var_21 = tablelookup( var_20, 1, var_19, 0 );

        if ( var_21 == "" )
            continue;

        if ( int( var_21 ) > 0 )
        {
            if ( !isdefined( var_17[var_4] ) || int( var_21 ) > var_17[var_4] )
                var_17[var_4] = int( var_21 );
        }

        var_22 = var_4 + "|" + var_21;
        level.weaponlootmapdata[var_22] = spawnstruct();
        level.weaponlootmapdata[var_22].variantid = int( var_21 );
        var_23 = tablelookup( var_20, 1, var_19, 3 );

        if ( var_23 != "" )
            level.weaponlootmapdata[var_22].assetoverridename = var_23;

        var_24 = tablelookup( "loot/weapon_ids.csv", 6, var_19, 5 );
        level.weaponlootmapdata[var_22].update_focus_fire_objective = int( var_21 ) != 0 && int( var_24 ) == 99;
        level.weaponlootmapdata[var_22].tut_bot_nameplate = vehicle_ai_avoidance_cleanup( var_4 );
        var_25 = tablelookup( var_20, 1, var_19, 4 );
        var_15 = parseattachdefaulttoidmap( var_25 );

        if ( isdefined( var_15 ) )
        {
            if ( isdefined( level.mronpatchwpmapdt[var_4].attachdefaulttoidmap ) )
                var_15 = scripts\engine\utility::array_combine_unique_keys( var_15, level.mronpatchwpmapdt[var_4].attachdefaulttoidmap );

            level.weaponlootmapdata[var_22].attachdefaulttoidmap = var_15;
        }

        var_26 = [];

        for ( var_27 = 5; var_27 <= 15; var_27++ )
        {
            var_28 = tablelookup( var_20, 1, var_19, var_27 );

            if ( var_28 != "" )
            {
                var_29 = strtok( var_28, "|" );

                if ( var_29.size == 2 )
                    var_26[var_29[0]] = int( var_29[1] );
                else
                    var_26[var_29[0]] = 0;
            }
        }

        if ( var_26.size > 0 )
            level.weaponlootmapdata[var_22].attachcustomtoidmap = var_26;

        var_30 = tablelookup( var_20, 1, var_19, 16 );

        if ( var_30 != "" )
        {
            var_31 = [];
            var_32 = strtok( var_30, " " );

            foreach ( var_34 in var_32 )
            {
                var_35 = strtok( var_34, "|" );

                if ( var_35.size != 2 )
                    continue;

                var_31[var_35[0]] = int( var_35[1] );
            }

            if ( var_31.size > 0 )
                level.weaponlootmapdata[var_22].attachextratoidmap = var_31;
        }
    }

    foreach ( var_41, var_38 in var_17 )
    {
        for ( var_39 = 1; var_39 <= var_38; var_39++ )
        {
            var_40 = var_41 + "|" + var_39;

            if ( !isdefined( level.weaponlootmapdata[var_40] ) )
            {
                level.weaponlootmapdata[var_40] = spawnstruct();
                level.weaponlootmapdata[var_40].variantid = var_39;
                level.weaponlootmapdata[var_40].update_focus_fire_objective = 1;
                level.weaponlootmapdata[var_40].tut_bot_nameplate = 0;
            }
        }
    }
}