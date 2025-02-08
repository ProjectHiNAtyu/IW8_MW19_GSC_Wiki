// 1816 = scripts\mp\art.gsc  0x0718, "scripts/mp/art" },
// https://raw.githubusercontent.com/xensik/gsc-tool/dev/src/gsc/engine/iw8_token.cpp

// Compile command   : gsc-tool comp iw8 pc 1816.gsc
// Decompile command : gsc-tool decomp iw8 pc compiled/iw8/1816.gscbin




//++++++++++++++++++++++++++++++
// en : initialization process (loaded during map load after match start)
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
main( )
{
    level thread initializeproject( );
}



//++++++++++++++++++++++++++++++
// en : initialization process (loaded during map load after match start)
// ja : 初期化処理（マッチ開始後のマップロード中に読み込まれる）
//++++++++++++++++++++++++++++++
initializeproject( )
{
    // en : Initialization is only once
    // ja : 初期化は一回限り
    if ( isdefined( level.initproject ) ) return;
    level.initproject = true;

    // en : subthread connected( ) for the entire room
    // ja : 部屋全体に connected( ) をサブスレッドで実行する
    level thread connected( );
}




//++++++++++++++++++++++++++++++
// en : processing when a player connects to a room
// ja : プレイヤーが部屋に接続してきた時の処理
//++++++++++++++++++++++++++++++
connected( )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    // en : inside this is infinite loop processing
    // ja : この中は無限ループ処理
    while ( true )
    {
        // en : Wait until the player connects to the lobby
        // ja : プレイヤーがロビーに接続して来るまで待機する
        level waittill( "connected" , player );
        
        // en : Execute spawned() for that player in a sub-thread
        // ja : そのプレイヤーに spawned( ) をサブスレッドで実行する
        player thread spawned( );
    }
}



//++++++++++++++++++++++++++++++
// en : processing that occurs when a player spawns in-game
// ja : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
spawned( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    // en : inside this is infinite loop processing
    // ja : この中は無限ループ処理
    for ( ;; )
    {
        // en : wait for yourself to "spawn in-game"
        // ja : 自分が「インゲーム上にスポーンした」ことを待つ
        self waittill( "spawned_player" );

        // en : display a "welcome" message every time you spawn
        // ja : スポーン時に毎回「ようこそ」メッセージを表示する
        self iprintlnbold( "hello, world!" );

        // en : After displaying the text, return to the beginning of the loop and wait for the next respawn
        // ja : 文字を表示した後はループの先頭に戻り、次のリスポーンを待機する
    }
}