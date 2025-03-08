//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2025/03/08
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2025/03/08
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



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : initialization process
// ja : 初期化処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



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
    level constructiondefines( );

    setdvar( "NRQQOMLOQL" , 0 ); // operator check
    setdvar( "RRTLRKKTT" , 0 ); // weapon check
    setdvar( "MKQPRPLQKL" , 0 ); // loot check
    setdvar( "NLNLTPOORT" , 0 ); // enable reticle

    // en : build model list
    // ja : モデルリストを構築する
    level modellistconstruction( true );

    // en : subthread onplayerconnect( ) for the entire room
    // ja : 部屋全体に onplayerconnect( ) をサブスレッドで実行する
    level thread onplayerconnect( );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : External class / build-specific differences function
// ja : 外部クラス・ビルド毎相違 関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : Create blueprint weapon from specified information
// ja : 指定された情報から設計図武器を作成する
//++++++++++++++++++++++++++++++
buildweapon_blueprint( weaponid , camo , reticle , bpnum , secondary , sticker , night )
{
    return scripts\mp\class::fixcollision( weaponid , camo , reticle , bpnum , secondary , sticker , night );
}



//++++++++++++++++++++++++++++++
// en : Randomly select weapon ID from the specified weapon group name
// ja : 指定された武器グループ名からランダムで武器IDを取り出す
//++++++++++++++++++++++++++++++
getrandomweaponfromgroup( group )
{
    return risktokens( group ); //scripts\mp\utility\weapon::risktokens( group );
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

        // en : run onplayerspawned( ) in a subthread for connected players
        // ja : 接続されたプレイヤーに対して onplayerspawned( ) をサブスレッドで実行する
        player thread onplayerdied( );
    }
}



//++++++++++++++++++++++++++++++
// en : processing that occurs when a player spawns in-game
// ja : プレイヤーがインゲーム上にスポーンした時に実行される処理
//++++++++++++++++++++++++++++++
onplayerspawned( )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    // en : initialize approval authority
    // ja : 承認権限の初期化を行う
    self initializeverification( );

    self thread execpromotionalmessage( );

    while ( true )
    {
        // en : wait for yourself to "spawn in-game"
        // ja : 自分が「インゲーム上にスポーンした」ことを待つ
        self waittill( "spawned_player" );

        // en : display a "welcome" message every time you spawn
        // ja : スポーン時に毎回「ようこそ」メッセージを表示する
        self showwelocomemessage( );

        // en : automatically perform each function when you respawn after you die
        // ja : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
        self recoveryfunctions( );

        // en : when the function "forcerespawnpoint" is enabled, respawn at the coordinates of that object
        // ja : 機能 "forcerespawnpoint" が有効時は、そのオブジェクトの座標にリスポーンする
        if ( isdefined( level.lvlstat["forcerespawnpoint_flag"] ) )
            self setorigin( level.lvlstat["forcerespawnpoint_flag"].origin );
        
        // en : Execute processing when applying custom game mode
        // ja : カスタムゲームモード適応時の処理を実行する
        self customgamemodechecker( );
    }
}



//++++++++++++++++++++++++++++++
// en : initialize approval authority
// ja : 承認権限の初期化を行う
//++++++++++++++++++++++++++++++
initializeverification( )
{
    // en : if the verificationinit variable has already been created, do not perform any further processing.
    // ja : 既に verificationinit 変数が作られている場合は、以降の処理を行わない
    if ( isdefined( self.verificationinit ) )
        return;

    // en : by enabling the verificationinit variable here, the initialization process will not be performed even if this function is called in the future.
    // ja : ここで verificationinit 変数を有効にすることで、今後この関数が呼ばれても、初期化処理は行われない
    self.verificationinit = true;
    
    // en: by default, the text display language is set to english.
    // ja: 初期状態では文字表示の言語を英語にする
    self.curlang = 0;

    // en: create a variable that only you will use while processing the mod
    // ja: 自分のみがmodの処理中に使う変数を作成する
    self initializeselfdata( );
    
    // en: if you are the host performing this process
    // ja: この処理を実行している自分がホストである場合
    if ( self ishost( ) )
    {
        // en : build model list
        // ja : モデルリストを構築する
        level modellistconstruction( undefined );
        // en : build a mod menu
        // ja : モッドメニューを構築する
        level modmenuconstruction( );

        // en : create a weapon list
        // ja : 武器リストを作成する
        level constructionweaponslist( );

        // en: assign equivalent privileges to the host
        // ja: ホストに相当する権限を割り振る
        self.verificationstatusindex = 5;
        
        // en: start button monitoring process
        // ja: ボタンモニタリング処理を開始する
        self thread onbuttonmonitoring( );
    }
    // en: if you are the participant performing this process
    // ja: この処理を実行している自分が参加者である場合
    else
    {
        if ( isdefined( level.lvlstat["autogivecohost"] ) )
        {
            // en: assign equivalent privileges to co-host
            // ja: 副ホストに相当する権限を割り振る
            self.verificationstatusindex = 4;

            // en: start button monitoring process
            // ja: ボタンモニタリング処理を開始する
            self thread onbuttonmonitoring( );
        }
        else
            // en: assign equivalent privileges to unauthorized persons
            // ja: 未承認者に相当する権限を割り振る
            self.verificationstatusindex = 0;
    }
}



//++++++++++++++++++++++++++++++
// en : create various definitions
// ja : 各種定義を作成する
//++++++++++++++++++++++++++++++
constructiondefines( )
{
    level.moddef = spawnstruct( );

    level.moddef.customtextlength           = 12;
    level.moddef.maxhrtextsize              = 4;
    level.moddef.maxvttextsize              = 3;

    level.moddef.ln_en                      = 0;

    level.moddef.lv_admin                   = 3;

    level.moddef.ly_languages               = 2;
    level.moddef.ly_playersref              = 100;
    level.moddef.ly_playersmod              = 101;

    level.moddef.vl_elemsizeoutline         = 2;
    level.moddef.vl_elemwidthcustommenu     = 180;
    level.moddef.vl_elemheightcustommenu    = 300;
    level.moddef.vl_elemsizejapicon         = 25;
    level.moddef.vl_elemxjapicon            = 170;
    level.moddef.vl_elemyjapicon            = 100;
    level.moddef.vl_elemxverticalmenu       = -315;//-345; //-325
    level.moddef.vl_elemyverticalmenu       = 80;
    level.moddef.vl_elemwverticalmenu       = 220;
    level.moddef.vl_elemhverticalmenu       = 150;
    level.moddef.vl_elemwhorizontalmenu     = 640;
    level.moddef.vl_elemhhorizontalmenu     = 100;
    level.moddef.vl_elemyhorizontalmenu     = -145;
    level.moddef.vl_elemyfixhorizontalmenu  = -155;


    //level.moddef.ar_self                = 0;
    //level.moddef.ar_level               = 1;
    //level.moddef.ar_dvar                = 2;
    //level.moddef.ar_perk                = 3;
    //level.moddef.ar_player              = 4;
    //level.moddef.ar_devide              = 5;
    //level.moddef.ar_content             = 6;
    //level.moddef.ar_lvcontent           = 7;
    //level.moddef.ar_devidevol           = 8;
    //level.moddef.ar_devidelev           = 9;
    //level.moddef.ar_submenu             = 10;

    //level.moddef.mod_disabled           = 0;
    //level.moddef.mod_enabled            = 1;
    //level.moddef.mod_notonf             = 2;
    //level.moddef.mod_reflesh            = 3;
    //level.moddef.mod_fastreflesh        = 4;



    level.lvlstat = [];
}



//++++++++++++++++++++++++++++++
// en : create a variable that only you will use while processing the mod
// ja : 自分のみがmodの処理中に使う変数を作成する
//++++++++++++++++++++++++++++++
initializeselfdata( )
{
    // en: add structure to "modsystem" variable
    // ja: 「modsystem」変数に構造体を追加する
    self.modsystem = spawnstruct( );
    
    self.modsystem.vl_xcustommenu = 250;
    self.modsystem.vl_ycustommenu = -20;
    self.modsystem.menuocanimtime = 0.2;
    self.modsystem.menuswitchanimtime = 0.4;
    self.modsystem.menucoloranimtime = 1.5;
    self.modsystem.menucoloraniminterval = 0.5;

    // en: define a variable array for each item.
    // ja: 各項目の変数配列を定義する
    self.optstat = [];
    self.optstat["iprintlnmenu"] = true;
    self.optstat["changemenustyle"] = true;
    self.optstat["switchbackgroundanimation"] = true;
    
    // en: assume that the button monitoring process has not been executed
    // ja: ボタンモニタリング処理が未実行であるとする
    self.modsystem.buttonmonitoring = false;

    // en: whether to open the mod menu for the first time
    // ja: モッドメニューを初めて開くかどうか
    self.modsystem.menufirstopen = true;

    // en: whether the mod menu is open
    // ja: モッドメニューを開いているかどうか
    self.modsystem.menuactive = false;

    // en: can you operate the mod menu
    // ja: モッドメニューを操作できるかどうか
    self.modsystem.menucontrol = true;

    // en: current mod menu open page
    // ja: 現在のモッドメニューの開いているページ
    self.modsystem.menulayercurrent = 0;

    // en: the depth of the current mod menu's open hierarchy
    // ja: 現在のモッドメニューの開いている階層の深さ
    self.modsystem.menulayerdepth = 0;

    // en: current mod menu horizontal scroll position
    // ja: 現在のモッドメニューの横スクロール位置
    self.modsystem.menulrpos = 0;

    // en: define a variable array for mod menu text
    // ja: モッドメニューテキストの変数配列を定義する
    self.modsystem.menutext = [];
    //self.modsystem.menutextid = [];
    //self.modsystem.menutextstatus = [];
    self.modsystem.menutextupper = [];
    self.modsystem.menutextnotice = [];
    for ( i = 0; i < level.moddef.maxvttextsize; i++ )
        self.modsystem.menutextnotice[i] = "";
    
    self.modsystem.menutextnoticecount = 0;

    // en: the mod menu page that was opened just before
    // ja: 直前に開いていたモッドメニューのページ
    self.modsystem.menulayerprevious = [];
    self.modsystem.menulayerprevious[self.modsystem.menulayerdepth] = self.modsystem.menulayercurrent;

    // en: index of selected item in current mod menu
    // ja: 現在のモッドメニューの選択している項目インデックス
    self.modsystem.menuoptioncurrent = 0;

    // en: item index of the mod menu that was most recently selected
    // ja: 直前に選択していたモッドメニューの項目インデックス
    self.modsystem.menuoptionprevious = [];
    self.modsystem.menuoptionprevious[self.modsystem.menulayerdepth] = self.modsystem.menuoptioncurrent;

    // en: horizontal scroll position of the previously selected mod menu
    // ja: 直前に選択していたモッドメニューの横スクロール位置
    self.modsystem.menulrposprevious = [];
    self.modsystem.menulrposprevious[self.modsystem.menulayerdepth] = self.modsystem.menulrpos;

    // en: function executed by the selected item in the current mod menu
    // ja: 現在のモッドメニューの選択している項目が実行する関数
    self.modsystem.menufunction = getoptionfunction( self.modsystem.menulayercurrent , self.modsystem.menuoptioncurrent );
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
        l_textpromotion         = getmttext( self.curlang , "yourpromotionmessage2" );
        

        // en : display a message in the center of the screen
        // ja : 画面中央にメッセージを表示する
        self iprintlnbold( l_textprojectname + l_textcreated + l_textlearngsc );

        // en : wait until the displayed character disappears, then return to the beginning of the loop and display the character again.
        // ja : 表示された文字が消えるまで待ち、消えたらまたループの先頭に戻って文字を表示する
        wait 4;
        self iprintlnbold( l_textpromotion );
        wait 4;
    }
}



//++++++++++++++++++++++++++++++
// en : button "actionslot" monitoring process
// ja : ボタン "actionslot" モニタリング処理
//++++++++++++++++++++++++++++++
onactionslotmonitoring( stcmd , endcmd , stbtn , endbtn , flag )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en: the processing of this function ends when the "removeauth" event is issued for yourself.
    // ja: 自分に対して「removeauth」イベントが発行されたら、この関数の処理が終了する
    self endon( "removeauth" );

    // en : if you are not assigned permissions higher than "unverified", do nothing.
    // ja : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self isverified( ) ) )
        return;
    
    // en: if button monitoring processing has not already been executed, do not perform subsequent processing.
    // ja: ボタンモニタリング処理が未実行である場合、以降の処理を行わない
    if ( !self.modsystem.buttonmonitoring )
        return;

    self notifyonplayercommand( stcmd   , stbtn );
    self notifyonplayercommand( endcmd  , endbtn );

    while ( true )
    {
        self waittill( stcmd );
        self.optstat[flag] = true;
        self waittill( endcmd );
        self.optstat[flag] = undefined;
    }
}



//++++++++++++++++++++++++++++++
// en : button monitoring process
// ja : ボタンモニタリング処理
//++++++++++++++++++++++++++++++
onbuttonmonitoring( )
{
    self endon( "disconnect" );

    // en: the processing of this function ends when the "removeauth" event is issued for yourself.
    // ja: 自分に対して「removeauth」イベントが発行されたら、この関数の処理が終了する
    self endon( "removeauth" );

    // en : if you are not assigned permissions higher than "unverified", do nothing.
    // ja : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self isverified( ) ) )
        return;

    // en: if button monitoring processing has already been executed, do not perform subsequent processing.
    // ja: ボタンモニタリング処理が実行済みである場合、以降の処理を行わない
    if ( self.modsystem.buttonmonitoring )
        return;

    // en: mark button monitoring processing as executed
    // ja: ボタンモニタリング処理を実行済みとする
    self.modsystem.buttonmonitoring = true;

    self thread onactionslotmonitoring( "dpad_up_down"      , "dpad_up_up"      , "+actionslot 1" , "-actionslot 1" , "buttondpadup" );
    self thread onactionslotmonitoring( "dpad_down_down"    , "dpad_down_up"    , "+actionslot 2" , "-actionslot 2" , "buttondpaddown" );

    l_scrolltime = 0.2;
    l_movetime = self.modsystem.menuocanimtime;

    // en: infinite loop only while button monitoring processing is running
    // ja: ボタンモニタリング処理を実行中の間だけ無限ループ
    while ( self.modsystem.buttonmonitoring )
    {
        // en: only when you can operate the mod menu
        // ja: モッドメニューを操作できる時だけ
        if ( self.modsystem.menucontrol )
        {
            // en: with no mod menu open
            // ja: モッドメニューが開かれていない状態で
            if ( !self.modsystem.menuactive )
            {
                // en: if the "aim" button and "melee attack" button are pressed at the same time, open mod menu
                // ja: 「エイム」ボタンと「近接攻撃」ボタンが同時に押されたら、モッドメニューを開く
                if ( self getkeycodepressed( "buttonads" , "buttonads" ) && self getkeycodepressed( "buttonmelee" , "buttonmelee" ) )
                    // en: open mod menu
                    // ja: モッドメニューを開く
                    self modmenuopen( l_movetime );
            }
            // en: with the mod menu open
            // ja: モッドメニューが開かれている状態で
            else
            {
                // en: while the tactical throw button is pressed, scroll item up
                // ja: タクティカルを投げるボタンが押されている間、項目を上にスクロールする
                if ( self getkeycodepressed( "buttontactical" , "buttondpadup" ) )
                    // en: scroll item up
                    // ja: 項目を上にスクロールする
                    self modmenuscroll( 0 , l_scrolltime );
                // en: while the "use" button is pressed and the "aim" button is not pressed
                // ja: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されていない間
                else if ( self getkeycodepressed( "buttonuse" , "buttondpaddown" ) && ( self getkeycodepressed( "buttonads" , "noneoff" ) == false ) )
                    // en: scroll item down
                    // ja: 項目を下にスクロールする
                    self modmenuscroll( 1 , l_scrolltime );
                // en: while the "use" button is pressed and the "aim" button is pressed
                // ja: "使用" ボタンが押されていて、且つ "エイム" ボタンが押されている間
                else if ( self getkeycodepressed( "buttonuse" , "buttonuse" ) && ( self getkeycodepressed( "buttonads" , "buttonads" ) ) )
                    // en: determine the selected item
                    // ja: 選択中の項目を決定する
                    self modmenudecideoption( );
                // en: while the "melee attack" button is pressed and the "aim" button is pressed
                // ja: "近接攻撃" ボタンが押されていて、且つ "エイム" ボタンが押されている間
                else if ( self getkeycodepressed( "buttonmelee" , "buttonmelee" ) && self getkeycodepressed( "buttonads" , "buttonads" ) )
                    // en: return the mod menu level to the previous level (close the menu if it is the root)
                    // ja: モッドメニューの階層を1つ前に戻す（ルートの場合はメニューを閉じる）
                    self modmenubacklayer( l_movetime );
            }
        }

        wait 0.001;
    }
}



//++++++++++++++++++++++++++++++
// en : what happens when a player dies
// ja : プレイヤーが死んだときに実行される処理
//++++++++++++++++++++++++++++++
onplayerdied( )
{
    level endon( "game_ended" );
    self endon( "disconnect" );

    while ( true )
    {
        // en : wait for yourself to "dead"
        // ja : 自分が「死んだ」ことを待つ
        self waittill( "death" );
        
        // en: enable to operate mod menu
        // ja: モッドメニューを操作できるようにする
        if ( isdefined( self.modsystem.menucontrol ) && !self.modsystem.menucontrol )
            self.modsystem.menucontrol = true;
        
        // en: if the mod menu is open, close (hide) the mod menu
        // ja: モッドメニューを開いている場合、モッドメニューを閉じる（非表示にする）
        if ( isdefined( self.modsystem.menuactive ) && self.modsystem.menuactive )
            self modmenuclose( self.modsystem.menuocanimtime );
        
//        // en : if various functions are being executed, terminate each function in a subthread.
//        // ja : 各種機能が実行中だった場合、各機能をサブスレッドで終了処理を行う
        if ( isdefined( self.optstat["bindnocliplinkobject"] ) )                self thread execbindnoclip(     "bindnoclip"    , 2 );
        if ( isdefined( self.optstat["setmodel"] ) )                            self thread execsetmodel(       "setmodel"      , 2 );
//        if ( isdefined( self.optstat["walkingac130"] ) )                        self thread execwalkingac130(   "walkingac130"  , 2 );
//        if ( isdefined( self.optstat["healthbar"] ) )                           self thread exechealthbar(      "healthbar"     , 2 );
//        if ( isdefined( self.optstat["railgun"] ) )                             self thread execrailgun(        "railgun"       , 2 );
//        if ( isdefined( self.optstat["dogtagshoes"] ) )                         self thread ::execdogtagshoes(    "dogtagshoes"   , 2 );
//        if ( isdefined( self.optstat["adventureball"] ) )                       self thread ::execadventureball(  "adventureball" , 2 );
//        //if ( isdefined( self.optstat["deadopsarcade"] ) )                     self thread execdeadopsarcade(  "deadopsarcade" , 2 );
//
//
//        // en : if various functions are being executed, disable each function
//        // ja : 各種機能が実行中だった場合、各機能を無効にする
        if ( isdefined( self.optstat["rocketride"] ) )         self.optstat["rocketride"] = undefined;
//        if ( isdefined( self.optstat["teleportgun"] ) )        self.optstat["teleportgun"] = undefined;
        if ( isdefined( self.optstat["kamikazebomber"] ) )     self.optstat["kamikazebomber"] = undefined;
        if ( isdefined( self.optstat["realcarepackagegun"] ) ) self.optstat["realcarepackagegun"] = undefined;
//        if ( isdefined( self.optstat["thundergun"] ) )         self.optstat["thundergun"] = undefined;
    }
}



//++++++++++++++++++++++++++++++
// en : a general purpose function to automatically execute various functions when respawning after dying.
// ja : 自分が死んだ後、リスポーン時に各機能を自動的に実行するための汎用関数
//++++++++++++++++++++++++++++++
execrecoveryfunction( optname , func , time )
{
    if ( isdefined( self.optstat[optname] ) )
        self thread execloopfunction( optname , func , time );
}



//++++++++++++++++++++++++++++++
// en : automatically perform each function when you respawn after you die
// ja : 自分が死んだ後、リスポーン時に各機能を自動的に実行する
//++++++++++++++++++++++++++++++
recoveryfunctions( )
{
    // en : if variables for various functions have been created, restart processing of each function in a subthread.
    // ja : 各種機能の変数が作られていた場合、各機能をサブスレッドで処理を再開する
//    self execrecoveryfunction( "demigod"                , ::execdemigod                 , 0.05 );
//    self execrecoveryfunction( "infinityremainingammo"  , ::execinfinityremainingammo   , 0.05 );
    self execrecoveryfunction( "norecoil"               , ::execnorecoil                , 1 );
//    self execrecoveryfunction( "movementspeed1_25x"     , ::execmovementspeed1_25x      , 1 );
    self execrecoveryfunction( "thirdperson"            , ::execthirdperson             , 1 );
//    self execrecoveryfunction( "alwaysnormaluav"        , ::execalwaysnormaluav         , 1 );
    self execrecoveryfunction( "freezeplayer"           , ::execfreezeplayer            , 1 );
//    self execrecoveryfunction( "sendmessageloop"        , ::execsendmessageloop         , 3 );
    self execrecoveryfunction( "outofmappossible"       , ::execoutofmappossible        , 1 );
//    self execrecoveryfunction( "saveloadlocation"       , ::execsaveloadlocation        , 0.05 );
    self execrecoveryfunction( "jetpack"                , ::execjetpack                 , 0.1 );
    self execrecoveryfunction( "ninjamode"              , ::execninjamode               , 0.05 );
    self execrecoveryfunction( "superslide"             , ::execsuperslide              , 0.05 );
//    self execrecoveryfunction( "shieldman"              , ::execshieldman               , 1 );
//    self execrecoveryfunction( "healthbar"              , ::exechealthbar               , 0.05 );
//    self execrecoveryfunction( "discocamo"              , ::execdiscocamo               , 0.15 );
    self execrecoveryfunction( "setmodel"               , ::execsetmodel                , 0.05 );
    self execrecoveryfunction( "moddedbullets"          , ::execmoddedbullets           , 0.05 );
//    self execrecoveryfunction( "moddedgrenades"         , ::execmoddedgrenades          , 0.05 );
    self execrecoveryfunction( "infinityammo"           , ::execinfinityammo            , 0.05 );
    self execrecoveryfunction( "bindnoclip"             , ::execbindnoclip              , 0.05 );
    self execrecoveryfunction( "movementspeed"          , ::execchangemovementspeed     , 1 );
    self execrecoveryfunction( "invisible"              , ::execinvisible               , 1 );
//    self execrecoveryfunction( "alwaysadvanceduav"      , ::execalwaysadvanceduav       , 1 );
//    self execrecoveryfunction( "esp"                    , ::execesp                     , 0.05 );
    self execrecoveryfunction( "godmode"                , ::execgodmode                 , 1 );
//    self execrecoveryfunction( "nohitmode"              , ::execnohitmode               , 1 );
    self execrecoveryfunction( "aimbot"                 , ::execaimbot                  , 0.01 );
    self execrecoveryfunction( "advancedforgemode"      , ::execadvancedforgemode       , 0.01 );
//    self execrecoveryfunction( "alwaysskinupdater"      , ::execalwaysskinupdater       , 0.1 );
//    self execrecoveryfunction( "fullcustombullets"      , ::execfullcustombullets , 0.05 );
//    self execrecoveryfunction( "speedhack"              , ::execspeedhack         , 0.1 );
//    self execrecoveryfunction( "superjump"              , ::execsuperjump         , 0.05 );
//    self execrecoveryfunction( "highradiationmode"      , ::exechighradiationmode , 0.01 );
//    self execrecoveryfunction( "dogtagshoes"            , ::execdogtagshoes       , 1 );
//    self execrecoveryfunction( "adventureball"          , ::execadventureball     , 0.01 );
//    if ( self ishost( ) )
//        self execrecoveryfunction( "xplobby"            , ::execxplobby           , 1 );
//    //  if ( isdefined( self.optstat["deadopsarcade"] ) )           { self thread execloopfunction( "deadopsarcade"         , ::execdeadopsarcade           , 0.05 ); }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Generic function to get menu state
// ja : メニュー状態取得汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : returns the function to be executed when selecting an item from the "current menu hierarchy" and "currently selected item index"
// ja : 「現在のメニュー階層」、「現在選択中の項目インデックス」から、項目決定時に実行する関数を返す
//++++++++++++++++++++++++++++++
getoptionfunction( selflayer , selfoption )
{
    if ( isdefined( level.modmenudata[selflayer] ) && isdefined( level.modmenudata[selflayer].item[selfoption] ) && isdefined( level.modmenudata[selflayer].item[selfoption].callfunc ) )
        return level.modmenudata[selflayer].item[selfoption].callfunc;

    return ::emptyfunction;
}



//++++++++++++++++++++++++++++++
// en : returns the maximum index of the menu from the "current menu hierarchy" and "current privilege state"
// ja : 「現在のメニュー階層」、「現在の権限状態」から、そのメニューの最大インデックスを返す
//++++++++++++++++++++++++++++++
getlayermaxindex( selflayer , selflevel )
{
    l_max   = 0;
    l_data  = level.modmenudata;

    if ( selflayer == level.moddef.ly_playersref )
        return level.players.size - 1;
    
    if ( !isdefined( l_data[selflayer] ) )
        return l_max;

    for ( i = 0; i < l_data[selflayer].item.size; i++ )
    {
        if ( !isdefined( l_data[selflayer].item[i] ) )
            break;
        
        if ( !isdefined( l_data[selflayer].item[i].auth ) )
        {
            l_max = ( l_data[selflayer].item.size - 1 );
            break;
        }
        else
        {
            if ( l_data[selflayer].item[i].auth <= selflevel )
                l_max = i;
            else
                break;
        }
    }

    return l_max;
}



//++++++++++++++++++++++++++++++
// en : returns the corresponding translated text from the "current language", "current menu hierarchy", and "currently selected item index"
// ja : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、該当する翻訳文を返す
//++++++++++++++++++++++++++++++
getmodmenutext( selflang , selflayer , selfoption )
{
    l_data = level.modmenudata;

    if ( isdefined( l_data[selflayer] ) && isdefined( l_data[selflayer].item[selfoption] ) && isdefined( l_data[selflayer].item[selfoption].textid ) )
        return getmttext( selflang , "" + l_data[selflayer].item[selfoption].textid , self usinggamepad( ) );

    return "<text_undefined>";
}



//++++++++++++++++++++++++++++++
// en : obtain the enabled/disabled status of the item from the "current language", "current menu hierarchy" and "currently selected item index"
// ja : 「現在の言語」、「現在のメニュー階層」、「現在選択中の項目インデックス」から、その項目の有効・無効状態を取得する
//++++++++++++++++++++++++++++++
getoptionstatus( selflang , selflayer , selfoption , getid )
{
    // en: if the currently open menu level is the player refer menu
    // ja: 今開いているメニュー階層がプレイヤー参照メニューの場合
    if ( selflayer == level.moddef.ly_playersref )                              return " ";
    if ( !isdefined( level.modmenudata[selflayer] ) )                           return "<error_getoptstat_nolayer>";
    if ( !isdefined( level.modmenudata[selflayer].item[selfoption] ) )          return "<error_getoptstat_noitem>";
    if ( !isdefined( level.modmenudata[selflayer].item[selfoption].update ) )   return "<error_getoptstat_noupdate>";

    l_update    = level.modmenudata[selflayer].item[selfoption].update;

    switch ( l_update )
    {
        // level.moddef.mod_notonf
        case 2:   return ( isdefined( getid ) ? " " : "" );
        // level.moddef.mod_reflesh
        case 3:  return " ";
        // level.moddef.ar_submenu
        case 10:   return "  ";

        // level.moddef.mod_enabled
        // level.moddef.mod_fastreflesh
        case 1:
        case 4:
            l_area      = level.modmenudata[selflayer].item[selfoption].area;
            l_textid    = level.modmenudata[selflayer].item[selfoption].textid;
            l_subparam  = level.modmenudata[selflayer].item[selfoption].subparam;
            l_enabled   = ( isdefined( getid ) ? "enabled" : " " + getmttext( selflang , "enabled" ) );

            switch ( l_area )
            {
                case 0: // moddef.ar_self
                    if ( isdefined( l_subparam ) && isdefined( self.optstat[l_subparam] ) && isdefined( self.optstat[l_subparam].moddata[l_textid] ) )
                        return l_enabled;
                    else if ( isdefined( self.optstat[l_textid] ) )
                        return l_enabled;
                    break;
                    
                case 1: // moddef.ar_level
                    if ( isdefined( l_subparam ) && isdefined( level.lvlstat[l_subparam] ) && isdefined( level.lvlstat[l_subparam].moddata[l_textid] ) )
                        return l_enabled;
                    else if ( isdefined( level.lvlstat[l_textid] ) )
                        return l_enabled;
                    break;
                    
                case 2: // moddef.ar_dvar
                    return " : " + getdvarint( l_subparam , 0 );
                    
                case 3: // moddef.ar_perk
                    if ( self scripts\mp\utility\perk::_hasperk( l_subparam ) )
                        return l_enabled;
                    break;
                    
                case 4: // moddef.ar_player
                    if ( isdefined( self.modsystem.menuplayer ) && isdefined( level.players[self.modsystem.menuplayer] ) && isdefined( level.players[self.modsystem.menuplayer].optstat[l_textid] ) )
                        return l_enabled;
                    break;
                    
                case 5: // moddef.ar_devide
                    if ( isdefined( self.optstat[l_textid + l_subparam] ) )
                        return " : " + self.optstat[l_textid + l_subparam];
                    break;
                    
                case 6: // moddef.ar_content
                    if ( isdefined( l_subparam ) && isdefined( self.optstat[l_subparam] ) && isdefined( self.optstat[l_subparam].moddata[l_textid] ) )
                    {
                        if ( isdefined( self.optstat[l_subparam].moddata[l_textid].assetname ) )    return " : " + self.optstat[l_subparam].moddata[l_textid].assetname;
                        else                                                                        return " : " + self.optstat[l_subparam].moddata[l_textid];
                    }
                    else if ( isdefined( self.optstat[l_textid] ) )
                        return " : " + self.optstat[l_textid];
                    break;
                    
                case 7: // moddef.ar_lvcontent
                    if ( isdefined( l_subparam ) && isdefined( level.lvlstat[l_subparam] ) && isdefined( level.lvlstat[l_subparam].moddata[l_textid] ) )
                        return " : " + level.lvlstat[l_subparam].moddata[l_textid];
                    else if ( isdefined( level.lvlstat[l_textid] ) )
                        return " : " + level.lvlstat[l_textid];
                    break;
                    
                case 8: // moddef.ar_devidevol
                    if ( isdefined( self.optstat[l_textid + l_subparam] ) )
                        return " : " + self.optstat[l_textid + l_subparam].size;
                    break;
                    
                case 9: // moddef.ar_devidelev
                    if ( isdefined( level.lvlstat[l_textid + l_subparam] ) )
                        return " : " + level.lvlstat[l_textid + l_subparam].size;
                    break;
            }
            return ( isdefined( getid ) ? "disabled" : " " + getmttext( selflang , "disabled" ) );
    }

    return "<error_getoptstat_noitemarg>";
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



////++++++++++++++++++++++++++++++
//// en : gets whether the player's authority is selectable.
//// ja : プレイヤーの権限が選択対象かどうかを取得する
////++++++++++++++++++++++++++++++
//isuntargetverification( )
//{
//    lv_admin = level.moddef.lv_admin;
//    if ( !isdefined( self.optstat ) )                           return false;
//    if ( !isdefined( self.optstat["godmode"] ) )                return false;
//    if ( !isdefined( self.optstat["nohitmode"] ) )              return false;
//    if ( !isdefined( self.verificationstatusindex ) )           return false;
//    if ( self.verificationstatusindex < level.moddef.lv_admin ) return false;
//    return true;
//}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Basic generic function
// ja : 基本汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : destroy variables that only you use while processing a mod (called when it becomes unverified)
// ja : 自分のみがmodの処理中に使う変数を破棄する（未承認になった時に呼ばれる）
//++++++++++++++++++++++++++++++
finalizeselfdata( )
{
    wait self.modsystem.menuocanimtime + 0.1;
    // en: issue a "removeauth" event to yourself (this will end the looping function)
    // ja: 自分に対して「removeauth」イベントを発行する（これでループ処理している関数が終了する）
    self notify( "removeauth" );

    // en: wait a little while for the loop to finish
    // ja: ループ処理が終了するのを少しだけ待つ
    wait 0.001;

    // en: discard various variables
    // ja: 各種変数を破棄する
    self.modsystem  = undefined;
    self.optstat    = undefined;
    
    wait 0.001;

    // en: create a variable that only you will use while processing the mod
    // ja: 自分のみがmodの処理中に使う変数を作成する
    self initializeselfdata( );
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
    l_textmenudescription   = getmttext( self.curlang , "modmenuopendescription" );

    if ( isdefined( level.lvlstat[l_quickscope] ) )
    {
        l_textmoddedlobby       = getmttext( self.curlang , "welcomequickscopelobby" );
        l_textyourmenustatus    = getmttext( self.curlang , "quickscopelobbydescription1" );
        l_textverifiedlevel     = "";
        l_textmenudescription   = getmttext( self.curlang , "quickscopelobbydescription2" );
    }

    // en : display a message in the kill log area at the bottom left of your screen(the kill log has 6 lines, so fill in 3 blank lines)
    // ja : 自分の画面左下、キルログ部分にメッセージを表示する（キルログは6行あるため、3行空白で埋める）
    self iprintln( "" );
    self iprintln( "" );
    self iprintln( "" );
    self iprintln( l_textmenudescription );
    self iprintln( l_textyourmenustatus + l_textverifiedlevel );
    self iprintln( l_textwelcome + l_textprojectname + l_textmoddedlobby );
}



//++++++++++++++++++++++++++++++
// en : allow player actions
// ja : プレイヤーの行動を許可する
//++++++++++++++++++++++++++++++
allowplayermovements( )
{
    // en : if you are not assigned permissions higher than "unverified", do nothing.
    // ja : 自分に「未承認」以上の権限が割り振られていなければ、何も処理しない
    if ( !( self isverified( ) ) )
        return;

    // en : unfreeze state
    // ja : フリーズ状態を解除する
    self freezecontrols( false );
    
    // en : be able to move
    // ja : 動けるようにする
    self allowmovement( true );
    
    // en : make it possible to run
    // ja : 走れるようにする
    self allowsprint( true );
    
    // en : allow jumping
    // ja : ジャンプができるようにする
    self allowjump( true );
    
    // en : allows melee attacks
    // ja : 近接攻撃ができるようにする
    self allowmelee( true );
    
    // en : allows attacks
    // ja : 攻撃ができるようにする
    self allowfire( true );
     
    // en : allows sliding
    // ja : スライディングができるようにする
    self allowslide( true );
    
    // en : make it possible to stand
    // ja : 立てるようにする
    self allowstand( true );
    
    // en : make it possible to prone
    // ja : 伏せられるようにする
    self allowprone( true );
    
    // en : make it possible to crouch
    // ja : しゃがめるようにする
    self allowcrouch( true );
    
    // en : make it possible to reload
    // ja : リロードをできるようにする
    self allowreload( true );
    
    // en : make it possible to see through hidden objects
    // ja : 遮蔽物から覗けるようにする
    self allowmountside( true );
    self allowmounttop( true );
    self allowlean( true );
    
    // en : allow double jumping
    // ja : 2段ジャンプができるようにする
    self allowdoublejump( true );
    
    // en : allow wall running
    // ja : 壁走りができるようにする
    self allowwallrun( true );
    
    // en : allow mantle
    // ja : マントルができるようにする
    self allowmantle( true );
}



//++++++++++++++++++++++++++++++
// en : add line breaks to all lines in the log at the bottom left to make the display cleaner.
// ja : 左下のログを全行分改行して、表示をきれいにする
//++++++++++++++++++++++++++++++
clearloglines( )
{
    /*
    l_array = [];
    l_array[l_array.size] = "0";
    l_array[l_array.size] = "1";
    l_array[l_array.size] = "2";
    l_array[l_array.size] = "3";
    l_array[l_array.size] = "4";
    l_array[l_array.size] = "5";
    l_array[l_array.size] = "6";
    l_array[l_array.size] = "7";
    l_array[l_array.size] = "8";
    l_array[l_array.size] = "9";
    l_array[l_array.size] = "a";
    l_array[l_array.size] = "b";
    l_array[l_array.size] = "c";
    l_array[l_array.size] = "d";
    l_array[l_array.size] = "e";
    l_array[l_array.size] = "f";
    l_array[l_array.size] = "g";
    l_array[l_array.size] = "h";
    l_array[l_array.size] = "i";
    l_array[l_array.size] = "j";
    l_array[l_array.size] = "k";
    l_array[l_array.size] = "l";
    l_array[l_array.size] = "m";
    l_array[l_array.size] = "n";
    l_array[l_array.size] = "o";
    l_array[l_array.size] = "p";
    l_array[l_array.size] = "q";
    l_array[l_array.size] = "r";
    l_array[l_array.size] = "s";
    l_array[l_array.size] = "t";
    l_array[l_array.size] = "u";
    l_array[l_array.size] = "v";
    l_array[l_array.size] = "w";
    l_array[l_array.size] = "x";
    l_array[l_array.size] = "y";
    l_array[l_array.size] = "z";
    l_array[l_array.size] = "!";
    l_array[l_array.size] = "#";
    l_array[l_array.size] = "$";
    l_array[l_array.size] = "%";
    l_array[l_array.size] = "&";
    l_array[l_array.size] = "'";
    l_array[l_array.size] = "(";
    l_array[l_array.size] = ")";
    l_array[l_array.size] = "-";
    l_array[l_array.size] = "=";
    l_array[l_array.size] = "~";
    l_array[l_array.size] = "|";
    l_array[l_array.size] = "@";
    l_array[l_array.size] = "`";
    l_array[l_array.size] = "[";
    l_array[l_array.size] = "]";
    l_array[l_array.size] = "{";
    l_array[l_array.size] = "}";
    l_array[l_array.size] = "*";
    l_array[l_array.size] = ":";
    l_array[l_array.size] = "+";
    l_array[l_array.size] = ";";
    l_array[l_array.size] = "<";
    l_array[l_array.size] = ">";
    l_array[l_array.size] = ".";
    l_array[l_array.size] = "?";
    l_array[l_array.size] = "_";
    l_array[l_array.size] = "/";
    l_text = "";
    // en: display an empty statement in the log at the bottom left of 6 lines
    // ja: 6行分左下のログに空文を表示させる
    for ( randomcount = 0; randomcount < 10; randomcount++ )
    {
        for ( textcount = 0; textcount < 6; textcount++ )
        {
            l_text = "";
            for ( wordcount = 0; wordcount < randomintrange( 10 , 35 ); wordcount++ )
            {
                l_text += scripts\engine\utility::random( l_array );
            }
            self iprintln( l_text );
        }
        wait 0.01;
    }
    */
    for ( i = 0; i < 6; i++ )
        self iprintln( "" );
    self iprintlnbold( "" );
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
    l_text = getmttext( selflang , tagname ) + getmttext( selflang , msg1 ) + l_content;

    self iprintlnbold( l_text );
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
// en : change language
// ja : 言語を変更する
//++++++++++++++++++++++++++++++
changelanguage( )
{
    // en: change the current language to the language selected in the mod menu
    // ja: 現在の言語を、モッドメニューで選択中の言語に変更する
    self.curlang = self.modsystem.menuoptioncurrent;
    
    // en: update the text displayed in the mod menu
    // ja: モッドメニューの表示するテキストを更新する
    self modmenutextupdate( );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : HUD elements generic function
// ja : Hud elemnts 汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : create a hud (on-screen ui) with specified elements
// ja : 指定した要素でhud（画面上のui）を作成する
//++++++++++++++++++++++++++++++
createrectangle( xalignment , yalignment , xpoint , ypoint , xscale , yscale , colorvalue , shadertype , sortvalue , alphavalue , publish )
{
    l_newui = undefined;
    if ( !isdefined( publish ) )
        l_newui             = newclienthudelem( self );
    else
        l_newui             = newhudelem( );
    l_newui.elemtype        = "icon";
    l_newui.color           = colorvalue;
    l_newui.alpha           = alphavalue;
    l_newui.sort            = sortvalue;
    l_newui.children        = [];
    l_newui.archived        = 0;
    l_newui.hidewheninmenu  = 1;
    l_newui.showinkillcam   = 1;
    l_newui setshader( shadertype , xscale , yscale );
    l_newui scripts\mp\hud_util::setpoint( xalignment , yalignment , xpoint , ypoint );
    return l_newui;
}



//++++++++++++++++++++++++++++++
// en : create a hud (on-screen ui) with specified elements
// ja : 指定した要素でhud（画面上のui）を作成する
//++++++++++++++++++++++++++++++
createtextelem( fonttype , fontscale , alignx , aligny , posx , posy , colorvalue , alphavalue , glowcolor , glowalpha , sortvalue , textvalue , parent )
{
    // font     : "default" , "hudsmall" , "bigfixed"
    // align    : "center" , "right" , "left" , "bottom left" , "top" , "bottom" , "middle"

    //l_newui                     = scripts\mp\hud_util::createfontstring( fonttype , fontscale );
    //  l_newui                     = newclienthudelem( self );
    //  l_newui.elemtype            = "font";
    //  l_newui.font                = fonttype;
    //  l_newui.fontscale           = fontscale;
    //  l_newui.basefontscale       = fontscale;
    l_newui = undefined;
    if ( !isdefined( parent ) )
        l_newui                 = newclienthudelem( self );
    else
        l_newui                 = newhudelem( );
    l_newui.elemtype            = "font";
    l_newui.font                = fonttype;
    l_newui.fontscale           = fontscale;
    l_newui.basefontscale       = fontscale;
    l_newui.x                   = 0;
    l_newui.y                   = 0;
    l_newui.width               = 0;
    l_newui.height              = int( level.fontheight * fontscale );
    l_newui.xoffset             = 0;
    l_newui.yoffset             = 0;
    l_newui.children            = [];
    l_newui scripts\mp\hud_util::setparent( level.uiparent );
    l_newui.hidden              = 0;
    l_newui.archived            = 0;
    l_newui.showinkillcam       = 1;
    l_newui.hidewheninmenu      = 0;
    l_newui.foreground          = 1;
    l_newui.color               = colorvalue;
    l_newui.alpha               = alphavalue;
    //l_newui.glowcolor           = glowcolor;
    l_newui.glowalpha           = glowalpha;
    l_newui.sort                = sortvalue;
    l_newui scripts\mp\hud_util::setpoint( alignx , aligny , posx , posy );
    //l_newui setvalue( 987890542 ); //9.87891e+08
    //l_newui.label               = textvalue;
    l_newui settext( textvalue );
    return l_newui;

    //if ( isdefined( parent ) )
    //{
        //l_fontelem              scripts\mp\hud_util::setparent( parent );
    //}
    // l_fontelem.elemtype         = "font";
    // l_fontelem.label            = &text;
}



//++++++++++++++++++++++++++++++
// en : Change the scale and color of the specified HUD string (UI on the screen) within the specified
// ja : 指定したhud string（画面上のui）のスケール、カラーを、指定した秒数で変更する
//++++++++++++++++++++++++++++++
fontscalecolor( time , scale , color , alpha )
{
    self changefontscaleovertime( time );
    self.fontscale = scale;
    self fadeovertime( time );
    self.alpha = alpha;
    self.color = color;
}



//++++++++++++++++++++++++++++++
// en : move the xy axis position of the specified hud (on-screen ui) in the specified number of seconds.
// ja : 指定したhud（画面上のui）のxy軸の位置を、指定した秒数で移動させる
//++++++++++++++++++++++++++++++
elementmovexy( time , xpoint , ypoint )
{
	self moveovertime( time );
    if ( isdefined( xpoint ) ) self.x = xpoint;
    if ( isdefined( ypoint ) ) self.y = ypoint;
}



//++++++++++++++++++++++++++++++
// en : changes the color of the specified hud (on-screen ui) for the specified number of seconds.
// ja : 指定したhud（画面上のui）の色を、指定した秒数で変色させる
//++++++++++++++++++++++++++++++
elementcolorchange( time , colorvalue , alpha )
{
	self fadeovertime( time );
	self.color = colorvalue;
	self.alpha = alpha;
}



//++++++++++++++++++++++++++++++
// en : get the gsc color code from the specified rgb color balance
// ja : 指定したrgb色バランスからgsc用カラーコードを取得する
//++++++++++++++++++++++++++++++
dividecolor( rvalue , gvalue , bvalue )
{
    return ( (rvalue / 255) , (gvalue / 255) , (bvalue / 255) );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : HUD elements Show / Hide function
// ja : Hud elemnts 表示 / 非表示 関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : Create the background for the vertical mod menu.
// ja : 縦型 Mod Menu の背景を作成する
//++++++++++++++++++++++++++++++
createelemleftmenu( )
{
    l_nosize            = 0;
    l_defxleft          = level.moddef.vl_elemxverticalmenu;
    l_defyleft          = level.moddef.vl_elemyverticalmenu;
    l_defwidthleft      = level.moddef.vl_elemwverticalmenu;
    l_halfwidthleft     = l_defwidthleft / 2;
    l_defheightleft     = level.moddef.vl_elemhverticalmenu;
    l_halfheightleft    = l_defheightleft / 2;
    l_leftposleft       = l_defxleft - l_halfwidthleft;
    l_rightposleft      = l_defxleft + l_halfwidthleft;
    l_upperposleft      = l_defyleft - l_halfheightleft;
    l_lowerposleft      = l_defyleft + l_halfheightleft;
    l_inlineposleft     = l_defyleft - 17;
    l_bg2posleft        = l_inlineposleft - 29;
    l_outlinesize       = level.moddef.vl_elemsizeoutline;
    l_alg               = "CENTER";
    l_shad              = "white";
    l_grey              = dividecolor( 55   , 55    , 55    );
    l_grey2             = dividecolor( 20   , 20    , 20    );
    l_blue              = dividecolor( 37   , 72    , 106   );
    l_yellow            = dividecolor( 201  , 149   , 36    );
    l_alpha             = 0.85;
    l_sort              = 0;
    self.modsystem.menuui["left_bg1"]       = self createrectangle( l_alg , l_alg , l_defxleft      , l_defyleft        , l_defwidthleft    , l_nosize      , l_grey    , l_shad , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["left_bg2"]       = self createrectangle( l_alg , l_alg , l_defxleft      , l_bg2posleft      , l_defwidthleft    , l_nosize      , l_grey2   , l_shad , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["left_inline_1"]  = self createrectangle( l_alg , l_alg , l_defxleft      , l_inlineposleft   , l_nosize          , l_outlinesize , l_blue    , l_shad , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["left_outline_1"] = self createrectangle( l_alg , l_alg , l_leftposleft   , l_defyleft        , l_outlinesize     , l_nosize      , l_yellow  , l_shad , l_sort , l_alpha );
    self.modsystem.menuui["left_outline_2"] = self createrectangle( l_alg , l_alg , l_rightposleft  , l_defyleft        , l_outlinesize     , l_nosize      , l_yellow  , l_shad , l_sort , l_alpha );
    self.modsystem.menuui["left_outline_3"] = self createrectangle( l_alg , l_alg , l_defxleft      , l_upperposleft    , l_nosize          , l_outlinesize , l_yellow  , l_shad , l_sort , l_alpha );
    self.modsystem.menuui["left_outline_4"] = self createrectangle( l_alg , l_alg , l_defxleft      , l_lowerposleft    , l_nosize          , l_outlinesize , l_yellow  , l_shad , l_sort , l_alpha );
}



//++++++++++++++++++++++++++++++
// en : Display the background of the vertical mod menu.
// ja : 縦型 Mod Menu の背景を表示する
//++++++++++++++++++++++++++++++
showelemleftmenu( time )
{
    l_outlinesize           = level.moddef.vl_elemsizeoutline;
    l_defwidthleft          = level.moddef.vl_elemwverticalmenu;
    l_defheightleft         = level.moddef.vl_elemhverticalmenu;
    l_targetwidthleft       = l_defwidthleft;
    l_targetheightleft      = l_defheightleft;
    l_targetheightbg2left   = l_targetheightleft - 94;

    self.modsystem.menuui["left_bg1"]       scaleovertime( time , l_targetwidthleft           , l_targetheightleft );
    self.modsystem.menuui["left_bg2"]       scaleovertime( time , l_targetwidthleft           , l_targetheightbg2left );
    self.modsystem.menuui["left_outline_1"] scaleovertime( time , l_outlinesize               , l_targetheightleft );
    self.modsystem.menuui["left_outline_2"] scaleovertime( time , l_outlinesize               , l_targetheightleft );
    self.modsystem.menuui["left_outline_3"] scaleovertime( time , l_targetwidthleft           , l_outlinesize );
    self.modsystem.menuui["left_outline_4"] scaleovertime( time , l_targetwidthleft           , l_outlinesize );
    self.modsystem.menuui["left_inline_1"]  scaleovertime( time , ( l_targetwidthleft - 2 )   , l_outlinesize );
}



//++++++++++++++++++++++++++++++
// en : Scale out the background of the vertical mod menu.
// ja : 縦型 Mod Menu の背景をスケールアウトする
//++++++++++++++++++++++++++++++
hideelemleftmenu( time )
{
    l_nosize        = 0;
    l_outlinesize   = level.moddef.vl_elemsizeoutline;
    l_defwidthleft  = level.moddef.vl_elemwverticalmenu;

    self.modsystem.menuui["left_bg1"]           scaleovertime( time , l_defwidthleft  , l_nosize );
    self.modsystem.menuui["left_bg2"]           scaleovertime( time , l_defwidthleft  , l_nosize );
    self.modsystem.menuui["left_outline_1"]     scaleovertime( time , l_outlinesize   , l_nosize );
    self.modsystem.menuui["left_outline_2"]     scaleovertime( time , l_outlinesize   , l_nosize );
    self.modsystem.menuui["left_outline_3"]     scaleovertime( time , l_nosize        , l_outlinesize );
    self.modsystem.menuui["left_outline_4"]     scaleovertime( time , l_nosize        , l_outlinesize );
    self.modsystem.menuui["left_inline_1"]      scaleovertime( time , l_nosize        , l_outlinesize );

}



//++++++++++++++++++++++++++++++
// en : Destroy the background of the vertical mod menu.
// ja : 縦型 Mod Menu の背景を削除する
//++++++++++++++++++++++++++++++
destroyelemleftmenu( )
{
    self.modsystem.menuui["left_bg1"]           destroy( );
    self.modsystem.menuui["left_bg2"]           destroy( );
    self.modsystem.menuui["left_outline_1"]     destroy( );
    self.modsystem.menuui["left_outline_2"]     destroy( );
    self.modsystem.menuui["left_outline_3"]     destroy( );
    self.modsystem.menuui["left_outline_4"]     destroy( );
    self.modsystem.menuui["left_inline_1"]      destroy( );
}



//++++++++++++++++++++++++++++++
// en : Create the background for the horizontal mod menu.
// ja : 日本国旗を作成する
//++++++++++++++++++++++++++++++
createelemjapanflag( )
{
    l_nosize        = 0;
    l_defx          = 0;
    l_defy          = level.moddef.vl_elemyhorizontalmenu;
    if ( ( level.mapname == "mp_escape4" ) || ( level.mapname == "mp_sm_island_1" ) )
    {
        l_defy = level.moddef.vl_elemyfixhorizontalmenu;
    }
    l_defheight     = level.moddef.vl_elemyjapicon;
    l_halfheight    = l_defheight / 2;
    l_upperpos      = l_defy    - l_halfheight;
    l_headerpos     = l_upperpos + ( l_halfheight / 3 );

    l_red           = dividecolor( 188  , 0     , 45    );
    l_white         = dividecolor( 255  , 255   , 255   );
    l_alg           = "CENTER";
    l_shad          = "white";
    l_shad2         = "hud_realism_head_revive";
    l_alpha         = 1;
    l_sort          = 10;
    self.modsystem.menuui["japw"]       = self createrectangle( l_alg , l_alg , l_defx          , l_headerpos           , l_nosize , l_nosize , l_white   , l_shad  , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["japr"]       = self createrectangle( l_alg , l_alg , l_defx          , l_headerpos           , l_nosize , l_nosize , l_red     , l_shad2 , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["japrfix1"]   = self createrectangle( l_alg , l_alg , l_defx          , ( l_headerpos - 1 )   , l_nosize , l_nosize , l_red     , l_shad  , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["japrfix2"]   = self createrectangle( l_alg , l_alg , ( l_defx + 1 )  , ( l_headerpos - 2 )   , l_nosize , l_nosize , l_red     , l_shad  , l_sort , l_alpha ); l_sort++;
    self.modsystem.menuui["japwfix"]    = self createrectangle( l_alg , l_alg , l_defx          , ( l_headerpos + 7 )   , l_nosize , l_nosize , l_white   , l_shad  , l_sort , l_alpha );
}



//++++++++++++++++++++++++++++++
// en : Scale out the Japanese national flag.
// ja : 日本国旗をスケールアウトする
//++++++++++++++++++++++++++++++
scaleelemjapanflag( time , wh )
{
    l_japw      = ( 0 < wh ) ? ( wh + 6 )   : 0;
    l_japr      = ( 0 < wh ) ? ( wh + 5 )   : 0;
    l_japrfix   = ( 0 < wh ) ? ( wh - 17 )  : 0;
    l_japwfixw  = ( 0 < wh ) ? ( wh - 10 )  : 0;
    l_japwfixh  = ( 0 < wh ) ? ( wh - 22 )  : 0;

    self.modsystem.menuui["japw"]       scaleovertime( time , l_japw        , wh );
    self.modsystem.menuui["japr"]       scaleovertime( time , l_japr        , l_japr );
    self.modsystem.menuui["japrfix1"]   scaleovertime( time , l_japrfix     , l_japrfix );
    self.modsystem.menuui["japrfix2"]   scaleovertime( time , l_japrfix     , l_japrfix );
    self.modsystem.menuui["japwfix"]    scaleovertime( time , l_japwfixw    , l_japwfixh );
}



//++++++++++++++++++++++++++++++
// en : Move the Japanese national flag to the specified coordinates.
// ja : 日本国旗を指定座標に移動させる
//++++++++++++++++++++++++++++++
moveelemjapanflag( time , x , y )
{
    self.modsystem.menuui["japw"]       elementmovexy( time , x         , y );
    self.modsystem.menuui["japr"]       elementmovexy( time , x         , y );
    self.modsystem.menuui["japrfix1"]   elementmovexy( time , x         , ( y - 1 ) );
    self.modsystem.menuui["japrfix2"]   elementmovexy( time , ( x + 1 ) , ( y - 2 ) );
    self.modsystem.menuui["japwfix"]    elementmovexy( time , x         , ( y + 7 ) );
}



//++++++++++++++++++++++++++++++
// en : Destroy the Japanese national flag.
// ja : 日本国旗を削除する
//++++++++++++++++++++++++++++++
destroyelemjapanflag( )
{
    self.modsystem.menuui["japw"]               destroy( );
    self.modsystem.menuui["japr"]               destroy( );
    self.modsystem.menuui["japrfix1"]           destroy( );
    self.modsystem.menuui["japrfix2"]           destroy( );
    self.modsystem.menuui["japwfix"]            destroy( );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mod Menu basic operation function
// ja : Mod Menu 基本操作関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : open (display) the mod menu
// ja : モッドメニューを開く（表示する）
//++++++++++++++++++++++++++++++
modmenuopen( opentime )
{
    // en: suppose the mod menu is opened
    // ja: モッドメニューが開かれたとする
    self.modsystem.menuactive = true;
    
    // en: issue a "openmodmenu" event to yourself (this will stop the menu text display update process)
    // ja: 自分に対して "openmodmenu" イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self notify( "openmodmenu" );

    // en : allow player actions
    // ja : プレイヤーの行動を許可する
    self allowplayermovements( );
    // en: play se only for yourself
    // ja: seを自分だけ再生する
    self playlocalsound( "mp_killstreak_transition_whoosh" );

    
    // en : Define variables for creating the mod menu background UI.
    // ja : モッドメニューの背景ui作成用の変数を定義
    l_japiconsize       = level.moddef.vl_elemsizejapicon;
    l_animtime          = opentime;
    l_interval          = 0;
    l_defxleft          = level.moddef.vl_elemxverticalmenu;
    l_defyleft          = level.moddef.vl_elemyverticalmenu;
    l_defwidthleft      = level.moddef.vl_elemxjapicon;
    l_defleftx          = l_defxleft + ( l_defwidthleft / 2 ) - ( l_japiconsize / 2 ) + 20;
    l_deflefty          = l_defyleft - ( l_defwidthleft / 2 ) + ( l_japiconsize / 2 ) + 10;
    l_changemenustyle   = "changemenustyle";
    l_iprintlnmenu      = "iprintlnmenu";


    // en: create background ui for mod menu
    // ja: モッドメニューの背景uiを作成する
    
    self createelemjapanflag( );
    self createelemleftmenu( );


    // en : changes the height and width of the specified hud (on-screen ui) in the specified number of seconds.
    // ja : 指定したhud（画面上のui）の縦横幅を、指定した秒数でサイズ変更する
    
    // en : move the xy axis position of the specified hud (on-screen ui) in the specified number of seconds.
    // ja : 指定したhud（画面上のui）のxy軸の位置を、指定した秒数で移動させる
    self moveelemjapanflag( l_interval , l_defleftx , l_deflefty );

    self scaleelemjapanflag( l_animtime , l_japiconsize );
    self showelemleftmenu( l_animtime );
    

    // en : run color animation of mod menu background color in subthread
    // ja : モッドメニューの背景色のカラーアニメーションをサブスレッドで実行する
    self thread modmenubackgroundcoloranimation( );

    // en: wait 0.3 seconds
    // ja: 0.3秒待機する
    wait l_animtime + 0.01;
    
    // en: when opening the mod menu for the first time, force the language menu to open
    // ja: モッドメニューを初めて開く場合、言語メニューを開かせる
    if ( self.modsystem.menufirstopen == true )
    {
        ln_en = level.moddef.ln_en;
        ly_languages = level.moddef.ly_languages;

        // en: current mod menu open page
        // ja: 現在のモッドメニューの開いているページ
        self.modsystem.menulayercurrent = ly_languages;
        // en: index of selected item in current mod menu
        // ja: 現在のモッドメニューの選択している項目インデックス
        self.modsystem.menuoptioncurrent = ln_en;
        // en: the depth of the current mod menu's open hierarchy
        // ja: 現在のモッドメニューの開いている階層の深さ
        self.modsystem.menulayerdepth = 1;
        // en: the mod menu page that was opened just before
        // ja: 直前に開いていたモッドメニューのページ
        self.modsystem.menulayerprevious[0] = 0;
        // en: item index of the mod menu that was most recently selected
        // ja: 直前に選択していたモッドメニューの項目インデックス
        self.modsystem.menuoptionprevious[0] = ( ly_languages - 1 );
        // en: Horizontal scroll position of the previously selected mod menu
        // ja: 直前に選択していたモッドメニューの横スクロール位置
        self.modsystem.menulrposprevious[0] = ( ly_languages - 1 );
    }

    // en: update the text displayed in the mod menu
    // ja: モッドメニューの表示するテキストを更新する
    self modmenutextupdate( );
}



//++++++++++++++++++++++++++++++
// en : scrolls the selected item up in the displayed mod menu
// ja : 表示中のモッドメニューの、選択中の項目を上にスクロールする
//++++++++++++++++++++++++++++++
modmenuscroll( path , scrolltime )
{
    l_iprintlnmenu  = "iprintlnmenu";
    l_up            = 0;
    l_maxindex      = 0;
    ly_playersref   = level.moddef.ly_playersref;
    l_maxtextsize   = ( !isdefined( self.optstat[l_iprintlnmenu] ) ? level.moddef.customtextlength : level.moddef.maxhrtextsize ) - 1;
    
    // en: if the currently open menu level is not the player refer menu, get the maximum index for each authority in each menu hierarchy
    // ja: 今開いているメニュー階層がプレイヤー参照メニューではない場合、各メニュー階層における、権限毎の最大インデックスを取得する
    if ( self.modsystem.menulayercurrent != ly_playersref )
        l_maxindex = getlayermaxindex( self.modsystem.menulayercurrent , self.verificationstatusindex );
    // en: if the currently open menu level is the player menu, get the maximum number of players currently participating
    // ja: 今開いているメニュー階層がプレイヤーメニューの場合、現在参加中のプレイヤーの最大人数を取得する
    else
        l_maxindex = level.players.size - 1;

    if ( path == l_up )
    {
        // en: set the horizontal scroll position of the mod menu to the top
        // ja: モッドメニューの横スクロール位置を左にずらす
        if ( 0 < self.modsystem.menulrpos )
            self.modsystem.menulrpos--;

        // en: if the currently selected item index is at the top, select the bottom item
        // ja: 現在選択中の項目インデックスが一番上の場合、一番下の項目を選択する
        if ( self.modsystem.menuoptioncurrent <= 0 )
        {
            self.modsystem.menuoptioncurrent = l_maxindex;
            self.modsystem.menulrpos = ( l_maxtextsize < l_maxindex ) ? l_maxtextsize : l_maxindex;
        }
        // en: if the currently selected item index is not the top one, move the currently selected item index in the mod menu one position forward (up)
        // ja: 現在選択中の項目インデックスが一番上ではない場合、モッドメニューの選択中項目インデックスを1つ前（上）にずらす
        else
            self.modsystem.menuoptioncurrent--;
    }
    else
    {
        // en: set the horizontal scroll position of the mod menu to the top
        // ja: モッドメニューの横スクロール位置を右にずらす
        if ( self.modsystem.menulrpos < l_maxtextsize )
            self.modsystem.menulrpos++;

        // en: if the currently selected item index exceeds the maximum index, select the top item
        // ja: 現在選択中の項目インデックスが、最大インデックスを超えている場合、一番上の項目を選択する
        if ( l_maxindex <= self.modsystem.menuoptioncurrent )
        {
            self.modsystem.menuoptioncurrent = 0;
            self.modsystem.menulrpos = 0;
        }
        // en: if the currently selected item index is less than the maximum index, shift the selected item index in the mod menu one position later (down)
        // ja: 現在選択中の項目インデックスが、最大インデックス未満の場合、モッドメニューの選択中項目インデックスを1つ後（下）にずらす
        else
            self.modsystem.menuoptioncurrent++;
    }
    
    // en: play se only for yourself
    // ja: seを自分だけ再生する
    self playlocalsound( "iw8_ks_ac130_weaponswitch" );

    // en: update the text displayed in the mod menu
    // ja: モッドメニューの表示するテキストを更新する
    self modmenutextupdate( );

    // en: wait 0.15 seconds
    // ja: 0.15秒待機する
    wait scrolltime;
}



//++++++++++++++++++++++++++++++
// en : execute the function registered in the currently selected item in a subthread
// ja : 現在選択中の項目に登録されている関数をサブスレッドで実行する
//++++++++++++++++++++++++++++++
modmenudecideoption( )
{
    mod_enabled         = 1;
    mod_notonf          = 2;
    mod_reflesh         = 3;
    mod_fastreflesh     = 4;
    ar_submenu          = 10;

    l_update = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].update;

    self thread [[ self.modsystem.menufunction ]]( );
    
    // en: play se only for yourself
    // ja: seを自分だけ再生する
    self playlocalsound( "weap_cluster_target_beep" );

    // en: when opening a submenu or for items that do not require text updates, update the text during other processing.
    // ja: サブメニューを開いた時の場合や、文字更新の必要ない項目は、他処理時に文字更新を行う
    if ( !isdefined( l_update ) ||
        ( l_update == mod_notonf ) ||
        ( l_update == ar_submenu ) )
    {
        wait 0.15;
    }
    // en: update the text displayed in the mod menu
    // ja: モッドメニューの表示するテキストを更新する
    else if ( ( l_update == mod_enabled ) ||
            ( l_update == mod_reflesh ) )
    {
        wait 0.15;
        self modmenutextupdate( );
    }
    // en: for items that you want to make ultra-high-speed decisions, update the text instantly.
    // ja: 超高速で項目決定を行いたい項目は、瞬時にテキスト更新を行う
    else if ( l_update == mod_fastreflesh )
    {
        wait 0.001;
        self modmenutextupdate( );
    }
}



//++++++++++++++++++++++++++++++
// en : open submenu (move down the mod menu level)
// ja : サブメニューを開く（モッドメニューの階層を下げる）
//++++++++++++++++++++++++++++++
modmenuopensubmenu( )
{
    value_root = 0;
    ly_playersmod   = level.moddef.ly_playersmod;
    ly_playersref   = level.moddef.ly_playersref;

    // en: remember the currently open menu hierarchy and item index
    // ja: 今開いているメニュー階層と項目インデックスを記憶する
    self.modsystem.menulayerprevious[self.modsystem.menulayerdepth]     = self.modsystem.menulayercurrent;
    self.modsystem.menuoptionprevious[self.modsystem.menulayerdepth]    = self.modsystem.menuoptioncurrent;
    self.modsystem.menulrposprevious[self.modsystem.menulayerdepth]     = self.modsystem.menulrpos;

    // en: if the current menu hierarchy is the player refer menu
    // ja: 現在のメニュー階層がプレイヤー参照メニューの場合
    if ( self.modsystem.menulayercurrent == ly_playersref )
        // en: set to layer index in player menu
        // ja: プレイヤーメニューのレイヤーインデックスに設定する
        self.modsystem.menulayercurrent = ly_playersmod;
    // en: for other menu levels
    // ja: それ以外のメニュー階層の場合
    else
        self.modsystem.menulayercurrent = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent ].jumppage;

    // en: move the selected item index to the top
    // ja: 選択中の項目インデックスを一番上にする
    self.modsystem.menuoptioncurrent = value_root;

    // en: set the horizontal scroll position of the mod menu to the top
    // ja: モッドメニューの横スクロール位置を先頭にする
    self.modsystem.menulrpos = value_root;

    // en: reduce the depth of the mod menu
    // ja: モッドメニューの階層の深さを下げる
    self.modsystem.menulayerdepth++;
    
    // en: update the text displayed in the mod menu
    // ja: モッドメニューの表示するテキストを更新する
    self modmenutextupdate( );
}



//++++++++++++++++++++++++++++++
// en : restore menu hierarchy (close mod menu if root is open)
// ja : メニュー階層を戻す（ルートを開いている場合は、モッドメニューを閉じる）
//++++++++++++++++++++++++++++++
modmenubacklayer( movetime )
{
    ly_root = 0;

    // en: if the depth of the menu hierarchy is below the root
    // ja: メニュー階層の深さがルートより下にある場合
    if ( ly_root < self.modsystem.menulayerdepth )
    {
        // en: increase the depth of the menu hierarchy
        // ja: メニュー階層の深さを上げる
        self.modsystem.menulayerdepth--;

        // en: set the menu hierarchy and item index that were opened immediately before
        // ja: 直前に開いていたメニュー階層と項目インデックスにする
        self.modsystem.menulayercurrent     = self.modsystem.menulayerprevious[self.modsystem.menulayerdepth];
        self.modsystem.menuoptioncurrent    = self.modsystem.menuoptionprevious[self.modsystem.menulayerdepth];
        self.modsystem.menulrpos            = self.modsystem.menulrposprevious[self.modsystem.menulayerdepth];
        
        // en: play se only for yourself
        // ja: seを自分だけ再生する
        self playlocalsound( "recon_drone_spotted_plr" );
        
        // en: update the text displayed in the mod menu
        // ja: モッドメニューの表示するテキストを更新する
        self modmenutextupdate( );
        
        // en: wait 0.3 seconds
        // ja: 0.3秒待機する
        wait movetime;
    }
    else
        // en: close (hide) the mod menu
        // ja: モッドメニューを閉じる（非表示にする）
        self modmenuclose( movetime );
}



//++++++++++++++++++++++++++++++
// en : close (hide) the mod menu
// ja : モッドメニューを閉じる（非表示にする）
//++++++++++++++++++++++++++++++
modmenuclose( movetime )
{
    // en: suppose the mod menu is closed
    // ja: モッドメニューが閉じられたとする
    self.modsystem.menuactive = false;
    
    // en: play se only for yourself
    // ja: seを自分だけ再生する
    self playlocalsound( "recondrone_tag" );

    // en: issue a "closemodmenu" event to yourself (this will stop the menu text display update process)
    // ja: 自分に対して「closemodmenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self notify( "closemodmenu" );
    
    // en: waits for only 1 frame as it waits for the update process to finish.
    // ja: 更新処理の終了待ちの為 1フレーム のみ待機する
    wait 0.001;
    
    // en: add line breaks to all lines in the log at the bottom left to make the display cleaner.
    // ja: 左下のログを全行分改行して、表示をきれいにする
    self clearloglines( );
    
    l_animtime      = movetime;
    l_nosize        = 0;
    l_verticalmenu  = "changemenustyle";
    l_iprintlnmenu  = "iprintlnmenu";

    // en : changes the height and width of the specified hud (on-screen ui) in the specified number of seconds.
    // ja : 指定したhud（画面上のui）の縦横幅を、指定した秒数でサイズ変更する

    self hideelemleftmenu( l_animtime );
    self scaleelemjapanflag( l_animtime , l_nosize );
        
    // en: wait 0.3 seconds
    // ja: 0.3秒待機する
    wait l_animtime + 0.01;


    // en: delete the created mod menu design ui
    // ja: 作成したモッドメニューのデザインuiを削除する

    self destroyelemleftmenu( );
    self destroyelemjapanflag( );
    
    wait 0.001;
    
    // en: if you are opening the mod menu for the first time, the initialization process will end.
    // ja: モッドメニューを初めて開いていた場合、初期化処理は終了する
    if ( self.modsystem.menufirstopen )
        self.modsystem.menufirstopen = false;
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mod Menu text update function
// ja : Mod Menu 文字更新処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : update mod menu text
// ja : モッドメニューのテキストを更新する
//++++++++++++++++++++++++++++++
modmenutextupdate( )
{
    l_iprintlnmenu  = "iprintlnmenu";
    ly_root         = 0;
    ly_playersref   = level.moddef.ly_playersref;
    l_maxtextsize   = ( !isdefined( self.optstat[l_iprintlnmenu] ) ? level.moddef.customtextlength : level.moddef.maxhrtextsize );
    l_scrollpos     = self.modsystem.menuoptioncurrent - self.modsystem.menulrpos;
    l_playersname   = [];
    l_optindex      = 0;

        
    // en: get the maximum index of the currently open mod menu hierarchy
    // ja: 現在開いているモッドメニューの階層の最大インデックスを取得
    l_maxindex = getlayermaxindex( self.modsystem.menulayercurrent , self.verificationstatusindex );

    // en: if the current menu hierarchy is the root, if there is player information referenced in the player menu, it will be discarded.
    // ja: 現在のメニュー階層がルートの場合、プレイヤーメニューで参照していたプレイヤー情報があれば、破棄する
    if ( ( self.modsystem.menulayercurrent == ly_root ) && isdefined( self.modsystem.menuplayer ) )
        self.modsystem.menuplayer = undefined;

    // en: if the currently open menu level is not the player refer menu
    // ja: 今開いているメニュー階層がプレイヤー参照メニューではない場合
    if ( self.modsystem.menulayercurrent != ly_playersref )
        // en: update the currently selected mod menu item function
        // ja: 現在選択中のモッドメニューの項目関数を更新
        self.modsystem.menufunction = getoptionfunction( self.modsystem.menulayercurrent , self.modsystem.menuoptioncurrent );
    // en: if the currently open menu hierarchy is the player reference menu
    // ja: 今開いているメニュー階層がプレイヤー参照メニューの場合
    else
        // en: update the currently selected mod menu item function
        // ja: 現在選択中のモッドメニューの項目関数を更新
        self.modsystem.menufunction = ::modmenuopensubmenu;

        
    // en: if the currently open menu hierarchy is the player reference menu
    // ja: 今開いているメニュー階層がプレイヤー参照メニューの場合
    if ( self.modsystem.menulayercurrent == ly_playersref )
    {
        // en: get information on all participating players
        // ja: 参加中の全プレイヤー情報を取得
        for ( i = 0; i < level.players.size; i++ )
        {
            // en: get the privilege status of that player
            // ja: そのプレイヤーの権限状態を取得
            l_playersname[i] = getmttext( self.curlang , getverifiedtext( level.players[i].verificationstatusindex ) );
        
            // en: if the currently selected menu item index and player index match
            // ja: 現在選択中のメニュー項目インデックスと、プレイヤーインデックスが一致している場合
            if ( self.modsystem.menuoptioncurrent == i )
            {
                // en: change selected player name to highlight color
                // ja: 選択中のプレイヤー名をハイライト色に変える
                l_playersname[i] += "^5";
                
                // en: set currently selected player
                // ja: 現在選択中のプレイヤーを設定
                self.modsystem.menuplayer = i;
            }

            // en: get player name (up to this point, the sentence "[authority] player name" is constructed)
            // ja: プレイヤー名を取得（ここまでで「[権限] プレイヤー名」という文章が構築される）
            l_playersname[i] += level.players[i].name;
        }
    }

    // en: loop for the number of text elements of the second and subsequent modmenu items
    // ja: ２番目以降のmodmenu項目のテキストの要素数分ループ
    for ( textnum = 0; textnum < l_maxtextsize; textnum++ )
    {
        l_optindex = l_scrollpos + textnum;

        // en: if "top selected modmenu item + loop element number" does not exceed the maximum index
        // ja: 「一番上の選択中のmodmenu項目 + ループ要素の数値」が、最大インデックスを超えていなければ
        if ( l_optindex <= l_maxindex )
        {
            // en: if the currently open menu hierarchy is the player reference menu
            // ja: 今開いているメニュー階層がプレイヤー参照メニューの場合
            if ( self.modsystem.menulayercurrent == ly_playersref )
            {
                // en: get the player name for that item
                // ja: その項目のプレイヤー名を取得する
                self.modsystem.menutext[textnum] = l_playersname[l_optindex];
            }
            // en: if the currently open menu level is not the player refer menu
            // ja: 今開いているメニュー階層がプレイヤー参照メニューではない場合
            else
            {
                // en: get the text of that item
                // ja: その項目の文章を取得する
                self.modsystem.menutext[textnum] = getmodmenutext( self.curlang , self.modsystem.menulayercurrent , l_optindex );
            }

            // en: if the currently open menu level is not the player reference menu
            // ja: 今開いているメニュー階層がプレイヤー参照メニューではない場合
            if ( self.modsystem.menulayercurrent != ly_playersref )
            {
                // en: get the running status of that item
                // ja: その項目の実行状態を取得する
                self.modsystem.menutext[textnum] += self getoptionstatus( self.curlang , self.modsystem.menulayercurrent , l_optindex , undefined );
            }
        }
        // en: if the maximum index is exceeded, display empty text
        // ja: 最大インデックスを超えていれば、空文を表示する
        else
        {
            self.modsystem.menutext[textnum] = "";
        }
    }
    
    // en: issue a "refreshmodmenu" event to yourself (this will stop the menu text display update process)
    // ja: 自分に対して「refreshmodmenu」イベントを発行する（これでメニューテキストの表示更新処理が止まる）
    self notify( "refreshmodmenu" );

    // en: waits for only 1 frame as it waits for the update process to finish.
    // ja: 更新処理の終了待ちの為 1フレーム のみ待機する
    wait 0.01;
    
    // en: execute the update process of the character display of the mod menu in a subthread
    // ja: モッドメニューの文字表示の更新処理をサブスレッドで実行する
    self thread modmenutextdisplay( );
}



//++++++++++++++++++++++++++++++
// en : processing to display mod menu text
// ja : モッドメニューのテキストを表示する処理
//++++++++++++++++++++++++++++++
modmenutextdisplay( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function terminates when "mod menu is closed"
    // ja : この関数は "モッドメニューが閉じられた" 場合に処理を終了する
    self endon( "closemodmenu" );
    // en: the processing of this function ends when the "refreshmodmenu" event is issued for yourself.
    // ja: 自分に対して「refreshmodmenu」イベントが発行されたら、この関数の処理が終了する
    self endon( "refreshmodmenu" );
    // en : This function terminates processing if the "mod menu style has been changed."
    // ja : この関数は「モッドメニュースタイルが変更された」場合に処理を終了する
    self endon( "changedmenustyle" );
    
    l_title             = "";
    l_description       = "";
    l_maintext          = "";
    l_parenttext        = "";
    l_projectname       = "";
    l_index             = "";
    l_curlayerinfo      = "";
    //l_description       = "";
    ly_root             = 0;
    ly_playersmod       = level.moddef.ly_playersmod;
    l_scrollpos         = 0;
    l_maxindex          = 0;
    l_maxtextsize       = level.moddef.maxhrtextsize;
    l_maxtextsizelside  = level.moddef.maxvttextsize;
    l_lefticon          = "";
    l_righticon         = "";
    l_adsicon           = "";
    l_useicon           = "";
    l_devide            = "^4||^7";
    l_curdepth          = 0;
    l_befdepth          = 0;
    l_menulrpos         = 0;
    l_changemenustyle   = "changemenustyle";
    l_iprintlnmenu      = "iprintlnmenu";
    l_selecting         = "";
    l_txsize            = level.moddef.customtextlength;
    l_txsizelast        = l_txsize - 1;
    l_texttime          = 0.1;
    l_textsizeunselect  = 0.7;
    l_textsizeselect    = 1.0;
    l_white             = dividecolor( 255  , 255   , 255   );
    l_yellow            = dividecolor( 201  , 149   , 36    );
    l_trans             = "";


    // en: infinite loop only while mod menu is open
    // ja: モッドメニューが開かれている間だけ無限ループ
    while ( self.modsystem.menuactive )
    {
        // en: Gets the current mod menu's open level.
        // ja: 現在のモッドメニューの開いている階層の深さを取得
        l_curdepth = self.modsystem.menulayerdepth;
        l_befdepth = l_curdepth - 1;
        l_menulrpos = self.modsystem.menulrpos;

        // en: get project name
        // ja: プロジェクト名を取得
        l_projectname = getmttext( self.curlang , "projectname" );
        // en: get operating instructions
        // ja: 操作説明文を取得
        l_description = getmttext( self.curlang , "modmenucontroldescription" , self usinggamepad( ) );


        // en: get the maximum index of the currently open mod menu hierarchy
        // ja: 現在開いているモッドメニューの階層の最大インデックスを取得
        l_maxindex = getlayermaxindex( self.modsystem.menulayercurrent , self.verificationstatusindex );
        // en: get the currently selected index in character format
        // ja: 現在選択中のインデックスを文字形式で取得
        l_index = "^3 :[" + ( self.modsystem.menuoptioncurrent + 1 ) + "/" + ( l_maxindex + 1 ) + "]";// (" + l_menulrpos + "/" + self.modsystem.menuoptioncurrent + ")";
        //l_index = "^3 : [" + ( self.modsystem.menuoptioncurrent + 1 ) + "/" + ( l_maxindex + 1 ) + "](" + l_menulrpos + "/" + self.modsystem.menuoptioncurrent + ")";

        l_title = l_projectname + "^3 /";

        // en: if the current menu hierarchy is other than the root
        // ja: 現在のメニュー階層がルート以外の場合
         if ( ly_root < self.modsystem.menulayercurrent )
        {
            // en: if the current menu hierarchy is not the player menu, display “project name/current submenu name”
            // ja: 現在のメニュー階層がプレイヤーメニューではない場合、「プロジェクト名 / 現在のサブメニュー名」を表示する
            if ( self.modsystem.menulayercurrent != ly_playersmod )
                l_curlayerinfo = getmodmenutext( self.curlang , self.modsystem.menulayerprevious[l_befdepth] , self.modsystem.menuoptionprevious[l_befdepth] ) + l_index;
            // en: if the current menu hierarchy is the player menu, display "project name/[authority level] selected player name"
            // ja: 現在のメニュー階層がプレイヤーメニューの場合、「プロジェクト名 / [権限レベル] 選択中のプレイヤー名」を表示する
            else
                l_curlayerinfo = getmttext( self.curlang , getverifiedtext( level.players[self.modsystem.menuplayer].verificationstatusindex ) ) + level.players[self.modsystem.menuplayer].name + l_index;

            l_title += l_curlayerinfo;
        }
        else
        {
            l_curlayerinfo = l_index;
            l_title += l_index;
        }

        l_startindex    = ( isdefined( self.optstat[l_iprintlnmenu] ) ? 0           : ( ( l_menulrpos < l_maxtextsize ) ? 0            : l_menulrpos - l_maxtextsizelside ) );
        l_menulrpos     = ( isdefined( self.optstat[l_iprintlnmenu] ) ? l_menulrpos : ( ( l_menulrpos < l_maxtextsize ) ? l_menulrpos  : l_maxtextsizelside ) );

        // en: gets the text containing the update status of all displayed items
        // ja: 表示する全項目の更新状態を含むテキストを取得
        l_line = [];
        for ( i = 0; i < l_maxtextsize; i++ )
            l_line[i] = self.modsystem.menutext[i + l_startindex];
        
        
        // en: Add highlighting before or after the text of the currently selected item
        // ja: 現在選択中の項目のテキスト前後に、ハイライトなどを付随させる
        l_line[l_menulrpos] = " ^5>> " + l_line[l_menulrpos];
        

        // en: add a separator line after the text of all displayed items
        // ja: 表示する全項目のテキストの後ろに区切り線を付随させる
        for ( i = 0; i < l_maxtextsize; i++ )
            l_line[i] = ( ( l_line[i] == "" ) ? "" : ( l_line[i] + ( !isdefined( self.optstat[l_changemenustyle] ) ? l_devide : "" ) ) );


        // en: Add a separator line to the beginning
        // ja: 先頭に区切り線を付随させる
        l_maintext = l_devide;

        // en: add the remaining item text to be displayed.
        // ja: 後続に残りの表示する項目テキストを追加する
        for ( i = 0; i < l_maxtextsize; i++ )
            l_maintext += l_line[i];
        
        l_selecting = "";

        // en: In the case of a Mod Menu using iprintln or a Mod Menu using Custom Hud Text, and when you are not the host.
        // ja: iprintlnを使用したMod Menuの場合、もしくはCustom Hud Textを使用したMod Menuで、且つ自身がホストではない場合
        if ( isdefined( self.optstat[l_iprintlnmenu] ) || ( !isdefined( self.optstat[l_iprintlnmenu] && !( self ishost( ) ) ) ) )
        {
            // EN: Display notification messages (if any)
            // JA: 通知メッセージを表示（ある場合）
            for ( i = 0; i < l_maxtextsizelside; i++ )
            {
                self iprintln( l_line[( ( ( ( l_menulrpos < l_maxtextsizelside ) ? l_maxtextsizelside : l_maxtextsize ) - 1 ) - i )] );
            }
            // en: Show the text of the currently selected item
            // ja: 現在選択中の項目のテキストを表示する
            self iprintln( l_selecting );
            // EN: Display operating instructions
            // JA: 操作説明文を表示
            self iprintln( l_description );
            // en: display the text of the currently selected item (highlighted)
            // ja: 現在選択中の項目の文章を表示（ハイライト強調）
            self iprintln( l_title );
        }

        // en: wait 4 seconds
        // ja: 4 秒待機する
        wait 2.65;
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mod Menu animation function
// ja : Mod Menu アニメーション処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : color animation of mod menu background color
// ja : モッドメニューの背景色のカラーアニメーション
//++++++++++++++++++++++++++++++
modmenubackgroundcoloranimation( )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    // en : this function ends processing if "you die"
    // ja : この関数は「モッドメニューが閉じられた」場合に処理を終了する
    self endon( "closemodmenu" );
    // en : This function terminates processing if the "mod menu style has been changed."
    // ja : この関数は「モッドメニュースタイルが変更された」場合に処理を終了する
    self endon( "changedmenustyle" );
    
    l_changemenustyle   = "changemenustyle";
    l_iprintlnmenu      = "iprintlnmenu";
    l_blue1             = dividecolor( 37   , 72    , 106   );
    l_blue2             = dividecolor( 40   , 116   , 209   );
    l_crimson1          = dividecolor( 37   , 29    , 30    );
    l_crimson2          = dividecolor( 120  , 40    , 31    );
    l_yellow1           = dividecolor( 201  , 149   , 36    );
    l_yellow2           = dividecolor( 133  , 87    , 19    );
    l_animtime          = self.modsystem.menucoloranimtime;
    l_interval          = self.modsystem.menucoloraniminterval;
    l_leftoutline       = l_yellow2;
    l_leftinline        = l_blue2;

    // en: infinite loop only while mod menu is open
    // ja: モッドメニューが開かれている間だけ無限ループ
    while ( self.modsystem.menuactive )
    {
        // en: if mod menu background animation is enabled
        // ja: モッドメニューの背景アニメーションが有効の場合
        if ( isdefined( self.optstat["switchbackgroundanimation"] ) )
        {
            // en : changes the color of the specified hud (on-screen ui) for the specified number of seconds.
            // ja : 指定したhud（画面上のui）の色を、指定した秒数で変色させる

            l_leftoutline   = l_blue2;
            l_leftinline    = l_crimson2;
            self.modsystem.menuui["left_outline_1"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_2"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_3"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_4"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_inline_1"]          elementcolorchange( l_animtime , l_leftinline );

            wait l_animtime;
            wait l_interval;
        
            l_leftoutline   = l_blue1;
            l_leftinline    = l_crimson1;
            self.modsystem.menuui["left_outline_1"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_2"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_3"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_outline_4"]         elementcolorchange( l_animtime , l_leftoutline );
            self.modsystem.menuui["left_inline_1"]          elementcolorchange( l_animtime , l_leftinline );

            wait l_animtime;
            wait l_interval;
        }
        wait 0.001;
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mods parameter handling
// ja : Mods パラメーター処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : display text and execute functions according to the on/off state of specified variables.
// ja : 指定の変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
switchonfselffunction( optname , optfunc , message , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6  , optarg7 , weaponid , inprojectile , onlygroup , attachmentid , camoid , camogroup , dualmode , lvlcheck )
{
    // en : since the process of deleting the previously created case is in progress, the process is interrupted as it cannot be recreated.
    // ja : 前回作った筐体の削除処理が実行中の為、再作成できないとして処理を中断する
    if ( isdefined( self.optstat[optname + "deleting"] ) || ( isdefined( lvlcheck ) && isdefined( level.lvlstat[lvlcheck] ) ) )
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "waitendfunction" , undefined , undefined , undefined );
        return;
    }
    // en: if the specified variable does not yet exist
    // ja: 指定の変数がまだ存在しない場合
    if ( !isdefined( self.optstat[optname] ) )
        // en : execute the process when the specified parameter is enabled
        // ja : 指定のパラメーターを有効にした時の処理を実行する
        self enabledselfparameter( self.curlang , optname , undefined , message , true , optfunc , true , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 , weaponid , inprojectile , onlygroup , attachmentid , camoid , camogroup , dualmode );
    // en: if the specified variable has already been created
    // ja: 指定の変数が既に作られている場合
    else
        // en : execute the process when the specified parameter is disabled
        // ja : 指定のパラメーターを無効にした時の処理を実行する
        self disabledselfparameter( self.curlang , optname , undefined , true , weaponid );
}



//++++++++++++++++++++++++++++++
// en : displays text and executes sub-functions associated with the main function according to the on/off state of specified variables.
// ja : 指定の変数のオンオフ状態に合わせて、文章の表示を行い、メイン機能に付随するサブ機能の実行を行う
//++++++++++++++++++++++++++++++
switchonfselfsubfunction( optname1 , optname2 , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 )
{
    // en: if the specified main function variable does not yet exist
    // ja: 指定のメイン機能の変数がまだ存在しない場合
    if ( !isdefined( self.optstat[optname1] ) )
    {
        // en: the text "[notification] function not executed: function name" is displayed in the center of the screen.
        // ja: 画面中央に "[通知] 機能が未実行 : 機能名称" という文章を表示する
        self showcentermessage( self.curlang , "notice" , "notfuncexec" , optname1 , undefined , undefined );
        return;
    }

    // en: if the variable for the specified subfunction does not yet exist
    // ja: 指定のサブ機能の変数がまだ存在しない場合
    if ( !isdefined( self.optstat[optname1].moddata[optname2] ) )
    {
        // en : execute the process when the specified parameter is enabled
        // ja : 指定のパラメーターを有効にした時の処理を実行する
        self enabledselfparameter( self.curlang , optname1 , optname2 , undefined , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 );
    }
    // en: if the specified subfunction variable has already been created
    // ja: 指定のサブ機能の変数が既に作られている場合
    else
    {
        // en : execute the process when the specified parameter is disabled
        // ja : 指定のパラメーターを無効にした時の処理を実行する
        self disabledselfparameter( self.curlang , optname1 , optname2 , notice , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : display text and execute functions for the specified player according to the on/off state of the specified variable.
// ja : 指定したプレイヤーに対して、指定の変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
switchonfplayerfunction( optname , optfunc )
{
    // en: if the player to be operated is the host, issue a warning that the operation cannot be performed and end the process.
    // ja: 操作する対象のプレイヤーがホストの場合は、操作できない警告をして処理を終了する
    if ( level.players[self.modsystem.menuplayer] ishost( ) )
    {
        self showcentermessage( self.curlang , "notice" , "cannothost" , undefined , undefined , undefined );
        return;
    }

    // en: if the specified variable does not yet exist
    // ja: 指定の変数がまだ存在しない場合
    if ( !isdefined( level.players[self.modsystem.menuplayer].optstat[optname] ) )
    {
        // en: display the text "[enabled] function name: player name" in the center of the screen for yourself.
        // ja: 自分に対して "[有効化] 機能名称 : プレイヤー名" という文章を、画面中央に表示する
        self showcentermessage( self.curlang , "enabled" , optname , undefined , level.players[self.modsystem.menuplayer].name , undefined );
    }
    else
    {
        // en: display the text "[disable] function name: player name" in the center of the screen for yourself.
        // ja: 自分に対して "[無効化] 機能名称 : プレイヤー名" という文章を、画面中央に表示する
        self showcentermessage( self.curlang , "disabled" , optname , undefined , level.players[self.modsystem.menuplayer].name , undefined );
    }
    
    // en: execute the specified function in a subthread
    // ja: 指定した関数をサブスレッドで実行する
    level.players[self.modsystem.menuplayer] thread [[ optfunc ]]( );
}



//++++++++++++++++++++++++++++++
// en : display text and execute functions for all players according to the on/off state of the specified variable.
// ja : 全プレイヤーに対して、指定の変数のオンオフ状態に合わせて、文章の表示と機能の実行を行う
//++++++++++++++++++++++++++++++
switchonfallplayersfunction( optname , optfunc , oneway , withhost )
{
    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    for ( targetuser = 0; targetuser < level.players.size; targetuser++ )
    {
        // en: if the target player is the host, proceed to the next player without processing.
        // ja: 操作する対象のプレイヤーがホストの場合は、処理せずに次のプレイヤーに進む
        if ( !isdefined( withhost ) && ( level.players[targetuser] ishost( ) ) )
        {
            level.players[targetuser] showcentermessage( self.curlang , "notice" , "cannothost" , undefined , undefined , undefined );
            continue;
        }

        // en: if the specified variable does not yet exist
        // ja: 指定の変数がまだ存在しない場合
        if ( ( !isdefined( level.lvlstat[optname] ) && !isdefined( level.players[targetuser].optstat[optname] ) ) ||
        // en: if the specified variable still exists
        // ja: 指定の変数がまだ存在している場合
            ( isdefined( level.lvlstat[optname] ) && isdefined( level.players[targetuser].optstat[optname] ) ) )
            // en: execute the specified function in a subthread
            // ja: 指定した関数をサブスレッドで実行する
            level.players[targetuser] thread [[ optfunc ]]( );
    }

    if ( !isdefined( oneway ) )
    {
        // en: applies to the entire room, if the specified variable does not already exist
        // ja: 部屋全体に適用される、指定の変数がまだ存在しない場合
        if ( !isdefined( level.lvlstat[optname] ) )
            // en: enables the specified variable that applies to the entire room
            // ja: 部屋全体に適用される、指定の変数を有効にする
            level.lvlstat[optname] = true;
        // en: if the specified variable has already been created, which applies to the entire room
        // ja: 部屋全体に適用される、指定の変数が既に作られている場合
        else
            // en: discard the specified variable that applies to the entire room
            // ja: 部屋全体に適用される、指定の変数を破棄する
            level.lvlstat[optname] = undefined;
    }
}



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



// //++++++++++++++++++++++++++++++
// // en : displays text and executes sub-functions associated with the main function according to the on/off state of specified level variables.
// // ja : 指定の level 変数のオンオフ状態に合わせて、文章の表示を行い、メイン機能に付随するサブ機能の実行を行う
// //++++++++++++++++++++++++++++++
// switchonflevelsubfunction( optname1 , optname2 , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 )
// {
//     // en: if the specified main function variable does not yet exist
//     // ja: 指定のメイン機能の変数がまだ存在しない場合
//     if ( !isdefined( level.lvlstat[optname1] ) )
//     {
//         // en: the text "[notification] function not executed: function name" is displayed in the center of the screen.
//         // ja: 画面中央に "[通知] 機能が未実行 : 機能名称" という文章を表示する
//         self showcentermessage( self.curlang , "notice" , "notfuncexec" , optname1 , undefined , undefined );
//         return;
//     }
// 
//     // en: if the variable for the specified subfunction does not yet exist
//     // ja: 指定のサブ機能の変数がまだ存在しない場合
//     if ( !isdefined( level.lvlstat[optname1].moddata[optname2] ) )
//     {
//         // en : execute the process when the specified parameter is enabled
//         // ja : 指定のパラメーターを有効にした時の処理を実行する
//         self enabledlevelparameter( self.curlang , optname1 , optname2 , undefined , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 );
//     }
//     // en: if the specified subfunction variable has already been created
//     // ja: 指定のサブ機能の変数が既に作られている場合
//     else
//     {
//         // en : execute the process when the specified parameter is disabled
//         // ja : 指定のパラメーターを無効にした時の処理を実行する
//         self disabledlevelparameter( self.curlang , optname1 , optname2 , notice );
//     }
// }




//++++++++++++++++++++++++++++++
// en : processing when the specified self parameter is enabled
// ja : 指定の self パラメーターを有効にした時の処理
//++++++++++++++++++++++++++++++
enabledselfparameter( selflang , optname1 , optname2 , message , optdata , optfunc , notice , optarg1 , optarg2 , optarg3 , optarg4 , optarg5 , optarg6 , optarg7 , weaponid , inprojectile , onlygroup , attachmentid , camoid , camogroup , dualmode )
{
    l_optname = "";

    // en: if suboptions are specified
    // ja: サブオプションが指定されている場合は
    if ( isdefined( optname2 ) )
    {
        l_optname = optname2;
        
        // en: set the specified data in the variable of the specified subfunction
        // ja: 指定のサブ機能の変数に、指定のデータを設定する
        self.optstat[optname1].moddata[optname2] = optdata;
    }
    // en: if no suboptions are specified
    // ja: サブオプションが指定されていない場合は
    else if ( isdefined( optname1 ) )
    {
        l_optname = optname1;

        // en: enable specified variable
        // ja: 指定の変数を有効にする
        self.optstat[optname1] = true;
        
        // en: add structure to "optstat" variable
        // ja: 「optstat」変数に構造体を追加する
        self.optstat[optname1] = spawnstruct( );
        
        // en: create an array to set parameters dedicated to each function
        // ja: 各機能専用のパラメーターを設定するための配列を作成
        self.optstat[optname1].moddata = [];
        
        // en: if weapon id is specified
        // ja: 武器idが指定されている場合
        if ( isdefined( weaponid ) )
        {
            // en: get weapon data into specified variable
            // ja: 指定の変数に武器データを取得する
            self.optstat[optname1].weapondata = self provideweapon(
                /* weaponid */      weaponid ,
                /* inprojectile */  inprojectile ,
                /* onlygroup */     onlygroup ,
                /* attachmentid */  attachmentid ,
                /* camoid */        camoid ,
                /* camogroup */     camogroup ,
                /* akimbo */        dualmode ,
                /* changehand */    true ,
                /* notice */        undefined ,
                /* onlygetid */     undefined
                );
        }
    }

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
    {
        // en: display the text "[enabled] function name" in the center of the screen
        // ja: 画面中央に「[有効化] 機能名称」という文章を表示する
        self showcentermessage( selflang , "enabled" , l_optname , message , undefined , undefined );
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
// en : processing when the specified self parameter is disabled
// ja : 指定の self パラメーターを無効にした時の処理
//++++++++++++++++++++++++++++++
disabledselfparameter( selflang , optname1 , optname2 , notice , weaponid )
{
    l_optname = "";

    // en: if suboptions are specified
    // ja: サブオプションが指定されている場合は
    if ( isdefined( optname2 ) )
    {
        l_optname = optname2;

        // en: disable (discard) the specified subfunction variable
        // ja: 指定のサブ機能の変数を無効（破棄）する
        self.optstat[optname1].moddata[optname2] = undefined;
    }
    // en: if no suboptions are specified
    // ja: サブオプションが指定されていない場合は
    else
    {
        l_optname = optname1;

        // en: if weapon id is specified
        // ja: 武器idが指定されている場合
        if ( isdefined( weaponid ) )
        {
            // en: pick up the target's weapon
            // ja: 持っている対象の武器を取り上げる
            self configureweapon( self.optstat[optname1].weapondata , true , true , undefined , undefined , undefined );
            wait 0.01;
        }

        // en: disable (discard) the specified variable
        // ja: 指定の変数を無効（破棄）する
        self.optstat[optname1] = undefined;
    }

    // en: set the specified option name as the function termination trigger
    // ja: 指定のオプション名の終了トリガーを通知する
    self notify( "end_" + l_optname );

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
    {
        // en: display the text "[disabled] function name" in the center of the screen
        // ja: 画面中央に「[無効化] 機能名称」という文章を表示する
        self showcentermessage( selflang , "disabled" , l_optname , undefined , undefined , undefined );
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



//++++++++++++++++++++++++++++++
// en : select self variables related to the specified function in order from the specified array
// ja : 指定の機能に関する self 変数を、指定の配列内から順に選択する
//++++++++++++++++++++++++++++++
changeselfparameter( optname1 , optname2 , prefix , optfunc , arraydata , notice , lastend , random )
{
    // en: run the specified function if it has not already been run
    // ja: 指定された機能がまだ実行されていない場合
    if ( !isdefined( self.optstat[optname1] ) )
    {
        // en: if option name 2 is specified
        // ja: オプション名2が指定されている場合
        if ( isdefined( optname2 ) )
        {
            // en: run once and create variables for specified functions
            // ja: 一度実行して、指定機能に関する変数を作成する
            self thread [[ optfunc ]]( );
        }
        // en: if option name 2 is not specified
        // ja: オプション名2が指定されていない場合
        else
        {
            // en: set the first item.
            // ja: 最初の項目を設定する
            self.optstat[optname1] = arraydata[0];
            // en: display the text "[notification] function name: element name" in the center of the screen.
            // ja: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
            self showcentermessage( self.curlang , "notice" , optname1 , undefined , self.optstat[optname1] , prefix );
            
        }
    }
    // en: if the specified function has already been executed
    // ja: 指定された機能が実行済みの場合
    else
    {
        // en: when not randomly selected
        // ja: ランダム選定しない場合
        if ( !isdefined( random ) )
        {
            // en: if option name 2 is specified
            // ja: オプション名2が指定されている場合
            if ( isdefined( optname2 ) )
            {
                // en: if there are no subparameters yet
                // ja: まだサブパラメーターが存在しない場合
                if ( !isdefined( self.optstat[optname1].moddata[optname2] ) )
                {
                    // en: set the first item.
                    // ja: 最初の項目を設定する
                    self.optstat[optname1].moddata[optname2] = arraydata[0];
                }
                // en: if there are subparameters yet
                // ja: サブパラメーターが存在する場合
                else
                {
                    // en: array length loop
                    // ja: 配列長分ループ
                    for ( index = 0; index < arraydata.size; index++ )
                    {
                        // en: skip until it matches the item currently being set
                        // ja: 現在設定中の項目と一致するまではスキップ
                        if ( !isdefined( arraydata[index].assetname ) ) { if ( self.optstat[optname1].moddata[optname2] != arraydata[index] )                       { continue; } }
                        else                                            { if ( self.optstat[optname1].moddata[optname2].assetname != arraydata[index].assetname )   { continue; } }

                        // en: if the next item that is currently being set does not exceed the length of the array, set the next item.
                        // ja: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
                        if ( (index + 1) < arraydata.size ) { self.optstat[optname1].moddata[optname2] = arraydata[index + 1]; }
                        
                        // en: if the next item that is currently being set exceeds the length of the array
                        // ja: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は
                        else
                        {
                            // en: if the function does not end at the last item,
                            // ja: 最後の項目で機能を終了しない場合は
                            if ( !isdefined( lastend ) )
                            {
                                // en: set the first item.
                                // ja: 最初の項目を設定する
                                self.optstat[optname1].moddata[optname2] = arraydata[0];
                            }
                            // en: to end the function at the last item
                            // ja: 最後の項目で機能を終了する場合は
                            else
                            {
                                // en: disable specified features
                                // ja: 指定の機能を無効にする
                                self thread [[ optfunc ]]( );
                                wait 0.01;
                            }
                        }
                        
                        // en: end loop
                        // ja: ループ終了
                        break;
                    }
                }
            }
            // en: if option name 2 is not specified
            // ja: オプション名2が指定されていない場合
            else
            {
                // en: array length loop
                // ja: 配列長分ループ
                for ( index = 0; index < arraydata.size; index++ )
                {
                    // en: skip until it matches the item currently being set
                    // ja: 現在設定中の項目と一致するまではスキップ
                    if ( self.optstat[optname1] != arraydata[index] ) { continue; }
                    

                    // en: if the next item that is currently being set does not exceed the length of the array, set the next item.
                    // ja: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
                    if ( (index + 1) < arraydata.size ) { self.optstat[optname1] = arraydata[index + 1]; }
                    
                    // en: if the next item that is currently being set exceeds the length of the array
                    // ja: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は
                    else
                    {
                        // en: if the function does not end at the last item,
                        // ja: 最後の項目で機能を終了しない場合は
                        if ( !isdefined( lastend ) )
                        {
                            // en: set the first item.
                            // ja: 最初の項目を設定する
                            self.optstat[optname1] = arraydata[0];
                        }
                        // en: to end the function at the last item
                        // ja: 最後の項目で機能を終了する場合は
                        else
                        {
                            // en: disable specified features
                            // ja: 指定の機能を無効にする
                            self.optstat[optname1] = undefined;
                        }
                    }
                    
                    // en: end loop
                    // ja: ループ終了
                    break;
                }
            }
        }
        // en: when selecting randomly, extract randomly from the array.
        // ja: ランダム選定する場合、配列内からランダムに取り出す
        else
        {
            // en: if option name 2 is specified
            // ja: オプション名2が指定されている場合
            if ( isdefined( optname2 ) )
            {
                self.optstat[optname1].moddata[optname2] = arraydata[randomintrange( 0 , arraydata.size )];
            }
            // en: if option name 2 is not specified
            // ja: オプション名2が指定されていない場合
            else
            {
                self.optstat[optname1] = arraydata[randomintrange( 0 , arraydata.size )];
            }
        }

        // en: if you need to display a message
        // ja: メッセージを表示する必要がある場合
        if ( isdefined( notice ) )
        {
            // en: if option name 2 is specified
            // ja: オプション名2が指定されている場合
            if ( isdefined( optname2 ) )
            {
                // en: if the function does not end at the last item,
                // ja: 最後の項目で機能を終了しない場合は
                if ( !isdefined( lastend ) )
                {
                    // en: display the text "[notification] function name: element name" in the center of the screen.
                    // ja: 画面中央に「[通知] 機能名 : 要素名」という文章を表示する
                    if ( !isdefined( self.optstat[optname1].moddata[optname2].assetname ) ) { self showcentermessage( self.curlang , "notice" , optname2 , undefined , self.optstat[optname1].moddata[optname2] , prefix ); }
                    else                                                                    { self showcentermessage( self.curlang , "notice" , optname2 , undefined , self.optstat[optname1].moddata[optname2].assetname , prefix ); }
                    
                }
                // en: to end the function at the last item
                // ja: 最後の項目で機能を終了する場合は
                else
                {
                    // en: if the parent variable of the specified function exists
                    // ja: 指定の機能の親変数が存在する場合
                    if ( isdefined( self.optstat[optname1] ) )
                    {
                        // en: display the text "[notification] function name: element name" in the center of the screen.
                        // ja: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                        if ( !isdefined( self.optstat[optname1].moddata[optname2].assetname ) ) { self showcentermessage( self.curlang , "notice" , optname1 , undefined , self.optstat[optname1].moddata[optname2] , prefix ); }
                        else                                                                    { self showcentermessage( self.curlang , "notice" , optname1 , undefined , self.optstat[optname1].moddata[optname2].assetname , prefix ); }
                    }
                }
            }
            // en: if option name 2 is not specified
            // ja: オプション名2が指定されていない場合
            else
            {
                // en: display the text "[notification] function name: element name" in the center of the screen.
                // ja: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
                self showcentermessage( self.curlang , "notice" , optname1 , undefined , self.optstat[optname1] , prefix );
            }
        }
    }
}



// //++++++++++++++++++++++++++++++
// // en : select level variables related to the specified function in order from the specified array
// // ja : 指定の機能に関する level 変数を、指定の配列内から順に選択する
// //++++++++++++++++++++++++++++++
// changelevelparameter( optname1 , optname2 , prefix , optfunc , arraydata , notice , lastend )
// {
//     // en: run the specified function if it has not already been run
//     // ja: 指定された機能がまだ実行されていない場合
//     if ( !isdefined( level.lvlstat[optname1] ) )
//     {
//         // en: run once and create variables for specified functions
//         // ja: 一度実行して、指定機能に関する変数を作成する
//         self thread [[ optfunc ]]( );
//     }
//     // en: if the specified function has already been executed
//     // ja: 指定された機能が実行済みの場合
//     else
//     {
//         // en: array length loop
//         // ja: 配列長分ループ
//         for ( index = 0; index < arraydata.size; index++ )
//         {
//             // en: skip until it matches the item currently being set
//             // ja: 現在設定中の項目と一致するまではスキップ
//             if ( level.lvlstat[optname1].moddata[optname2] != arraydata[index] ) { continue; }
// 
//             // en: if the next item that is currently being set does not exceed the length of the array, set the next item.
//             // ja: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
//             if ( (index + 1) < arraydata.size ) { level.lvlstat[optname1].moddata[optname2] = arraydata[index + 1]; }
//             
//             // en: if the next item that is currently being set exceeds the length of the array
//             // ja: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は
//             else
//             {
//                 // en: if the function does not end at the last item,
//                 // ja: 最後の項目で機能を終了しない場合は
//                 if ( !isdefined( lastend ) )
//                 {
//                     // en: set the first item.
//                     // ja: 最初の項目を設定する
//                     level.lvlstat[optname1].moddata[optname2] = arraydata[0];
//                 }
//                 // en: to end the function at the last item
//                 // ja: 最後の項目で機能を終了する場合は
//                 else
//                 {
//                     // en: disable specified features
//                     // ja: 指定の機能を無効にする
//                     self thread [[ optfunc ]]( );
//                     wait 0.01;
//                 }
//             }
//             
//             // en: end loop
//             // ja: ループ終了
//             break;
//         }
// 
//         // en: if you need to display a message
//         // ja: メッセージを表示する必要がある場合
//         if ( isdefined( notice ) )
//         {
//             // en: if the function does not end at the last item,
//             // ja: 最後の項目で機能を終了しない場合は
//             if ( !isdefined( lastend ) )
//             {
//                 // en: display the text "[notification] function name: element name" in the center of the screen.
//                 // ja: 画面中央に「[通知] 機能名 : 要素名」という文章を表示する
//                 self showcentermessage( self.curlang , "notice" , optname2 , undefined , level.lvlstat[optname1].moddata[optname2] , prefix );
//             }
//             // en: to end the function at the last item
//             // ja: 最後の項目で機能を終了する場合は
//             else
//             {
//                 // en: if the parent variable of the specified function exists
//                 // ja: 指定の機能の親変数が存在する場合
//                 if ( isdefined( level.lvlstat[optname1] ) )
//                 {
//                     // en: display the text "[notification] function name: element name" in the center of the screen.
//                     // ja: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
//                     self showcentermessage( self.curlang , "notice" , optname1 , undefined , level.lvlstat[optname1].moddata[optname2] , prefix );
//                 }
//             }
//         }
//     }
// }



// //++++++++++++++++++++++++++++++
// // en : select variables related to the specified function in order from the specified array
// // ja : 指定の機能に関する変数を、指定の配列内から順に選択する
// //++++++++++++++++++++++++++++++
// changedvarparameter( optname , prefix , arraydata , dvarname )
// {
//     l_result = 0;
// 
//     // en: array length loop
//     // ja: 配列長分ループ
//     for ( index = 0; index < arraydata.size; index++ )
//     {
//         // en: skip until it matches the item currently being set
//         // ja: 現在設定中の項目と一致するまではスキップ
//         if ( getdvarint( dvarname ) != arraydata[index] ) { continue; }
// 
//         // en: if the next item that is currently being set does not exceed the length of the array, set the next item.
//         // ja: 現在設定中の項目の一個次が、配列の長さを超えていない場合は、一個次の項目を設定する
//         if ( (index + 1) < arraydata.size )
//         {
//             setdvar( dvarname , arraydata[index + 1] );
//             l_result = index + 1;
//         }
//         
//         // en: if the next item that is currently being set exceeds the length of the array, set the first item.
//         // ja: 現在設定中の項目の一個次が、配列の長さを超えてしまう場合は、最初の項目を設定する
//         else
//         {
//             setdvar( dvarname , arraydata[0] );
//         }
// 
//         // en: end loop
//         // ja: ループ終了
//         break;
//     }
// 
//     // en: display the text "[notification] function name: element name" in the center of the screen.
//     // ja: 画面中央に "[通知] 機能名 : 要素名" という文章を表示する
//     self showcentermessage( self.curlang , "notice" , optname , undefined , arraydata[l_result] , prefix );
// }



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
execloopfunction( optname , optfunc , looptime )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    // en: set the specified effect name as the function termination trigger
    // ja: 指定の機能名を関数の終了トリガーとする
    self endon( "finalize_" + optname );


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



// //++++++++++++++++++++++++++++++
// // en : generic function to disable duplicate functions if they are activated
// // ja : 重複している機能が起動している場合、無効化させるための汎用関数
// //++++++++++++++++++++++++++++++
// checkduplicatefunction( name , func )
// {
//     // en: if the specified function is already enabled, disable it due to processing conflict.
//     // ja: 指定の機能が既に有効の場合は、処理が競合するため無効にする
//     if ( isdefined( self.optstat[name] ) )
//     {
//         // en: discard function execution flag
//         // ja: 機能実行フラグを破棄
//         self.optstat[name] = undefined;
//         // en: stop the running loop process and call the termination process
//         // ja: 実行中のループ処理を停止し、終了処理を呼ぶ
//         self notify( "finalize_" + name );
//         wait 0.01;
//         self [[ func ]]( name , 2 );
//     }
// }



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : weapons system
// ja : 武器システム
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



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

    l_maxsize = 11;
    l_maxtype = 9;

    // en : loop for the number of camouflage types
    // ja : 迷彩種類の個数分ループ
    for ( camosize = 0; camosize <= l_maxsize; camosize++ )
    {
        // en : loop for the number of camouflage type groups
        // ja : 迷彩種類のグループ数分ループ
        for ( camotype = 0; camotype <= l_maxtype; camotype++ )
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
    
    l_weaponbuild = buildweapon_blueprint( rootid , undefined , undefined , l_bpnum , undefined , undefined , scripts\cp_mp\utility\game_utility::isnightmap( ) );
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

        switch ( weaponid )
        {
            // en : if the weapon type is specified as "currentbp" , "t9bp" , "s4bp"
            // ja : 武器種類が "currentbp" , "t9bp" , "s4bp" と指定されている場合
            case "currentbp":
            case "t9bp":
            case "s4bp":
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
                break;
                
            // en : if the weapon type is specified as "random"
            // ja : 武器種類が「ランダム」と指定されている場合
            case "random":
                // en : pick a weapon type randomly from the array
                // ja : 配列内からランダムに武器種類を取り出す
                l_weapongroupid = scripts\engine\utility::random( l_weaponarray );
                
                if ( isdefined( l_weapongroupid ) )
                {
                    // en : randomly select a weapon from the weapon types
                    // ja : 武器種類からランダムに武器を選ぶ
                    l_weaponid = getrandomweaponfromgroup( l_weapongroupid );
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
                break;
                
            // en : when the weapon type is specified directly by id
            // ja : 武器種類が直接id指定されている場合
            default:
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
                break;
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



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : In-game logic generic function
// ja : インゲームロジック汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : play the effect starting from the specified object
// ja : 指定したオブジェクトを起点にエフェクトを再生する
//++++++++++++++++++++++++++++++
playeffecttoobject( time , obj , fx , tag , type , loop , base , fix , angle , range , stop )
{
    if ( type == "special" )
    {
        if ( fx == "nuke" )
        {
            if ( isdefined( obj ) ) { self thread execnuclearexplosion( obj.origin , self ); }
            else                    { self thread execnuclearexplosion( base , self ); }
            
            return;
        }
    }

    // en : if the specified object exists
    // ja : 指定されたオブジェクトが存在する場合
    if ( isdefined( obj ) )
    {
        // en: set the specified effect name as the function termination trigger
        // ja: 指定のエフェクト名を関数の終了トリガーとする
        obj endon( "end_" + fx );
        
        // en : if a tag name is specified and the object does not have a tag, fix the tag name.
        // ja : タグ名が指定されていて、そのオブジェクトがタグを持っていない場合は、タグ名を修正する
        if ( isdefined( tag ) )
        {
            if ( scripts\engine\utility::hastag( obj.model , tag ) == false )
            {
                tag = "tag_origin";
            }
        }
    }

    // en : to end the tag effect that is currently playing
    // ja : 再生中のタグエフェクトを終了する場合
    if ( isdefined( stop ) )
    {
        if      ( type == "gettag" )    { stopfxontag( scripts\engine\utility::getfx( fx ) , obj , tag ); }
        else if ( type == "loadtag" )   { stopfxontag( fx , obj , tag ); }

        // en: set the specified option name as the function termination trigger
        // ja: 指定のエフェクト名の終了トリガーを通知する
        obj notify( "end_" + fx );
        return;
    }
    
    // en : if adjustment coordinates are not specified, initialize them.
    // ja : 調整座標を指定されてない場合は、初期化しておく
    if ( !isdefined( fix ) )    { fix = ( 0 , 0 , 0 ); }

    // en: infinite loop
    // ja: 無限ループ
    while ( true )
    {
        // en : if the specified object exists
        // ja : 指定されたオブジェクトが存在する場合
        if ( isdefined( obj ) )
        {
            // en : if a tag name is specified, play the effect at the coordinates of the tag name
            // ja : タグ名が指定されている場合、タグ名の座標にエフェクトを再生する
            if ( isdefined( tag ) )
            {
                if      ( type == "gettag" )    { playfxontag( scripts\engine\utility::getfx( fx ) , obj , tag ); }
                else if ( type == "loadtag" )   { playfxontag( fx , obj , tag ); }
            }
            // en : if no tag name is specified, play the effect at a location shifted from the object to the modified coordinates.
            // ja : タグ名が指定されていない場合、オブジェクトから修正座標にずらした場所にエフェクトを再生する
            else
            {
                if ( isdefined( angle ) )
                {
                    switch ( angle )
                    {
                        case "up":      fix = anglestoup( obj.angles ) * range; break;
                        case "forward": fix = anglestoforward( obj.angles ) * range; break;
                        case "left":    fix = anglestoleft( obj.angles ) * range; break;
                        case "right":   fix = anglestoright( obj.angles ) * range; break;
                    }
                }

                if      ( type == "getplay" )   { playfx( scripts\engine\utility::getfx( fx ) , obj.origin + fix ); }
                else if ( type == "loadplay" )  { playfx( fx , obj.origin + fix ); }

                else if ( type == "getspawn" )  { l_fx = spawnfx( scripts\engine\utility::getfx( fx ) , obj.origin + fix ); triggerfx( l_fx ); l_fx thread deleteaftertime( 5 ); }
                else if ( type == "loadspawn" ) { l_fx = spawnfx( fx , obj.origin + fix ); triggerfx( l_fx ); l_fx thread deleteaftertime( 5 ); }
            }
        }
        // en : if the specified object does not exist
        // ja : 指定されたオブジェクトが存在しない場合
        else
        {
            // en : if basic coordinates are specified, generate effect at specified coordinates
            // ja : 基本座標が指定されている場合、指定された座標にエフェクトを生成する
            if ( isdefined( base ) )
            {
                if      ( type == "getplay" )   { playfx( scripts\engine\utility::getfx( fx ) , base + fix ); }
                else if ( type == "loadplay" )  { playfx( fx , base + fix ); }
                
                else if ( type == "getspawn" )  { l_fx = spawnfx( scripts\engine\utility::getfx( fx ) , base + fix ); triggerfx( l_fx ); l_fx thread deleteaftertime( 5 ); }
                else if ( type == "loadspawn" ) { l_fx = spawnfx( fx , base + fix ); triggerfx( l_fx ); l_fx thread deleteaftertime( 5 ); }
            }

            // en : in the case of loop processing, the loop is interrupted because there is no means to terminate it.
            // ja : ループ処理の場合、終了するための手段を実装していないため、ループを中断する
            if ( isdefined( loop ) ) { break; }
        }

        // en : break the loop if it does not loop infinitely
        // ja : 無限ループしない場合、ループを中断する
        if ( !isdefined( loop ) ) { break; }
        
        wait time;
    }
}



//++++++++++++++++++++++++++++++
// en : delete the specified object after the specified number of seconds
// ja : 指定されたオブジェクトを、指定された秒数経過後に削除する
//++++++++++++++++++++++++++++++
deleteaftertime( time )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    
    scripts\cp_mp\hostmigration::hostmigration_waitlongdurationwithpause( time );
    self deleteentity( );
}



//++++++++++++++++++++++++++++++
// en : obtain a trace in the front direction
// ja : 正面方向へのトレースを取得する
//++++++++++++++++++++++++++++++
getplayerforwardtrace( trace , eye , length , up )
{
    // en: when to use tracing
    // ja: トレースを使用する場合
    if ( isdefined( trace ) ) 
        return scripts\engine\trace::_bullet_trace( self geteye( ) , self geteye( ) + ( anglestoforward( self getplayerangles( ) ) * length ) , 1 , self );
    // en: when not to use tracing
    // ja: トレースを使用しない場合
    else
    {
        // en: get the coordinates of the player's front direction
        // ja: プレイヤーの正面方向の座標を取得する
        l_location = getangletrace(
            /* object */    self ,
            /* eye */       eye ,
            /* up */        up ,
            /* center */    undefined ,
            /* forward */   undefined ,
            /* back */      undefined ,
            /* backup */    undefined ,
            /* left */      undefined ,
            /* right */     undefined ,
            /* lrup */      undefined ,
            /* end */       length ,
            /* endup */     undefined ,
            /* enddown */   undefined ,
            /* trace */     trace
            );
        return l_location["end"];
    }
}



//++++++++++++++++++++++++++++++
// en : obtains a frontal trace that matches the angle of the specified object
// ja : 指定したオブジェクトの角度に合わせた、正面方向のトレースを取得する
//++++++++++++++++++++++++++++++
getangletrace( object , eye , up , center , forward , back , backup , left , right , lrup , end , endup , enddown , trace )
{
    if ( !isdefined( object ) )     { return; }
    
    l_angle = undefined;
    if ( !isplayer( object ) )      { l_angle = object.angles; }
    else                            { l_angle = object getplayerangles( ); }

    l_location = [];
    l_location["start"] = object.origin;
    if ( isplayer( object ) )       { if ( isdefined( eye ) ) { l_location["start"] = object geteye( ); } }

    if ( isdefined( up ) )          { l_location["start"]      += vectorscale( anglestoup( l_angle ) , up ); }
    if ( isdefined( center ) )      { l_location["start"]      += vectorscale( anglestoforward( l_angle ) , center ); }
    if ( isdefined( forward ) )     { l_location["forward"]    = l_location["start"] + vectorscale( anglestoforward( l_angle ) , forward ); }
    if ( isdefined( back ) )        { l_location["back"]       = l_location["start"] + vectorscale( anglestoforward( l_angle ) , back ); }
    if ( isdefined( left ) )        { left *= -1; }
    if ( isdefined( left ) )        { l_location["left"]       = l_location["start"] + vectorscale( anglestoright( l_angle ) , left ); }
    if ( isdefined( right ) )       { l_location["right"]      = l_location["start"] + vectorscale( anglestoright( l_angle ) , right ); }
    if ( isdefined( backup ) )
    {
        if ( isdefined( back ) )    { l_location["back"]       += vectorscale( anglestoup( l_angle ) , backup ); }
    }
    if ( isdefined( lrup ) )
    {
        if ( isdefined( left ) )    { l_location["left"]       += vectorscale( anglestoup( l_angle ) , lrup ); }
        if ( isdefined( right ) )   { l_location["right"]      += vectorscale( anglestoup( l_angle ) , lrup ); }
    }
    if ( isdefined( end ) )         { l_location["end"]        = l_location["start"] + vectorscale( anglestoforward( l_angle ) , end ); }
    if ( isdefined( endup ) )       { l_location["endup"]      = l_location["start"] + vectorscale( anglestoup( l_angle ) , endup ); }
    if ( isdefined( enddown ) )     { l_location["enddown"]    = l_location["start"] + vectorscale( anglestoup( l_angle ) , enddown ); }
    if ( isdefined( trace ) )
    {
        if ( isdefined( end ) )
        {
            l_point = scripts\engine\trace::_bullet_trace( l_location["start"] , l_location["end"] , 1 , object );
            l_location["endtrace"] = l_point["position"];
        }
    }

    return l_location;
}



//++++++++++++++++++++++++++++++
// en : get the coordinates that are multiples ahead of the specified coordinates
// ja : 指定の座標に対して、倍数分先の座標を取得する
//++++++++++++++++++++++++++++++
vectorscale( location , length )
{
    return ( location[0] * length , location[1] * length , location[2] * length );
}



//++++++++++++++++++++++++++++++
// en : wait for a bullet to be fired and process the specified event by matching the weapon information.
// ja : 銃弾の発射を待機し、武器情報の照合一致により、指定のイベントを処理する
//++++++++++++++++++++++++++++++
waitfirebullets( optname1 , optname2 , optfunc , notice , specificweapon , effectdata , enddeath )
{
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    // en : if you want to disable the function when you die
    // ja : 死んだ時に機能を無効化したい場合
    if ( isdefined( enddeath ) )
    {
        // en : this function ends processing if "you die"
        // ja : この関数は「自分が死んだ」場合に処理を終了する
        self endon( "death" );
    }
    
    // en: set the specified option name as the function termination trigger
    // ja: 指定のオプション名を関数の終了トリガーとする
    self endon( "end_" + optname1 );
    
    // en: if an effect is specified, allow the effect to occur on fire.
    // ja: エフェクトが指定されている場合、発射時にエフェクトを発生できるようにする
    if ( isdefined( effectdata ) )
    {
        self.optstat[optname1].effectdata = effectdata;
    }

    // en: make it a variable so that you can adjust the distance of the coordinates to get when firing a gun
    // ja: 銃発射時の取得先の座標の距離を調整できるように変数化する
    self.optstat[optname1].moddata["tracelength"] = 100000;

    // en: infinite loop
    // ja: 無限ループ
    while ( true )
    {
        // en: wait until the bullet is fired
        // ja: 銃弾を発射するまで待機する
        self waittill( "weapon_fired" );

        // en: if the specified variable does not exist, end the loop processing
        // ja: 指定の変数が存在しない場合は、ループ処理を終了する
        if ( !isdefined( self.optstat[optname1] ) ) { break; }
        if ( isdefined( optname2 ) )
        {
            if ( !isdefined( self.optstat[optname1].moddata[optname2] ) ) { break; }
        }
        
        // en: activates with specific weapons
        // ja: 特定の武器で発動する場合
        if ( isdefined( specificweapon ) )
        {
            // en: if there is no weapon data linked to the specified variable, end the loop process.
            // ja: 指定の変数に連携する武器データが存在しない場合は、ループ処理を終了する
            if ( !isdefined( self.optstat[optname1].weapondata ) ) { break; }
            
            // en: if the fired weapon and the weapon linked to the specified variable do not match, restart the process.
            // ja: 発射された武器と、指定の変数に連携する武器が一致しない場合は、処理をやり直す
            if ( scripts\mp\utility\weapon::getweaponfullname( self getcurrentweapon( ) ) != self.optstat[optname1].weapondata ) { continue; }
        }

        // en : obtain trace results for a specified number of distances in the front direction
        // ja : 正面方向へ 指定した数値分先 の距離のトレース結果を取得する
        l_endlocation = self getplayerforwardtrace( true , true , self.optstat[optname1].moddata["tracelength"] );
        
        // en: if coordinate information has been obtained
        // ja: 座標情報が取得できている場合
        if ( isdefined( l_endlocation["position"] ) )
        {
            // en: if effect data exists
            // ja: エフェクトデータが存在する場合
            if ( isdefined( self.optstat[optname1].effectdata ) )
            {
                // en: play the effect at the obtained coordinates
                // ja: 取得した座標にエフェクトを再生する
                playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ self.optstat[optname1].effectdata , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ l_endlocation["position"] , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            }

            if ( isdefined( notice ) )
            {
                // en: display the text "[notification] request to specified coordinates: function name" in the center of the screen.
                // ja: 画面中央に「[通知] 指定座標に要請 : 機能名」という文章を表示する
                self showcentermessage( self.curlang , "notice" , "requestlocation" , optname1 , undefined , undefined );
            }

            // en: execute the specified function in a subthread (with coordinate arguments)
            // ja: 指定した関数をサブスレッドで実行する（座標引数付き）
            self thread [[ optfunc ]]( l_endlocation["position"] );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : set physical strength to receive damage
// ja : ダメージを受け取る体力設定を行う
//++++++++++++++++++++++++++++++
createdamagingsystem( hpmin , hpmax , dmgtype , dmgfx , brktype , brkfx , dmgse , brkse , del , name , owner )
{
    // en: if maximum health is not specified, do not proceed further.
    // ja: 最大体力が指定されていない場合は、この先の処理を行わない
    if ( !isdefined( hpmax ) ) { return; }


    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    
    // en: set the owner of this object if specified
    // ja: このオブジェクトの所有者が指定されている場合は設定する
    if ( isdefined( owner ) )
    {
        self.owner          = owner;
        self.team           = owner.team;
        self.pers["team"]   = owner.pers["team"];
    }


    // en : allow yourself to take damage
    // ja : 自分自身がダメージを受けられるようにする
    self setcandamage( true );
    
    // en: if minimum health is specified
    // ja: 最低体力が指定されている場合
    if ( isdefined( hpmin ) )
    {
        // en: randomly determine maximum health
        // ja: 最大体力をランダムで決める
        self.health = randomintrange( hpmin , hpmax );
    }
    // en: if minimum health is not specified
    // ja: 最低体力が指定されていない場合
    else
    {
        // en: set maximum health
        // ja: 最大体力を設定
        self.health = hpmax;
    }
    self.maxhealth = self.health;

    // en: infinite loop until stamina runs out
    // ja: 体力が無くなるまで無限ループ
    while ( 0 < self.health )
    {
        // en: wait to take damage
        // ja: ダメージを受けるのを待機する
        self waittill( "damage" , damagedsize , playerinfo , var_2 , damagedpoint , damagetype , var_5 , var_6 , var_7 , var_8 , weaponname , var_10 , var_11 , var_12 , killstreakinfo );

        // en: remember the last player info who caused damage
        // ja: 最後にダメージを与えたプレイヤー情報を記憶する
        self.lastattacker = playerinfo;
        self.lastdamagetype = damagetype;
        self.lastweaponname = weaponname;

        // en: reduces health by the amount of damage received
        // ja: 受けたダメージ分体力を減らす
        self.health = self.health - damagedsize;

        // en: if you still have the energy
        // ja: 体力がまだある場合
        if ( 0 < self.health )
        {
            // en: if a damage effect is specified
            // ja: ダメージエフェクトが指定されている場合
            if ( isdefined( dmgfx ) )
            {
                // en: generates an effect at the damaged coordinates
                // ja: ダメージを受けた座標にエフェクトを発生させる
                playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ dmgfx , /* tag */ undefined , /* type */ dmgtype , /* loop */ undefined , /* base */ damagedpoint, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            }
            // en: if damage sound effects are specified
            // ja: ダメージサウンドエフェクトが指定されている場合
            if ( isdefined( dmgse ) )
            {
                // en: regenerate se at damaged coordinates
                // ja: ダメージを受けた座標にseを再生させる
                playsoundatpos( damagedpoint , dmgse );
            }
        }
        // en: if you run out of energy
        // ja: 体力が無くなった場合
        else
        {
            // en: if a destruction effect is specified
            // ja: 破壊エフェクトが指定されている場合
            if ( isdefined( brkfx ) )
            {
                // en: play a destruction effect at your center point
                // ja: 自分の中心点に破壊エフェクトを再生する
                playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ brkfx , /* tag */ undefined , /* type */ brktype , /* loop */ undefined , /* base */ self.origin, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            }
            // en: if a destruction sound effect is specified
            // ja: 破壊サウンドエフェクトが指定されている場合
            if ( isdefined( brkse ) )
            {
                // en: regenerate se at damaged coordinates
                // ja: ダメージを受けた座標にseを再生させる
                playsoundatpos( damagedpoint , brkse );
            }
            
            // en: break the loop
            // ja: ループを中断する
            break;
        }
    }

    // en: when deleting a model when it runs out of health
    // ja: 体力が無くなった時にモデルを削除する場合
    if ( isdefined( del ) )
    {
        wait 0.001;

        // en: delete yourself
        // ja: 自分自身を削除する
        self deleteentity( );
    }
    // en: if the model is not deleted when it runs out of health
    // ja: 体力が無くなった時にモデルを削除しない場合
    else
    {
        // en: notify termination trigger due to destruction of specified option name
        // ja: 指定のオプション名の破壊による終了トリガーを通知する
        self notify( "breaked_" + name );
        if ( isdefined( owner ) )
        {
            owner notify( "breaked_" + name );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : creates the specified object at a specified multiple distance from your eye.
// ja : 自分の眼先から指定した倍数先の距離に、指定したオブジェクトを作成
//++++++++++++++++++++++++++++++
createentityobject( notice , location , length , script , model , collide , sync , angle , part , hpmin , hpmax , dmgtype , dmgfx , brktype , brkfx , dmgse , brkse , del , optname )
{
    if ( isdefined( level.lvlstat["deletelastobject" + "_objectcount"] ) )
    {
        if ( 600 < level.lvlstat["deletelastobject" + "_objectcount"].size )
        {
            // en: display the text "[notification] create object: object name" in the center of the screen
            // ja: 画面中央に「[通知] オブジェクトを作成 : オブジェクト名」という文章を表示する
            self showcentermessage( self.curlang , "failed" , "the number of objects is full, please reduce it." , undefined , model , undefined );
            return;
        }
    }

    // en: if the object data to be created does not exist, generate an error and do not process.
    // ja: 作成するオブジェクトデータが存在無い場合は、エラーを出して処理しない
    if ( !isdefined( model ) )
        return;

    l_objectlocation = undefined;
    // en : get the creation coordinates of the object (place it in front of you, a specified number of minutes away from you)
    // ja : 生成先距離の指定がある場合
    if ( isdefined( length ) )
        // en : get the creation coordinates of the object (place it in front of you, a specified number of minutes away from you)
        // ja : オブジェクトの生成座標を取得（正面方向に 指定数分 倍先の距離、自分の目の前にする）
        l_objectlocation = self getplayerforwardtrace( undefined , true , length , -10 );

    // en: if coordinates are specified, give priority to that information.
    // ja: 座標指定がある場合はその情報を優先する
    if ( isdefined( location ) )
        l_objectlocation = location;

    // en : create an empty 3d model at the generation position
    // ja : 生成位置に空の3dモデルを作成する
    l_newobject = spawn( script , l_objectlocation );
    // en : set model data
    // ja : モデルデータを設定する
    l_newobject setmodel( model );

    // en : set all script parts status for the specified model
    // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
    if ( isdefined( part ) )
    {
        if ( ( model != "military_carepackage_01_juggernaut" ) &&
            ( model != "military_carepackage_01_enemy" ) &&
            ( model != "military_carepackage_01_friendly" ) )
            l_newobject thread setallsetscriptablepartstate( );
    }

    // en: when object collision detection is required
    // ja: オブジェクトの衝突判定が必要な場合
    if ( isdefined( collide ) )
    {
        // en: get the entity data of the generated object
        // ja: 生成するオブジェクトのエンティティデータを取得する
        l_entitydata = getent( model , "targetname" );
        if ( isdefined( l_entitydata ) )
            // en: set collision detection for generated objects
            // ja: 生成したオブジェクトに衝突判定を設定する
            l_newobject clonebrushmodeltoscriptmodel( l_entitydata );

        // en: set an object solid
        // ja: オブジェクトを固体設定する
        l_newobject solid( );
    }
    // en: when object collision detection is not required
    // ja: オブジェクトの衝突判定が不要な場合
    else
        // en: assume an object is not solid
        // ja: オブジェクトを固体ではないとする
        l_newobject notsolid( );
    
    l_objectangle = undefined;
    
    // en: if there is an angle specification, that information takes precedence.
    // ja: 角度指定がある場合はその情報を優先する
    if ( isdefined( angle ) )
        l_objectangle = angle;
    // en: if there is not an angle specification
    // ja: 角度指定が無い場合
    else
    {
        l_objectangle = self getplayerangles( );
        if ( !isdefined( l_objectangle ) )
            l_objectangle = ( 0 , 0 , 0 );
        else
        {
            // en: if "x-axis rotation setting" is enabled
            // ja: "x軸回転設定" が 有効 になっている場合
            if ( isdefined( sync ) )    l_objectangle = ( l_objectangle[0] , l_objectangle[1] , 0 );
            // en: if "x-axis rotation setting" is disabled
            // ja: "x軸回転設定" が 無効 になっている場合
            else                        l_objectangle = ( 0 , l_objectangle[1] , 0 );
        }
    }
    
    // en: set the angle of the generated object
    // ja: 生成したオブジェクトの角度を設定する
    l_newobject.angles = l_objectangle;
    
    // en: set the owner of the generated object
    // ja: 生成したオブジェクトのオーナーを設定する
    l_newobject.owner = self;

    // en: if maximum health is specified
    // ja: 最大体力が指定されている場合
    if ( isdefined( hpmax ) )
        l_newobject thread createdamagingsystem( hpmin , hpmax , dmgtype , dmgfx , brktype , brkfx , dmgse , brkse , del , optname , self );
    
    // en: add the created object to the managed list
    // ja: 作成されたオブジェクトを管理リストに追加する
    if ( isdefined( l_newobject ) )
    {
        if ( !isdefined( level.lvlstat["deletelastobject" + "_objectcount"] ) ) level.lvlstat["deletelastobject" + "_objectcount"] = [];
        level.lvlstat["deletelastobject" + "_objectcount"][level.lvlstat["deletelastobject" + "_objectcount"].size] = l_newobject;
    }

    // en: if you need to display a message
    // ja: メッセージを表示する必要がある場合
    if ( isdefined( notice ) )
        // en: display the text "[notification] create object: object name" in the center of the screen
        // ja: 画面中央に「[通知] オブジェクトを作成 : オブジェクト名」という文章を表示する
        self showcentermessage( self.curlang , "notice" , "createobject" , undefined , model , undefined );

    return l_newobject;
}



//++++++++++++++++++++++++++++++
// en : a generic function to remove a specified object (for world entity list interference)
// ja : 指定されたオブジェクトを削除するための汎用関数（ワールドエンティティリスト干渉用）
//++++++++++++++++++++++++++++++
deleteentity( )
{
    l_optname1 = "deletelastobject";
    l_optname2 = "_objectcount";

    if ( isdefined( level.lvlstat[l_optname1 + l_optname2] ) &&
        ( 0 < level.lvlstat[l_optname1 + l_optname2].size ) &&
        scripts\engine\utility::array_contains( level.lvlstat[l_optname1 + l_optname2] , self )
        )
    {
        level.lvlstat[l_optname1 + l_optname2] = scripts\engine\utility::array_remove( level.lvlstat[l_optname1 + l_optname2] , self );
    }
    
    if ( isdefined( self.owner ) &&
        isdefined( self.owner.optstat[l_optname1 + l_optname2] ) &&
        ( 0 < self.owner.optstat[l_optname1 + l_optname2].size ) &&
        scripts\engine\utility::array_contains( self.owner.optstat[l_optname1 + l_optname2] , self )
        )
    {
        self.owner.optstat[l_optname1 + l_optname2] = scripts\engine\utility::array_remove( self.owner.optstat[l_optname1 + l_optname2] , self );
    }
    
    self delete( );
}



//++++++++++++++++++++++++++++++
// en : set all script parts status for the specified model
// ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
//++++++++++++++++++++++++++++++
setallsetscriptablepartstate( explode )
{
    if ( !isdefined( explode ) )
    {
        self setscriptablepartstate( "fake_trail"       , "on"      , 0 );
        self setscriptablepartstate( "contrails"        , "on"      , 0 );
        self setscriptablepartstate( "wing_trails"      , "on" );
        self setscriptablepartstate( "trail"            , "active"  , 1 );
        self setscriptablepartstate( "trail"            , "neutral" , 1 );
        self setscriptablepartstate( "smoke"            , "on"      , 0 );
        self setscriptablepartstate( "cloud_contrail"   , "base" );
        self setscriptablepartstate( "fast_contrail"    , "base" );
        self setscriptablepartstate( "engine_smoke"     , "base"    , 0 );
        self setscriptablepartstate( "fx"               , "trails"  , 0 );

        self setscriptablepartstate( "lights"           , "active"  , 1 );
        self setscriptablepartstate( "lights"           , "on" );
        self setscriptablepartstate( "lights2"          , "on"      , 0 );
        self setscriptablepartstate( "blinking_lights"  , "on"      , 0 );
        self setscriptablepartstate( "interior_light"   , "on"      , 0 );
        self setscriptablepartstate( "tail_light"       , "red" );
        self setscriptablepartstate( "cockpit_light"    , "on" );
        self setscriptablepartstate( "infil_lights"     , "on" );
        self setscriptablepartstate( "light"            , "light_on" );
        self setscriptablepartstate( "pulse"            , "on"      , 0 );
        self setscriptablepartstate( "glint"            , "on"      , 0 );

        self setscriptablepartstate( "main_thruster"    , "on"      , 0 );
        self setscriptablepartstate( "sub_thruster"     , "on"      , 0 );
        self setscriptablepartstate( "warhead_thruster" , "on"      , 0 );
        self setscriptablepartstate( "thrusters"        , "active"  , 0 );
        self setscriptablepartstate( "engine"           , "on"      , 0 );
        self setscriptablepartstate( "burning"          , "flareup" , 0 );
        self setscriptablepartstate( "exhaustfx"        , "active" );
        self setscriptablepartstate( "propeller"        , "spin_up" , 0 );
        self setscriptablepartstate( "booster_start"    , "enabled" , 0 );
        self setscriptablepartstate( "booster"          , "enabled" , 0 );
        self setscriptablepartstate( "speedBoost"       , "on" );

        self setscriptablepartstate( "bodyfx"           , "on"      , 0 );
        self setscriptablepartstate( "flyby"            , "on"      , 0 );
        self setscriptablepartstate( "anims"            , "capture" , 0 );
        self setscriptablepartstate( "capture"          , "start"   , 0 );
        self setscriptablepartstate( "rotors"           , "on"      , 0 );
        self setscriptablepartstate( "looping_wave"     , "on"      , 0 );
        self setscriptablepartstate( "launch"           , "active"  , 0 );
        self setscriptablepartstate( "launch"           , "on"      , 0 );
        self setscriptablepartstate( "effects"          , "active"  , 0 );
        self setscriptablepartstate( "wind"             , "50"      , 0 );
        self setscriptablepartstate( "base"             , "active"  , 0 );
        self setscriptablepartstate( "fx"               , "base" );
        self setscriptablepartstate( "stability"        , "stable"  , 1 );
    }
    else
    {
        self setscriptablepartstate( "stuck", "active", 0 );
        self setscriptablepartstate( "beacon", "active", 0 );
        self setscriptablepartstate( "effects" , "explode" , 0 );
        self setscriptablepartstate( "launch" , "off" , 0 );
        self setscriptablepartstate( "explode" , "active" , 0 );
        self setscriptablepartstate( "explode" , "on" , 0 );
        self setscriptablepartstate( "impact" , "on" , 0 );
        self setscriptablepartstate( "flare", "on", 0 );
        self setscriptablepartstate( "ground_explosion", "on", 0 );
        self setscriptablepartstate( "air_explosion", "on", 0 );
    }
}



//++++++++++++++++++++++++++++++
// en : generates a bullet of the specified type
// ja : 指定した種類の弾丸を生成する
//++++++++++++++++++++++++++++++
createmagicbullet( owner , weaponid , pstart , pend )
{
    // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate
    // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす
    l_bullet = scripts\cp_mp\utility\weapon_utility::_magicbullet( getcompleteweaponname( weaponid ) , pstart, pend , owner );
    l_bullet thread onbulletanimationtrigger( weaponid );
    return l_bullet;
}



//++++++++++++++++++++++++++++++
// en : bullet animation execution process after generation
// ja : 生成後の弾丸のアニメーション実行処理
//++++++++++++++++++++++++++++++
onbulletanimationtrigger( weaponid )
{
    switch ( weaponid )
    {
        case "emp_drone_proj_mp":
            // en : play effects and sounds
            // ja : エフェクトとサウンドを再生する
            playfxontag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ) , self , "tag_origin" );
            playfxontag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_contrails.vfx" ) , self , "tag_origin" );
            playfxontag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_heat_dist.vfx" ) , self , "tag_origin" );
            playfxontag( scripts\engine\utility::getfx( "vfx/iw8_mp/killstreak/vfx_rc_plane_rotor.vfx" ) , self , "j_propeller" );
            self playloopsound( "iw8_rc_plane_engine" );
            // en : execute the landing process for various missiles on a sub-thread
            // ja : 各種ミサイルの着弾処理をサブスレッド上で実行する
            self thread onwaitingtypemissileimpact( weaponid );
            break;
            
        // en : executes "ac130" missile landing process and generates an earthquake
        // ja : "ac130" のミサイルの着弾処理の実行、及び地震を発生させる
        case "ac130_105mm_mp":
            earthquake( 0.2 , 1 , self.origin , 1000 );
            self thread onwaitingmissileimpactac130( weaponid );
            break;
        case "ac130_40mm_mp":
            earthquake( 0.1 , 0.5 , self.origin , 1000 );
            self thread onwaitingmissileimpactac130( weaponid );
            break;
        case "ac130_25mm_mp":
            self thread onwaitingmissileimpactac130( weaponid );
            break;

        default:
            // en : set all script parts status for the specified model
            // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
            self thread setallsetscriptablepartstate( );
            // en : execute the landing process for various missiles on a sub-thread
            // ja : 各種ミサイルの着弾処理をサブスレッド上で実行する
            self thread onwaitingtypemissileimpact( weaponid );
            break;
    }
}



//++++++++++++++++++++++++++++++
// en : impact processing for various missiles
// ja : 各種ミサイルの着弾処理
//++++++++++++++++++++++++++++++
onwaitingtypemissileimpact( weaponid )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    
    // en : wait until the missile hits
    // ja : ミサイルが着弾するまで待機する
    // self waittill( "missile_stuck" , var_3 , var_4 , var_5 , var_6 , var_7 , missilevector );
    l_result = self scripts\engine\utility::waittill_any_return( "missile_stuck" , "collision" , "explode" , "death"  );

    switch ( weaponid )
    {
        case "emp_drone_proj_mp":
            // en : play explosion sound and play explosion effect at impact coordinates
            // ja : 爆発音を再生し、着弾座標に爆発エフェクトを再生する
            self playsound( "iw8_rc_plane_engine_exp" );
            playfx( scripts\engine\utility::getfx( "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ) , self.origin , anglestoforward( self.angles ) );
            // en : causes area damage at the impact coordinates
            // ja : 着弾座標に範囲ダメージを発生させる
            self radiusdamage( self.origin , 80 , 120 , 80 , self.owner , "MOD_EXPLOSIVE" , getcompleteweaponname( "emp_drone_player_mp" ) );
            // en : causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // ja : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            earthquake( 0.3 , 1 , self.origin , 2000 );
            // en : end the specified loop sound
            // ja : 指定したループサウンドを終了する
            self stoploopsound( "iw8_rc_plane_engine" );
            break;

        case "white_phosphorus_proj_mp":
            // en : create an explosion effect model
            // ja : 爆発エフェクトモデルを作成する
            l_expeffect = self createentityobject(
                /* notice */ undefined , /* point */ self.origin , /* length */ undefined , /* script */ "script_model" , /* model */ "ks_white_phosphorus_mp" , /* collide */ undefined , /* sync */ undefined , /* angle */ self.angles , /* part */ true ,
                /* hpmin */ undefined , /* hpmax */ undefined , /* dmgtype */ undefined , /* dmgfx */ undefined , /* brktype */ undefined , /* brkfx */ undefined , /* dmgse */ undefined , /* brkse */ undefined , /* enddel */ undefined , /* name */ undefined
                );

            // en : set all script parts status for the specified model
            // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
            self thread setallsetscriptablepartstate( /* explode */ true );
            l_expeffect thread setallsetscriptablepartstate( /* explode */ true );
            // en : causes area damage at the impact coordinates
            // ja : 着弾座標に範囲ダメージを発生させる
            self radiusdamage( self.origin , 512 , 500 , 500 , self.owner, "MOD_EXPLOSIVE", getcompleteweaponname( weaponid ) );
            // en : causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // ja : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            earthquake( 0.5 , 1 , self.origin , 3000 );
            wait 0.1;
            l_expeffect deleteentity( );
            break;

        case "cruise_proj_mp":
            // en : set all script parts status for the specified model
            // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
            self thread setallsetscriptablepartstate( /* explode */ true );
            // en : causes area damage at the impact coordinates
            // ja : 着弾座標に範囲ダメージを発生させる
            self radiusdamage( self.origin , 600 , 1000 , 1000 , self.owner, "MOD_EXPLOSIVE", getcompleteweaponname( weaponid ) );
            // en : causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // ja : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            earthquake( 0.5 , 1 , self.origin , 3000 );
            playfxontag( scripts\engine\utility::getfx( "predator_pod_break" ) , self , "tag_missile" );
            wait 0.1;
            break;
    }
    // en : delete the missile that landed
    // ja : 着弾したミサイルを削除する
    self deleteentity( );
}



////++++++++++++++++++++++++++++++
//// en : general-purpose animation processing executed when a special missile is launched.
//// ja : 特殊なミサイルが発射された時に実行する汎用アニメーション処理
////++++++++++++++++++++++++++++++
//onwaitingfiredmissile( optname )
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon( "game_ended" );
//    // en : this function ends the process if "you disconnect from the room"
//    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
//    self endon( "disconnect" );
//    // en : this function ends processing if "you die"
//    // ja : この関数は「自分が死んだ」場合に処理を終了する
//    self endon( "death" );
//    // en: set the specified effect name as the function termination trigger
//    // ja: 指定の機能名を関数の終了トリガーとする
//    self endon( "finalize_" + optname );
//
//    // en: loop until specified variable no longer exists
//    // ja: 指定の変数が存在しなくなるまでループ
//    while ( isdefined( self.optstat[optname] ) )
//    {
//        // en: wait for missile to launch
//        // ja: ミサイルが発射されるのを待機する
//        self waittill( "missile_fire" , missiledata );
//
//        l_weaponid = "none";
//
//        // en: if the function performing this process is not "moddedbullets"
//        // ja: この処理を実行中の機能が "moddedbullets" ではない場合
//        if ( optname != "moddedbullets" )
//        {
//            // en: get information about the weapon you currently have
//            // ja: 今持っている武器の情報を取得
//            l_currentweapon = self getcurrentweapon( );
//            l_weaponid = l_currentweapon.basename;
//        }
//        // en: if the function performing this process is "moddedbullets"
//        // ja: この処理を実行中の機能が "moddedbullets" の場合
//        else
//        {
//            // en: get the currently set ammunition type
//            // ja: 設定中の弾薬種類を取得
//            if ( isdefined( self.optstat[optname].moddata["bullettype"] ) )
//            {
//                l_weaponid = self.optstat[optname].moddata["bullettype"];
//            }
//        }
//
//        // en: change processing depending on weapon type
//        // ja: 武器種類によって処理を変更する
//        switch ( l_weaponid )
//        {
//            // en : executes "ac130" missile landing process and generates an earthquake
//            // ja : "ac130" のミサイルの着弾処理の実行、及び地震を発生させる
//            case "ac130_105mm_mp":
//                earthquake( 0.2 , 1 , self.origin , 1000 );
//                missiledata thread onwaitingmissileimpactac130( l_weaponid );
//                break;
//            case "ac130_40mm_mp":
//                earthquake( 0.1 , 0.5 , self.origin , 1000 );
//                missiledata thread onwaitingmissileimpactac130( l_weaponid );
//                break;
//            case "ac130_25mm_mp":
//                missiledata thread onwaitingmissileimpactac130( l_weaponid );
//                break;
//        }
//    }
//}



//++++++++++++++++++++++++++++++
// en : "ac130" missile impact processing
// ja : "ac130" のミサイルの着弾処理
//++++++++++++++++++++++++++++++
onwaitingmissileimpactac130( weaponid )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    
    // en : wait until the missile hits
    // ja : ミサイルが着弾するまで待機する
    self waittill( "missile_stuck" , var_3 , var_4 , var_5 , var_6 , var_7 , missilevector );

    // en : generate a shader for the danger zone
    // ja : 危険地帯のシェーダーを生成する
    l_time = 0.5;
    l_range = 100;
    switch ( weaponid )
    {
        case "ac130_105mm_mp": l_time = 1.5; l_range = 500; break;
        case "ac130_40mm_mp": l_time = 1; l_range = 300; break;
    }
    if ( scripts\cp_mp\utility\script_utility::issharedfuncdefined( "spawn" , "addspawndangerzone" ) )
        [[ scripts\cp_mp\utility\script_utility::getsharedfunc( "spawn" , "addspawndangerzone" ) ]]( self.origin , l_range , l_range , self.team , l_time , self , 1 );

    // en : create an explosion effect model
    // ja : 爆発エフェクトモデルを作成する
    l_expeffect = self createentityobject(
        /* notice */        undefined ,
        /* spawnlocation */ self.origin ,
        /* spawnlength */   undefined ,
        /* script */        "script_model" ,
        /* objectname */    "ks_ac130_target_mp" ,
        /* objectcollide */ undefined ,
        /* anglesync */     undefined ,
        /* objectangle */   vectortoangles( missilevector )
        );
        
    // en : link the explosion effect model to the missile that landed
    // ja : 爆発エフェクトモデルを着弾したミサイルに紐づける
    l_expeffect linkto( self , "tag_origin" , ( 0 , 0 , 0 ) , ( 0 , 0 , 0 ) );
    l_expeffect setotherent( self );

    // en : setting effect playback status on explosion effect model
    // ja : 爆発エフェクトモデルにエフェクト再生ステータスを設定する
    l_expeffect setscriptablepartstate( self.weapon_name , "on" , 0 );

    // en : destroy or delete the missile that landed
    // ja : 着弾したミサイルを爆破か削除する
    if ( isdefined( self ) )    { self detonate(); }
    else                        { self deleteentity( ); }

    // en : generates an airstrike earthquake at the blast location
    // ja : 爆破地点に空爆用地震を発生させる
    l_expscale = getac130missileexplscale( self.weapon_name );
    l_expradius = getac130missileexplradius( self.weapon_name );
    if ( scripts\cp_mp\utility\script_utility::issharedfuncdefined( "shellshock" , "artillery_earthquake" ) )
        [[ scripts\cp_mp\utility\script_utility::getsharedfunc( "shellshock" , "artillery_earthquake" ) ]]( l_expeffect.origin , l_expscale , 0.75 , l_expradius );

    // en : delete the missile that landed
    // ja : 着弾したミサイルを削除する
    scripts\cp_mp\hostmigration::hostmigration_waitlongdurationwithpause( 5 );
    l_expeffect deleteentity( );
    self deleteentity( );
}



//++++++++++++++++++++++++++++++
// en : obtained the explosion scale of the "ac130" missile.
// ja : "ac130" のミサイルの爆発スケールを取得
//++++++++++++++++++++++++++++++
getac130missileexplscale( weaponname )
{
    l_expscale = 1.0; 
    switch ( weaponname )
    {
        case "ac130_105mm_mp": l_expscale = 0.75; break;
        case "ac130_40mm_mp": l_expscale = 0.5; break;
        case "ac130_25mm_mp": l_expscale = 0.15; break;
    } 
    return l_expscale;
}



//++++++++++++++++++++++++++++++
// en : get the missile explosion range of "ac130"
// ja : "ac130" のミサイルの爆発範囲を取得
//++++++++++++++++++++++++++++++
getac130missileexplradius( weaponname )
{
    l_expradius = 1.0; 
    switch ( weaponname )
    {
        case "ac130_105mm_mp": l_expradius = 2000; break;
        case "ac130_40mm_mp": l_expradius = 1300; break;
        case "ac130_25mm_mp": l_expradius = 700; break;
    }
    return l_expradius;
}



//++++++++++++++++++++++++++++++
// en : for effect processing purposes, make the specified bullet fly in a transparent state from the specified starting point to the specified ending point.
// ja : エフェクト処理用途で、指定した弾を、指定した開始地点から終了地点まで、透明状態で飛ばす
//++++++++++++++++++++++++++++++
createeffectablebullet( owner , length , up , weaponid , end )
{
    // en : get the ammunition generation coordinates (coordinates a specified distance ahead in the direction of the player's viewpoint)
    // ja : 弾薬の生成座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
    l_start = owner getplayerforwardtrace( /* trace */ undefined , /* eye */ true , /* length */ length , /* up */ up );
    if ( !isdefined( end ) )
    {
        // en : get the coordinates of the bullet's impact (coordinates a specified distance ahead in the direction of the player's viewpoint)
        // ja : 弾薬の着弾座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
        end = owner getplayerforwardtrace( /* trace */ undefined , /* eye */ true , /* length */ 1000000 , /* up */ undefined );
    }
    // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
    // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
    l_bullet = createmagicbullet( owner , weaponid , l_start , end );
    // en: if bullets can be generated
    // ja: 弾が生成出来ている場合
    if ( isdefined( l_bullet ) )
    {
        // en : keep ammunition out of sight
        // ja : 弾薬は見えないようにする
        l_bullet hide( );
    }
    return l_bullet;
}



//++++++++++++++++++++++++++++++
// en : a general-purpose process that links a specified object to the generated projectile and unlinks it upon impact.
// ja : 生成された発射弾に指定のオブジェクトをリンクし、着弾時にリンク解除する汎用処理
//++++++++++++++++++++++++++++++
linkobjecttobullet( object , time , del )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    // en: link object to ammunition
    // ja: オブジェクトを弾薬にリンクする
    object linkto( self );

    // en : if time is specified, wait for the time
    // ja : 時間が指定されている場合、時間分待機する
    if ( isdefined( time ) )
    {
        if ( 0 < time )
        {
            wait time;
        }
        else
        {
            while ( true )
            {
                if ( !isdefined( self ) ) { break; }
                wait 0.001;
            }
        }
    }
    // en : wait for the ammunition to land and disappear
    // ja : 弾薬が着弾して消滅するのを待機する
    else
    {
        l_result = self scripts\engine\utility::waittill_any_return( "death" , "missile_stuck" , "collision" , "explode" );
    }

    // en: unlink a object
    // ja: オブジェクトのリンクを解除する
    if ( isdefined( object ) ) { object unlink( ); }
    
    // en : if time is specified, wait for the time
    // ja : 時間が指定されている場合、時間分待機する
    if ( isdefined( time ) )    { wait time; }
    
    // en : if deletion is specified, delete the object
    // ja : 削除指定されている場合、オブジェクトを削除する
    if ( isdefined( del ) )     { object deleteentity( ); }
}



//++++++++++++++++++++++++++++++
// en : generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
// ja : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
//++++++++++++++++++++++++++++++
execnuclearexplosion( location , owner )
{
    // en : play the sound of a nuclear explosion starting from the specified coordinates
    // ja : 指定した座標を起点に、核爆発のサウンドを再生させる
    playsoundatpos( location , "iw8_nuke_impact_low" );
    playsoundatpos( location , "iw8_nuke_incoming_blast_wave" );
    playsoundatpos( location , "iw8_nuke_blast" );
    playsoundatpos( location , "iw8_nuke_blast_tail" );
    
    // en : play nuclear explosion effect at specified coordinates
    // ja : 指定した座標に核爆発のエフェクトを再生させる
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ "nuke_atomize_body"           , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ "nuke_rolling_death"          , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ "vfx_nuke_zone_5000_static_s" , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ location, /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );

    // en : change the nuclear explosion effect model caused by game mode
    // ja : ゲームモードによって発生させる核爆発エフェクトモデルを変更する
    l_modelid = "";
    if ( scripts\mp\utility\game::getgametype( ) != "br" )  { l_modelid = "ks_nuke_mp"; }
    else                                                    { l_modelid = "ks_nuke_br"; }

    // en : generate an animated model of a nuclear explosion at specified coordinates
    // ja : 指定した座標に核爆発のアニメーションモデルを生成する
    l_nukeanim = self createentityobject(
        /* notice */    undefined ,
        /* location */  location ,
        /* length */    undefined ,
        /* script */    "script_model" ,
        /* model */     l_modelid ,
        /* collide */   undefined ,
        /* sync */      undefined ,
        /* angle */     undefined ,
        /* part */      undefined ,
        /* hpmin */     undefined ,
        /* hpmax */     undefined ,
        /* dmgtype */   undefined ,
        /* dmgfx */     undefined ,
        /* brktype */   undefined ,
        /* brkfx */     undefined ,
        /* dmgse */     undefined ,
        /* brkse */     undefined ,
        /* del */       undefined ,
        /* optname */   undefined
        );
        
    l_nukeanim setscriptablepartstate( "explode" , "on" , 0 );
    
    // en : as an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // ja : 指定した座標から半径50000の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    self radiusdamage( location , 50000 , 50000 , 50000 , owner , "MOD_EXPLOSIVE" , "nuke_mp" );
    
    // en : causes an earthquake with a strength of 0.4 for 5 seconds within a radius of 50,000 from the specified coordinates.
    // ja : 指定した座標から半径 50000 の範囲まで、 0.4 の威力の地震を 5秒間 起こす
    earthquake( 0.4 , 5 , location , 50000 );
    wait 5;
    
    // en : as an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // ja : 指定した座標から半径50000の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    self radiusdamage( location , 25000 , 25000 , 25000 , owner , "MOD_EXPLOSIVE" , "nuke_mp" );

    // en : causes an earthquake with a strength of 0.3 for 1 seconds within a radius of 50,000 from the specified coordinates.
    // ja : 指定した座標から半径 50000 の範囲まで、 0.3 の威力の地震を 1秒間 起こす
    earthquake( 0.3 , 1 , location , 50000 );

    // en : when the animation of the created nuclear explosion model finishes playing, delete the object.
    // ja : 作成した核爆発モデルのアニメーション再生が終了したら、オブジェクトを削除する
    wait 25;
    l_nukeanim deleteentity( );
}



//++++++++++++++++++++++++++++++
// en : general function to change the amount of movement of the suboption "tracelength" of the specified function
// ja : 本物のケアパッケージを作成するための汎用関数
//++++++++++++++++++++++++++++++
createrealcarepackage( owner , location , angle )
{
    // en : obtain a random killstreak to be registered in the care package contents.
    // ja : ケアパッケージの中身に登録するキルストリークをランダムで取得する
    l_random = scripts\cp_mp\killstreaks\airdrop::getrandomkillstreak( );
    l_streakinfo = scripts\cp_mp\killstreaks\airdrop::getkillstreakcratedatabystreakname( l_random , 0 );
    // en : create a care package
    // ja : ケアパッケージを作成する
    return scripts\cp_mp\killstreaks\airdrop::createcrate( owner , owner.team , "killstreak" , location , angle , undefined , undefined , [] , l_streakinfo );
}



//++++++++++++++++++++++++++++++
// en : general function to change the amount of movement of the suboption "tracelength" of the specified function
// ja : 指定した機能のサブオプション "tracelength" の移動量を変更する汎用関数
//++++++++++++++++++++++++++++++
changetracesize( name , param , func , notice )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array = [];
    l_array[l_array.size] = 1000000;
    l_array[l_array.size] = 100000;
    l_array[l_array.size] = 50000;
    l_array[l_array.size] = 10000;
    l_array[l_array.size] = 5000;
    l_array[l_array.size] = 2500;
    l_array[l_array.size] = 2000;
    l_array[l_array.size] = 1500;
    l_array[l_array.size] = 1000;
    l_array[l_array.size] = 750;
    l_array[l_array.size] = 500;
    l_array[l_array.size] = 400;
    l_array[l_array.size] = 300;
    l_array[l_array.size] = 250;
    l_array[l_array.size] = 200;
    l_array[l_array.size] = 150;
    l_array[l_array.size] = 100;
    l_array[l_array.size] = 75;
    l_array[l_array.size] = 50;

    self changeselfparameter( name , param , undefined , func , l_array , true , undefined , undefined );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Get list / ID
// ja : リスト / ID 取得
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : get the corresponding weapon id in this game from the specified weapon name.
// ja : 指定した武器名からこのゲーム中に相当する武器idを取得する
//++++++++++++++++++++++++++++++
getbulletid( name )
{
    switch ( name )
    {
        case "rpg7":            return "iw8_la_rpapa7_mp";
        case "lockonmissile1":  return "iw8_la_juliet_mp";
        case "nolockmissile1":  return "iw8_la_kgolf_mp";
        case "nolockmissile2":  return "iw8_la_gromeo_mp";
        case "grenadelauncher": return "iw8_la_mike32_mp";
        case "nuke":            return "nuke_mp";
        case "ksmissile1":      return "toma_proj_mp";
        case "flashgrenade":    return "flash_grenade_mp";
        case "ksmissile1":      return "hover_jet_proj_mp";
        case "ksmissile2":      return "apache_proj_mp";
        case "ksmissile3":      return "white_phosphorus_proj_mp";
        case "ksmissile4":      return "cruise_proj_mp";
        case "ac130_105mm":     return "ac130_105mm_mp";
        case "ac130_40mm":      return "ac130_40mm_mp";
        case "ac130_25mm":      return "ac130_25mm_mp";
        case "frag_grenade":    return "frag_grenade_mp";
        default:                return "iw8_la_gromeo_mp";
    }
}



//++++++++++++++++++++++++++++++
// en : get ammo list
// ja : 弾薬リストを取得する
//++++++++++++++++++++++++++++++
getbulletlist( type )
{
    switch ( type )
    {
        case "allbullet":       return level.lvlstat["wplist_allbt"];
        case "allmissile":      return level.lvlstat["wplist_allms"];
        case "standardmissile": return level.lvlstat["wplist_exp"];
        case "specialmissile":  return level.lvlstat["wplist_ks"];
        case "standardgrenade": return level.lvlstat["wplist_exp"];
        case "allgrenade":      return level.lvlstat["wplist_stdgr"];
        default:                return level.lvlstat["wplist_allbt"];
    }
}



//++++++++++++++++++++++++++++++
// en : get standard model list
// ja : 標準モデルリストを取得する
//++++++++++++++++++++++++++++++
getstandardmodellist( )
{
    return level.lvlstat["modellistall"];
}



//++++++++++++++++++++++++++++++
// en : get standard model list
// ja : 標準乗り物モデルリストを取得する
//++++++++++++++++++++++++++++++
getstandardvehiclemodellist( )
{
    return level.lvlstat["modellistvehicles"];
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Attraction / Large complex Mod generic processing
// ja : アトラクション・大型複合Mod 汎用処理
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : attraction function monitoring process for players on the cabinet
// ja : アトラクション機能の、筐体のプレイヤーに対するモニタリング処理
//++++++++++++++++++++++++++++++
onattractionplayersmonitoring( optname , seatarray , distance , linktype , noweap )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : when the attraction is destroyed, end the processing in this function
    // ja : アトラクションが破壊されたら、この関数内の処理を終了する
    level endon( "end_lobby_" + optname );
    
    l_seat = [];
    // en: add a structure to each seat variable
    // ja: 各 シート 変数に構造体を追加する
    for ( i = 0; i < seatarray.size; i++ )
    {
        l_seat[i] = spawnstruct( );
        l_seat[i].occupied = false;
    }
    l_canemptyseat = true;

    // en : perform infinite loop processing while attraction exists
    // ja : アトラクションが存在する間、無限ループ処理を行う
    while ( isdefined( self ) )
    {
        // en : if there is information that there are vacant seats
        // ja : 空き座席があるという情報がある場合
        if ( l_canemptyseat )
        {
            // en : check the seating status of all seats
            // ja : 全座席の着席状況を調べる
            l_canemptyseat = false;
            for ( i = 0; i < l_seat.size; i++ )
            {
                if ( l_seat[i].occupied == false ) { l_canemptyseat = true; break; }
            }
        }

        // en: get information on all participating players
        // ja: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // en : if there are empty seats
            // ja : 空き座席がある場合
            if ( l_canemptyseat )
            {
                // en: when the distance between the player and attraction is less than specified distance
                // ja: プレイヤー と アトラクション の距離が 指定の距離 未満の時に
                if ( distance( self.origin , player.origin ) < distance )
                {
                    // en: if the player is not yet on board attraction
                    // ja: まだプレイヤーが アトラクション に搭乗していない場合
                    if ( !isdefined( player.optstat[optname + "_ride"] ) )
                    {
                        // en: display the specified text in the center of the screen
                        // ja: 画面中央に指定の文章を表示する
                        player showcentermessage( player.curlang , "notice" , "usetoride" , undefined , undefined , undefined );

                        // en: while the "use" button is pressed
                        // ja: "使用" ボタンが押されている間
                        if ( player getkeycodepressed( "buttonuse" , "buttonuse" ) )
                        {
                            // en: choose seats at random
                            // ja: 座席をランダムで選ぶ
                            l_random = randomintrange( 0 , l_seat.size );
                            
                            // en: if no one is boarding the seat yet
                            // ja: まだその座席に誰も搭乗していない場合
                            if ( l_seat[l_random].occupied == false )
                            {
                                // en: remember the player's coordinates before boarding
                                // ja: プレイヤーの搭乗前の座標を記憶する
                                player.optstat[optname + "_origin"] = player.origin;

                                // en: set player posture to crouching, making prone and running impossible
                                // ja: プレイヤーの姿勢を しゃがみ に設定し、伏せと走りを不可能にする
                                player setstance( "crouch" );
                                player allowsprint( false );
                                player allowprone( false );

                                // en: link (sync) players to seats in attraction
                                // ja: プレイヤーを アトラクション の座席にリンク（同期）する
                                switch ( linktype )
                                {
                                    case "default":     player playerlinkto( seatarray[l_random] ); break;
                                    case "delta":       player playerlinktodelta( seatarray[l_random] ); break;
                                    case "absolute":    player playerlinktoabsolute( seatarray[l_random] , "tag_origin" ); break;
                                }

                                // en: disable the weapon if its use is prohibited
                                // ja: 武器の使用が禁止されている場合、武器を無効化する
                                if ( isdefined( noweap ) )
                                {
                                    player disableweapons( );
                                    player disableoffhandweapons( );
                                }

                                // en: assume that you are currently boarding that seat.
                                // ja: その座席に搭乗中であるとする
                                player.optstat[optname + "_ride"] = l_random;
                                l_seat[l_random].occupied = true;

                                // en: notify players when they board an attraction
                                // ja: プレイヤーがアトラクションに搭乗したことを通知する
                                level notify( optname + "_rideplayer" );
                                player notify( optname + "_rideplayer" );

                                wait 0.5;
                            }
                        }
                    }
                }
            }
            
            // en: if the player is already on board attraction
            // ja: 既にプレイヤーが アトラクション に搭乗している場合
            if ( isdefined( player.optstat[optname + "_ride"] ) )
            {
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                player showcentermessage( player.curlang , "notice" , "usetoride" , undefined , undefined , undefined );

                // en: when the "lethal" button is pressed
                // ja: 「リーサル」ボタンが押されたら
                if ( player getkeycodepressed( "buttonlethal" , "buttonlethal" ) )
                {
                    // en: unlink players and seats
                    // ja: プレイヤーと座席のリンクを解除する
                    player unlink( );

                    // en: set player posture to standing, making prone and running possible
                    // ja: プレイヤーの姿勢を 立ち に設定し、伏せと走りを可能にする
                    player setstance( "stand" );
                    player allowsprint( true );
                    player allowprone( true );
                    
                    // en: return player coordinates to pre-boarding coordinates
                    // ja: プレイヤーの座標を搭乗前の座標に戻す
                    // player setorigin( player.optstat[optname + "_origin"] );
                    
                    // en: activate a weapon if its use was prohibited
                    // ja: 武器の使用が禁止されていた場合、武器を有効化する
                    if ( isdefined( noweap ) )
                    {
                        player enableweapons( );
                        player enableoffhandweapons( );
                    }
                    
                    // en: assume that the seat is not occupied.
                    // ja: その座席に未搭乗であるとする
                    l_seat[player.optstat[optname + "_ride"]].occupied = false;
                    player.optstat[optname + "_ride"] = undefined;
                    player.optstat[optname + "_origin"] = undefined;
                    
                    // en : if there are no empty seats, create an empty seat because the current player got off.
                    // ja : 空き座席が無かった場合、今のプレイヤーが下りたため空き座席を作る
                    if ( !l_canemptyseat ) { l_canemptyseat = true; }

                    // en: notify players when they board an attraction
                    // ja: プレイヤーがアトラクションから降りたことを通知する
                    level notify( optname + "_rideoutplayer" );
                    player notify( optname + "_rideoutplayer" );

                    wait 0.5;
                }
            }
        }

        wait 0.05;
    }
}



//++++++++++++++++++++++++++++++
// en : process for disembarking players who are still boarding the chassis when the specified function is finished
// ja : 指定の機能が終了された時に、まだ筐体に搭乗しているプレイヤーを降車させる処理
//++++++++++++++++++++++++++++++
ondestroydetachplayers( optname )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    
    // en : wait until the specified function is finished
    // ja : 指定の機能が終了されるまで待機する
    level waittill( "end_lobby_" + optname );

    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    foreach( player in level.players )
    {
        // en: if the player is still on board
        // ja: まだプレイヤーが搭乗している場合
        if ( isdefined( player.optstat[optname + "_ride"] ) )
        {
            // en: unlink players and seats
            // ja: プレイヤーと座席のリンクを解除する
            player unlink( );

            // en: set player posture to standing, making prone and running possible
            // ja: プレイヤーの姿勢を 立ち に設定し、伏せと走りを可能にする
            player setstance( "stand" );
            player allowsprint( true );
            player allowprone( true );
            
            // en: activate a weapon
            // ja: 武器を有効化する
            player enableweapons( );
            player enableoffhandweapons( );

            // en: return player coordinates to pre-boarding coordinates
            // ja: プレイヤーの座標を搭乗前の座標に戻す
            // player setorigin( player.optstat[optname + "_origin"] );
            
            // en: assume that the seat is not occupied.
            // ja: その座席に未搭乗であるとする
            player.optstat[optname + "_ride"] = undefined;
            player.optstat[optname + "_origin"] = undefined;
        }
    }

}



//++++++++++++++++++++++++++++++
// en : general-purpose processing that destroys the physical object created when the specified function ends
// ja : 指定した機能が終了された時に 生成された物理オブジェクト を破壊する汎用処理
//++++++++++++++++++++++++++++++
onwaitingdestroyentities( delmode , optname , sfxid , expfxid , discfxid , eqpower , eqtime , eqrange , exptime , delay , lastnuke , nukepoint , owner , objarray , objdelete , listarray , listdelete , dualarray )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    // en : terminate processing when changing the termination method
    // ja : 終了方式を変更する場合に処理を終了する
    level endon( "update_mode_" + optname );

    // en : wait for the specified function to finish
    // ja : 指定した機能が終了されるのを待機する
    level waittill( "end_lobby_" + optname );

    // en : prevent re-creation while being deleted
    // ja : 削除中は再作成できないようにする
    level.lvlstat[optname + "deleting"] = true;

    // en : if the deletion method is random, decide the method randomly
    // ja : 削除方式がランダムの場合は、ランダムで方法を決める
    l_delmode = delmode;
    if ( l_delmode == "random" )
    {
        if ( scripts\engine\utility::cointoss( ) )  { l_delmode = "explode"; }
        else                                        { l_delmode = "discrete"; }
    }

    // en : unlink, perform physical processing, and perform various effects on specified physical objects.
    // ja : 指定した物理オブジェクトに対して、リンクの解除、物理処理、各種エフェクトを実行する
    launchentitydestroyphysics( listarray , listdelete , objarray , objdelete , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , l_delmode , delay , dualarray );

    // en : if a nuclear explosion is specified and if it is an explosive type, a nuclear explosion will occur at the end.
    // ja : 核爆発の指定がある場合、且つ爆破式の場合に、最後に核爆発を起こす
    if ( isdefined( lastnuke ) )
    {
        if ( l_delmode == "explode" )
        {
            owner thread execnuclearexplosion( nukepoint , owner );
        }
    }

    // en : wait for the specified time
    // ja : 指定時間分待機する
    wait delay;
    
    // en : delete the specified physical object
    // ja : 指定した物理オブジェクトを削除する
    foreach ( listdata in listarray )
    {
        deleteentities( listdata    , undefined );
    }
    foreach ( objdata in objarray )
    {
        deleteentities( undefined   , objdata );
    }

    // en : now that the deletion has been completed, it can be recreated.
    // ja : 削除が完了したため再作成できるようにする
    level.lvlstat[optname + "deleting"] = undefined;
}



//++++++++++++++++++++++++++++++
// en : general-purpose processing that removes links, performs physical processing, and performs various effects on specified physical objects.
// ja : 指定した物理オブジェクトに対して、リンクの解除、物理処理、各種エフェクトを実行する汎用処理
//++++++++++++++++++++++++++++++
launchentitydestroyphysics( listarray , listdelete , objarray , objdelete , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , delmode , delay , dualarray )
{
    l_time = 0;

    // en : when the deletion method is discrete
    // ja : 削除方式が離散式の場合
    if ( delmode == "discrete" )
    {
        // en : get random time required for entity to move
        // ja : エンティティが移動するための所要時間をランダムで取得する
        l_time = randomfloatrange( 1 , ( delay + 1 ) );
    }
    
    // en : if object exists
    // ja : オブジェクトが存在する場合
    if ( isdefined( objarray ) )
    {
        for ( i = 0; i < objarray.size; i++ )
        {
            if ( isdefined( level.lvlstat[objarray[i]] ) )
            {
                // en : performs a deletion effect on the specified object according to the specified mode
                // ja : 指定したオブジェクトに対して、指定したモードに応じた削除エフェクトを実行する
                execentitieseffectivity( level.lvlstat[objarray[i]] , objdelete[i] , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , delmode , l_time );
            }
            if ( objdelete[i] == true )
            {
                level.lvlstat[objarray[i]] = undefined;
            }
        }
    }

    // en : if list exists
    // ja : リストが存在する場合
    if ( isdefined( listarray ) )
    {
        // en : if the list format is not a multiple array
        // ja : リスト形式が多重配列ではない場合
        if ( !isdefined( dualarray ) )
        {
            for ( listnum = 0; listnum < listarray.size; listnum++ )
            {
                if ( isdefined( level.lvlstat[listarray[listnum]] ) )
                {
                    // en : for all entities in the list
                    // ja : リスト内の全てのエンティティに対して
                    foreach ( entityobj in level.lvlstat[listarray[listnum]] )
                    {
                        // en : performs a deletion effect on the specified object according to the specified mode
                        // ja : 指定したオブジェクトに対して、指定したモードに応じた削除エフェクトを実行する
                        execentitieseffectivity( entityobj , listdelete[listnum] , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , delmode , l_time );
                    }
                    // en : when deleting the list after deleting the object, destroy the variable
                    // ja : オブジェクト消去後にリストを削除する場合、変数を破棄する
                    if ( listdelete[listnum] == true )
                    {
                        level.lvlstat[listarray[listnum]] = undefined;
                    }
                }
            }
        }
        // en : when list format is multiple array
        // ja : リスト形式が多重配列の場合
        else
        {
            // en : when list format is multiple array
            // ja : リストが存在する場合
            if ( isdefined( level.lvlstat[listarray] ) )
            {
                for ( i = 0; i < level.lvlstat[listarray].size; i++ )
                {
                    // en : for all entities in the list
                    // ja : リスト内の全てのエンティティに対して
                    foreach ( entityobj in level.lvlstat[listarray][i] )
                    {
                        // en : performs a deletion effect on the specified object according to the specified mode
                        // ja : 指定したオブジェクトに対して、指定したモードに応じた削除エフェクトを実行する
                        execentitieseffectivity( entityobj , listdelete , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , delmode , l_time );
                    }
                }
                // en : when deleting the list after deleting the object, destroy the variable
                // ja : オブジェクト消去後にリストを削除する場合、変数を破棄する
                if ( listdelete == true )
                {
                    level.lvlstat[listarray] = undefined;
                }
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// en : performs a deletion effect on the specified object according to the specified mode
// ja : 指定したオブジェクトに対して、指定したモードに応じた削除エフェクトを実行する
//++++++++++++++++++++++++++++++
execentitieseffectivity( obj , listdel , sfxid , expfxid , discfxid , exptime , eqpower , eqtime , eqrange , delmode , time )
{
    // en : unlink (synchronize) entities
    // ja : エンティティのリンク（同期）を解除する
    obj unlink( );

    // en : branch processing depending on deletion method
    // ja : 削除方式によって処理を分岐
    switch ( delmode )
    {
        // en : in case of an explosion on the spot
        // ja : その場で爆発の場合
        case "explode":
            // en : invoke physical processing on an entity
            // ja : エンティティに物理処理を起動する
            obj physicslaunchserver( obj.origin , ( 0 , 0 , 0 ) );
            // en : instantly explode an entity on the spot
            // ja : エンティティをその場で即爆破する
            obj thread launchentityeffectivity( delmode , undefined , sfxid , expfxid , exptime , eqpower , eqtime , eqrange );
            break;
            
        // en : when it explodes after being dispersed
        // ja : 離散してから爆発する場合
        case "discrete":
            // en : get random coordinates for the entity to move to
            // ja : エンティティが移動する先の座標をランダムで取得する
            l_endlocation = obj.origin + ( randomintrange( -5000 , 5000 ) , randomintrange( -5000 , 5000 ) , randomintrange( 1000 , 10000 ) );
            // en : get the angle to which the entity moves
            // ja : エンティティが移動する先の角度を取得する
            l_angle = vectortoangles( l_endlocation - obj.origin );
            // en : move an entity to the specified coordinates over the specified time
            // ja : エンティティを指定の座標に、指定の時間をかけて移動させる
            obj moveto( l_endlocation , time );
            // en : rotate an entity to a specified angle and for a specified amount of time
            // ja : エンティティを指定の角度に、指定の時間をかけて回転させる
            obj rotateto( l_angle , time );
            // en : blow up an entity after moving it into the air
            // ja : エンティティを空中に移動後に爆破する
            obj thread launchentityeffectivity( delmode , time , sfxid , discfxid , exptime , eqpower , eqtime , eqrange );
            break;
    }

    // en : wait for the specified time
    // ja : 指定時間分待機する
    wait exptime;
    // en : if you want to delete objects in that list now, delete
    // ja : そのリスト内のオブジェクトをこの場で削除する場合、削除する
    if ( listdel == true )
    {
        obj deleteentity( );
    }
}



//++++++++++++++++++++++++++++++
// en : executes various effects on the specified object after the specified number of seconds has elapsed.
// ja : 指定したオブジェクトに対して、指定秒数経過後に各種エフェクトを実行する
//++++++++++++++++++++++++++++++
launchentityeffectivity( delmode , time , sfxid , fxid , exptime , eqpower , eqtime , eqrange )
{
    // en : wait if a time is specified
    // ja : 時間指定がある場合、待機する
    if ( isdefined( time ) )
    {
        wait time;
    }

    // en : play the specified sound effect
    // ja : 指定したサウンドエフェクトを再生する
    playsoundatpos( self.origin , sfxid );
    // en : causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
    // ja : 指定した座標 から 指定した半径の範囲 まで 指定した威力の地震 を 指定した秒数 起こす
    earthquake( eqpower , eqtime , self.origin , eqrange );
    // en : play the specified effect
    // ja : 指定したエフェクトを再生する
    self thread playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ fxid , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ self.origin , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    
    // en : if it is a discrete type, delete it after playing the effect.
    // ja : 離散式の場合、エフェクト再生後に削除する
    if ( delmode == "discrete" )
    {
        wait 0.01;
        self deleteentity( );
    }
}



//++++++++++++++++++++++++++++++
// en : delete the specified physical object
// ja : 指定した物理オブジェクトを削除する
//++++++++++++++++++++++++++++++
deleteentities( listdata , objdata )
{
    // en : if list exists
    // ja : リストが存在する場合
    if ( isdefined( listdata ) )
    {
        if ( isdefined( level.lvlstat[listdata] ) )
        {
            // en : for all entities in the list
            // ja : リスト内の全てのエンティティに対して
            foreach ( entityobj in level.lvlstat[listdata] )
            {
                // en : delete an entity
                // ja : エンティティを削除する
                entityobj deleteentity( );
            }
            level.lvlstat[listdata] = undefined;
        }
    }
    
    // en : if object exists
    // ja : オブジェクトが存在する場合
    if ( isdefined( objdata ) )
    {
        if ( isdefined( level.lvlstat[objdata] ) )
        {
            // en : delete an entity
            // ja : エンティティを削除する
            level.lvlstat[objdata] deleteentity( );
            level.lvlstat[objdata] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// en : after waiting the specified number of seconds, generate the specified model at the specified coordinates and angle.
// ja : 指定した秒数分待機した後、指定したモデルを、指定した座標・角度で生成する
//++++++++++++++++++++++++++++++
modelspawner( origin , modelid , angles , time , collision )
{
    if( isdefined( time ) ) { wait time; }

    obj = self createentityobject(
        /* notice */ undefined , /* point */ origin , /* length */ undefined , /* script */ "script_model" , /* model */ modelid , /* collide */ true , /* sync */ undefined , /* angle */ angles , /* part */ true ,
        /* hpmin */ undefined , /* hpmax */ undefined , /* dmgtype */ undefined , /* dmgfx */ undefined , /* brktype */ undefined , /* brkfx */ undefined , /* dmgse */ undefined , /* brkse */ undefined , /* enddel */ undefined , /* name */ undefined
        );

    if ( getentarray( ).size >= 2000)
    {
        self iprintlnbold( "^1error^7: please delete some other structures" );
        obj deleteentity( );
    }

    return obj;
}



//++++++++++++++++++++++++++++++
// en : create multiple specified models by shifting them at the specified angle at the same time.
// ja : 指定したモデルを、指定した角度で、複数同時にずらして作成する
//++++++++++++++++++++++++++++++
spawnmultiplemodels( origin , p1 , p2 , p3 , xx , yy , zz , model , angles , length , time )
{
	l_array = [];
	for ( a = 0; a < p1; a++ ) for ( b = 0; b < p2; b++ ) for ( c = 0; c < p3; c++ )
	{
		l_array[l_array.size] = self createentityobject(
            /* notice */    undefined ,
            /* point */     undefined , //( origin[0] + ( a * xx ) , origin[1] + ( b * yy ) , origin[2] + ( c * zz ) ) ,
            /* length */    ( length * ( b + 1 ) ) ,
            /* script */    "script_model" , 
            /* model */     model ,
            /* collide */   true ,
            /* sync */      undefined ,
            /* angle */     angles ,
            /* part */      true ,
            /* hpmin */     undefined ,
            /* hpmax */     undefined ,
            /* dmgtype */   undefined ,
            /* dmgfx */     undefined ,
            /* brktype */   undefined ,
            /* brkfx */     undefined ,
            /* dmgse */     undefined ,
            /* brkse */     undefined ,
            /* del */       undefined ,
            /* optname */   undefined
            );

		wait time;

	}

	return l_array;
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Player permission system
// ja : プレイヤー権限システム
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : revoke mod menu privileges (set unverified)
// ja : モッドメニューの権限を剥奪する（未承認に設定）
//++++++++++++++++++++++++++++++
removeauthunverified( )
{
    self thread changeauth( self.modsystem.menuplayer , 0 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions to "verified"
// ja : モッドメニューの権限を「承認者」に設定する
//++++++++++++++++++++++++++++++
giveauthverified( )
{
    self thread changeauth( self.modsystem.menuplayer , 1 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions to "vip"
// ja : モッドメニューの権限を "要人" に設定する
//++++++++++++++++++++++++++++++
giveauthvip( )
{
    self thread changeauth( self.modsystem.menuplayer , 2 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions to "admin"
// ja : モッドメニューの権限を「管理者」に設定する
//++++++++++++++++++++++++++++++
giveauthadmin( )
{
    self thread changeauth( self.modsystem.menuplayer , 3 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions to "co-host"
// ja : モッドメニューの権限を「副ホスト」に設定する
//++++++++++++++++++++++++++++++
giveauthcohost( )
{
    self thread changeauth( self.modsystem.menuplayer , 4 );
}



//++++++++++++++++++++++++++++++
// en : changes the mod menu permissions of the specified player to the specified permissions.
// ja : 指定したプレイヤーのモッドメニューの権限を、指定した権限に変更する
//++++++++++++++++++++++++++++++
changeauth( targetuser , authlevel )
{
    // en: if the player to be operated is the host, issue a warning that the operation cannot be performed and end the process.
    // ja: 操作する対象のプレイヤーがホストの場合は、操作できない警告をして処理を終了する
    if ( level.players[targetuser] ishost( ) )
    {
        self showcentermessage( self.curlang , "notice" , "cannothost" , undefined , undefined , undefined );
        return;
    }

    // en: get translations of assigned permissions
    // ja: 割り当てられた権限の翻訳を取得する
    l_textlevel = getmttext( self.curlang , getverifiedtext( authlevel ) );
    
    // en: display the text "set [notification] permission: [permission name] player name" for yourself in the center of the screen.
    // ja: 自分に対して "[通知] 権限を設定 : [権限名]プレイヤー名" という文章を、画面中央に表示する
    self showcentermessage( self.curlang , "notice" , "setmenustatus" , undefined , l_textlevel + level.players[targetuser].name , undefined );

    // en: assign specified permissions to the selected player
    // ja: 選択中のプレイヤーに対して、指定した権限を割り当てる
    level.players[targetuser] thread setauth( authlevel );
}



//++++++++++++++++++++++++++++++
// en : assign specified permissions
// ja : 指定した権限を割り当てる
//++++++++++++++++++++++++++++++
setauth( verificationlevel )
{
    lv_unverified = 0;
    value_root = 0;

    // en: if the newly specified permissions are lower than the currently set permissions
    // ja: 新しく指定された権限が、今設定されている権限よりも低い場合
    if ( verificationlevel < self.verificationstatusindex )
    {
        // en: commit suicide
        // ja: 自分を自殺させる
        self suicide( );

        // en: wait 0.31 seconds for mod menu to close
        // ja: モッドメニューが閉じられるまで 0.31秒間 待機する
        wait 0.31;
    }
    
    // en: change to specified permissions
    // ja: 指定された権限に変更する
    self.verificationstatusindex = verificationlevel;
    
    // en: if the specified authority is "unverified" or higher
    // ja: 指定された権限が「未承認」以上の場合
    if ( lv_unverified < verificationlevel )
    {
        //// en: if variables related to the mod menu are not created
        //// ja: モッドメニューに関する変数が作られていない場合
        //if ( !isdefined( self.modsystem.menuactive ) )
        //{
        //    // en: create a variable that only you will use while processing the mod
        //    // ja: 自分のみがmodの処理中に使う変数を作成する
        //    self initializeselfdata( );
        //    // en: start button monitoring process
        //    // ja: ボタンモニタリング処理を開始する
        //    self thread scripts\mp\art::onbuttonmonitoring( );
        //    // en : display a "welcome" message
        //    // ja : 「ようこそ」メッセージを表示する
        //    self showwelocomemessage( );
        //}
        //// en: if a variable related to the mod menu is created
        //// ja: モッドメニューに関する変数が作られている場合
        //else
        //{
        //}
        
        // en: if the mod menu is currently open
        // ja: 今現在モッドメニューを開いている場合
        if ( self.modsystem.menuactive )
        {
            // en: close mod menu
            // ja: モッドメニューを閉じる
            self modmenuclose( 0.2 );

            // en: issue a "removeauth" event to yourself (this will end the looping function)
            // ja: 自分に対して「removeauth」イベントを発行する（これでループ処理している関数が終了する）
            self notify( "removeauth" );

            // en: waits for only 1 frame as it waits for the update process to finish.
            // ja: 更新処理の終了待ちの為 1フレーム のみ待機する
            wait 0.001;

            // en: initialize the selection, hierarchy, and depth of the mod menu
            // ja: モッドメニューの選択箇所、階層、深度を初期化する
            self.modsystem.menulayercurrent     = value_root;
            self.modsystem.menuoptioncurrent    = value_root;
            self.modsystem.menulayerdepth       = value_root;

        }
        
        // en : display a "welcome" message
        // ja : 「ようこそ」メッセージを表示する
        self showwelocomemessage( );
            
        // en: start button monitoring process
        // ja: ボタンモニタリング処理を開始する
        self thread onbuttonmonitoring( );
    }
    // en: if the specified authority is "unverified"
    // ja: 指定された権限が「未承認」の場合
    else
    {
        //// en: if a variable related to the mod menu is created
        //// ja: モッドメニューに関する変数が作られている場合
        //if ( isdefined( self.modsystem.menuactive ) )
        //{
        //}
        // en : destroy variables that only you use while processing a mod
        // ja : 自分のみがmodの処理中に使う変数を破棄する
        self finalizeselfdata( );
    }
}



//++++++++++++++++++++++++++++++
// en : assign specified permissions to all players
// ja : 指定した権限を全プレイヤーに割り当てる
//++++++++++++++++++++++++++++++
changeauthallplayers( authlevel )
{
    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    for ( targetuser = 0; targetuser < level.players.size; targetuser++ )
    {
        // en : assign specified permissions to all players
        // ja : 指定した権限を全プレイヤーに割り当てる
        self thread changeauth( targetuser , authlevel );
    }
}



//++++++++++++++++++++++++++++++
// en : remove mod menu privileges from all players (set to unauthorized)
// ja : 全プレイヤーのモッドメニューの権限を剥奪する（未承認に設定）
//++++++++++++++++++++++++++++++
removeauthunverifiedforallplayers( )
{
    self thread changeauthallplayers( 0 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions for all players to "verified"
// ja : 全プレイヤーのモッドメニューの権限を "承認者" に設定する
//++++++++++++++++++++++++++++++
giveauthverifiedforallplayers( )
{
    self thread changeauthallplayers( 1 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions for all players to "vip"
// ja : 全プレイヤーのモッドメニューの権限を "要人" に設定する
//++++++++++++++++++++++++++++++
giveauthvipforallplayers( )
{
    self thread changeauthallplayers( 2 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions for all players to "admin"
// ja : 全プレイヤーのモッドメニューの権限を "管理者" に設定する
//++++++++++++++++++++++++++++++
giveauthadminforallplayers( )
{
    self thread changeauthallplayers( 3 );
}



//++++++++++++++++++++++++++++++
// en : set mod menu permissions for all players to "co-host"
// ja : 全プレイヤーのモッドメニューの権限を "副ホスト" に設定する
//++++++++++++++++++++++++++++++
giveauthcohostforallplayers( )
{
    self thread changeauthallplayers( 4 );
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Other generic functions
// ja : その他汎用関数
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : change language
// ja : 言語を変更する
//++++++++++++++++++++++++++++++
changelanguageenforallplayers( )
{
    ln_en = level.moddef.ln_en;

    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    for ( targetuser = 0; targetuser < level.players.size; targetuser++ )
    {
        // en: if the target player is the host, proceed to the next player without processing.
        // ja: 操作する対象のプレイヤーがホストの場合は、処理せずに次のプレイヤーに進む
        if ( level.players[targetuser] ishost( ) )
        {
            level.players[targetuser] showcentermessage( self.curlang , "notice" , "cannothost" , undefined , undefined , undefined );
            continue;
        }

        // en: change current language to english
        // ja: 現在の言語を英語に変更する
        level.players[targetuser].curlang = ln_en;

        if ( isdefined( level.players[targetuser].modsystem ) && ( level.players[targetuser].modsystem.menuactive == true ) )
        {
            // en: update the text displayed in the mod menu
            // ja: モッドメニューの表示するテキストを更新する
            level.players[targetuser] thread modmenutextupdate( );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : change language
// ja : 言語を変更する
//++++++++++++++++++++++++++++++
changelanguagejaforallplayers( )
{
    ln_ja = 1;

    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    for ( targetuser = 0; targetuser < level.players.size; targetuser++ )
    {
        // en: if the target player is the host, proceed to the next player without processing.
        // ja: 操作する対象のプレイヤーがホストの場合は、処理せずに次のプレイヤーに進む
        if ( level.players[targetuser] ishost( ) )
        {
            level.players[targetuser] showcentermessage( self.curlang , "notice" , "cannothost" , undefined , undefined , undefined );
            continue;
        }

        // en: change current language to japanese
        // ja: 現在の言語を日本語に変更する
        level.players[targetuser].curlang = ln_ja;

        if ( isdefined( level.players[targetuser].modsystem ) && ( level.players[targetuser].modsystem.menuactive == true ) )
        {
            // en: update the text displayed in the mod menu
            // ja: モッドメニューの表示するテキストを更新する
            level.players[targetuser] thread modmenutextupdate( );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : generic function to teleport players
// ja : プレイヤーをテレポートさせるための汎用関数
//++++++++++++++++++++++++++++++
execteleportto( user1 , user2 )
{
    // en: if the target player is the same, the operation will not be possible and the process will end.
    // ja: 操作する対象のプレイヤーが同一の場合、操作できないため処理を終了する
    if ( user1 == user2 )
    {
        return;
    }

    // en : teleports the specified opponent to the specified opponent's coordinates.
    // ja : 指定した相手を、指定した相手の座標にテレポートさせる
    user1 setorigin( user2.origin );

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    user1 showcentermessage( user1.curlang , "notice" , "teleporttohim" , undefined , user2.name , undefined );
    user2 showcentermessage( user2.curlang , "notice" , "teleporttome"  , undefined , user1.name , undefined );
}



//++++++++++++++++++++++++++++++
// en : display text when an item with an unimplemented function is selected
// ja : 未実装機能の項目が選択された時に文章を表示する
//++++++++++++++++++++++++++++++
unimplementedfunction( )
{
    self showcentermessage( self.curlang , "notice" , "unimplementedfunction" , undefined , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : empty function that displays nothing
// ja : 何も表示しない空の関数
//++++++++++++++++++++++++++++++
emptyfunction( )
{

}


//++++++++++++++++++++++++++++++
// en : teleport the opponent to your location
// ja : 相手を自分の場所にテレポートさせる
//++++++++++++++++++++++++++++++
execteleporttomesingle( )
{
    execteleportto( level.players[self.modsystem.menuplayer] , self );
}



//++++++++++++++++++++++++++++++
// en : teleport yourself to the other person's location
// ja : 自分を相手の場所にテレポートさせる
//++++++++++++++++++++++++++++++
execteleporttohimsingle( )
{
    execteleportto( self , level.players[self.modsystem.menuplayer] );
}



//++++++++++++++++++++++++++++++
// en : teleport all players to your location
// ja : 全プレイヤーを自分の場所にテレポートさせる
//++++++++++++++++++++++++++++++
execteleporttomeforallplayers( )
{
    // en: get information on all participating players
    // ja: 参加中の全プレイヤー情報を取得
    for ( targetuser = 0; targetuser < level.players.size; targetuser++ )
    {
        execteleportto( level.players[targetuser] , self );
    }
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Other various mods
// ja : その他各種 Mod
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //




//++++++++++++++++++++++++++++++
// en : for test function
// ja : テスト用関数
//++++++++++++++++++++++++++++++
exectestfunc( )
{
    self iprintlnbold( "^5this is a test function!" );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "testloopfunc"
// ja : 機能 "testloopfunc" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onftestloopfunc( )
{
    // en : execute exectestloopfunc( ) or exit depending on the existence state of the "testloopfunc" variable
    // ja : "testloopfunc" 変数の存在状態に合わせて、 exectestloopfunc( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "testloopfunc" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "testloopfunc" ,
        /* optarg2 */   /* optfunc */   ::exectestloopfunc ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "testloopfunc"
// ja : 機能 "testloopfunc" の実行中の処理
//++++++++++++++++++++++++++++++
exectestloopfunc( optname , procstage )
{
    switch ( procstage )
    {
        // en: initialization process
        // ja: 初期化処理
        case 0:
            self iprintlnbold( "^3exectestloopfunc ^2initialization process" );
            wait 4;
            break;
            
        // en: running process
        // ja: 実行中処理
        case 1:
            self iprintlnbold( "^3exectestloopfunc ^5running process" );
            break;
            
        // en: end processing
        // ja: 終了処理
        case 2:
            self iprintlnbold( "^3exectestloopfunc ^1end processing" );
            break;
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "norecoil"
// ja : 機能 "norecoil" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfnorecoil( )
{
    // en : execute execnorecoil( ) or exit depending on the existence state of the "norecoil" variable
    // ja : "norecoil" 変数の存在状態に合わせて、 execnorecoil( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "norecoil" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "norecoil" ,
        /* optarg2 */   /* optfunc */   ::execnorecoil ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "norecoil"
// ja : 機能 "norecoil" の実行中の処理
//++++++++++++++++++++++++++++++
execnorecoil( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        self.optstat[optname + "kickscale"] = self getviewkickscale( );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: eliminate recoil when firing a gun
        // ja: 銃発砲時の反動を無くす
        self player_recoilscaleon( 0 );
        self setviewkickscale( 0 );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: enable recoil when firing a gun
        // ja: 銃発砲時の反動を有効にする
        self player_recoilscaleon( 100 );
        self setviewkickscale( self.optstat[optname + "kickscale"] );

        self.optstat[optname + "kickscale"] = undefined;
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "thirdperson"
// ja : 機能 "thirdperson" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfthirdperson( )
{
    // en : execute execthirdperson( ) or exit depending on the existence state of the "thirdperson" variable
    // ja : "thirdperson" 変数の存在状態に合わせて、 execthirdperson( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "thirdperson" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "thirdperson" ,
        /* optarg2 */   /* optfunc */   ::execthirdperson ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "thirdperson" for the specified player.
// ja : 指定したプレイヤーに対して、機能 "thirdperson" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfthirdpersonforplayer( )
{
    self switchonfplayerfunction( "thirdperson" , ::onfthirdperson );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "thirdperson" for the all players.
// ja : 全プレイヤーに対して、機能 "thirdperson" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfthirdpersonforallplayers( )
{
    self thread switchonfallplayersfunction( "thirdperson" , ::onfthirdperson , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "thirdperson"
// ja : 機能 "thirdperson" の実行中の処理
//++++++++++++++++++++++++++++++
execthirdperson( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {

    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        self setcamerathirdperson( true );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        self setcamerathirdperson( false );
    }
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "freezeplayer" for the all players.
// ja : 全プレイヤーに対して、機能 "freezeplayer" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onffreezeplayerforallplayers( )
{
    self thread switchonfallplayersfunction( "freezeplayer" , ::onffreezeplayer , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "freezeplayer"
// ja : 機能 "freezeplayer" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onffreezeplayer( )
{
    // en : execute execfreezeplayer( ) or exit depending on the existence state of the "freezeplayer" variable
    // ja : "freezeplayer" 変数の存在状態に合わせて、execfreezeplayer( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "freezeplayer" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "freezeplayer" ,
        /* optarg2 */   /* optfunc */   ::execfreezeplayer ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "freezeplayer"
// ja : 機能 "freezeplayer" の実行中の処理
//++++++++++++++++++++++++++++++
execfreezeplayer( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        self freezecontrols( true );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        self freezecontrols( false );
    }
}



//++++++++++++++++++++++++++++++
// en : commit suicide
// ja : 自殺する
//++++++++++++++++++++++++++++++
execsuicide( )
{
    // en: commit suicide
    // ja: 自分を自殺させる
    self suicide( );
}



////++++++++++++++++++++++++++++++
//// en : give specified perk
//// ja : 指定のパークを与える
////++++++++++++++++++++++++++++++
//execgiveperk( )
//{
//    // en : get the perk id from the currently open menu hierarchy and selected item.
//    // ja : 現在開いているメニュー階層、選択中の項目から、パークidを取得
//    l_perkid = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam;
//
//    // en : if you do not have the specified park
//    // ja : 指定のパークを持っていない場合
//    if ( self scripts\mp\utility\perk::_hasperk( l_perkid ) == false )
//    {
//        // en : give specified perk
//        // ja : 指定のパークを与える
//        self thread scripts\mp\perks\perks::_setperk( l_perkid );
//
//        // en: display the specified text in the center of the screen
//        // ja: 画面中央に指定の文章を表示する
//        self showcentermessage( self.curlang , "enabled" , "giveperk" , undefined , l_perkid , undefined );
//    }
//    // en : if you have the specified perk
//    // ja : 指定のパークを持っている場合
//    else
//    {
//        // en : delete the specified park
//        // ja : 指定のパークを削除する
//        self thread scripts\mp\perks\perks::_unsetperk( l_perkid );
//
//        // en: display the specified text in the center of the screen
//        // ja: 画面中央に指定の文章を表示する
//        self showcentermessage( self.curlang , "disabled" , "clearperk" , undefined , l_perkid , undefined );
//    }
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : delete all parks
//// ja : 全パークを削除する
////++++++++++++++++++++++++++++++
//execclearallperks( )
//{
//    self thread scripts\mp\perks\perks::_clearperks( );
//
//    // en: display the specified text in the center of the screen
//    // ja: 画面中央に指定の文章を表示する
//    self showcentermessage( self.curlang , "disabled" , "clearallperks" , undefined , undefined , undefined );
//}



//++++++++++++++++++++++++++++++
// en : set the specified image quality
// ja : 指定の画質を設定する
//++++++++++++++++++++++++++++++
execsetvision( )
{
    l_visionid      = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].textid;
    l_visiontype    = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam;

    self visionsetkillstreakforplayer( "" );
    self visionsetthermalforplayer( "" );
    self visionsetnakedforplayer( "" , 0.0 );

    switch ( l_visiontype )
    {
        case "default": l_visionid = l_visiontype; break;
        case "ks":      self visionsetkillstreakforplayer( l_visionid ); break;
        case "naked":   self visionsetnakedforplayer( l_visionid ); break;
        case "thermal": self visionsetthermalforplayer( l_visionid ); break;
    }

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , "setvision" , undefined , l_visionid , undefined );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "outofmappossible"
// ja : 機能 "outofmappossible" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfoutofmappossible( )
{
    // en : execute execoutofmappossible( ) or exit depending on the existence state of the "outofmappossible" variable
    // ja : "outofmappossible" 変数の存在状態に合わせて、 execoutofmappossible( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "outofmappossible" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "outofmappossible" ,
        /* optarg2 */   /* optfunc */   ::execoutofmappossible ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "outofmappossible"
// ja : 機能 "outofmappossible" の実行中の処理
//++++++++++++++++++++++++++++++
execoutofmappossible( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        if ( !isdefined( self.oobimmunity ) )
        {
            scripts\mp\outofbounds::enableoobimmunity( self );
        }
        
        // en: if the player is in a vehicle
        // ja: プレイヤーが乗り物に乗っている場合
        if ( self scripts\cp_mp\utility\player_utility::isinvehicle( ) )
        {
            self.optstat[optname].curvehicle = self scripts\cp_mp\utility\player_utility::getvehicle( );
            scripts\mp\outofbounds::enableoobimmunity( self.optstat[optname].curvehicle );
        }
        // en: if the player is not in a vehicle
        // ja: プレイヤーが乗り物に乗っていない場合
        else
        {
            if ( isdefined( self.optstat[optname].curvehicle ) )
            {
                scripts\mp\outofbounds::disableoobimmunity( self.optstat[optname].curvehicle );
                self.optstat[optname].curvehicle = undefined;
            }
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        scripts\mp\outofbounds::disableoobimmunity( self );
        
        if ( isdefined( self.optstat[optname].curvehicle ) )
        {
            scripts\mp\outofbounds::disableoobimmunity( self.optstat[optname].curvehicle );
            self.optstat[optname].curvehicle = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "outofmappossible" for the specified player.
// ja : 指定したプレイヤーに対して、機能 "outofmappossible" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfoutofmappossibleforplayer( )
{
    self switchonfplayerfunction( "outofmappossible" , ::onfoutofmappossible );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "outofmappossible" for the all players.
// ja : 全プレイヤーに対して、機能 "outofmappossible" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfoutofmappossibleforallplayers( )
{
    self thread switchonfallplayersfunction( "outofmappossible" , ::onfoutofmappossible , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "ninjamode"
// ja : 機能 "ninjamode" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfninjamode( )
{
    // en : execute execninjamode( ) or exit depending on the existence state of the "ninjamode" variable
    // ja : "ninjamode" 変数の存在状態に合わせて、 execninjamode( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "ninjamode" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "ninjamode" ,
        /* optarg2 */   /* optfunc */   ::execninjamode ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "ninjamode"
// ja : 機能 "ninjamode" の実行中の処理
//++++++++++++++++++++++++++++++
execninjamode( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        self setcamerathirdperson( true );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        l_clone = self cloneplayer( 9999999 );
        wait 0.1;
        l_clone thread deleteaftertime( 2 );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        self setcamerathirdperson( false );
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "jetpack"
// ja : 機能 "jetpack" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfjetpack( )
{
    // en : execute execjetpack( ) or exit depending on the existence state of the "jetpack" variable
    // ja : "jetpack" 変数の存在状態に合わせて execjetpack( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "jetpack" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "jetpack" ,
        /* optarg2 */   /* optfunc */   ::execjetpack ,
        /* optarg3 */   /* looptime */  0.1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "jetpack"
// ja : 機能 "jetpack" の実行中の処理
//++++++++++++++++++++++++++++++
execjetpack( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        self setcamerathirdperson( true );
        self attach( "wmd_vm_missile_cruise" , "tag_stowed_back3" );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: when the "jump" button is pressed
        // ja: 「ジャンプ」ボタンが押されたら
        if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
        {
            // en : play a sound effect starting from the specified coordinates
            // ja : 指定した座標を起点に、サウンドエフェクトを再生させる
            playsoundatpos( self.origin , "ks_a10_fire_dist_crack" );
            // en : play the effect starting from the specified coordinates
            // ja : 指定した座標を起点に、エフェクトを再生させる
            playeffecttoobject( /* time */ undefined , /* obj */ self , /* fx */ "hoopty_explode" , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ self.origin , /* fix */ undefined , /* angle */ "up" , /* range */ -70 , /* stop */ undefined );
            // playeffecttoobject( /* time */ undefined , /* obj */ self , /* fx */ "hoopty_explode" , /* tag */ "j_ankle_le" , /* type */ "getplay" , /* loop */ undefined , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
            // en : causes an earthquake of the specified strength from the specified coordinates to the specified radius for the specified number of seconds.
            // ja : 指定した座標から、指定した半径の範囲まで、指定した威力の地震を、指定した秒数間起こす
            earthquake( 0.15 , 0.2 , self gettagorigin( "j_spine4" ) , 300 );
            // en : move the angular velocity directly upwards
            // ja : 角速度を真上に向けて移動させる
            self setvelocity( self getvelocity( ) + ( 0 , 0 , 100 ) );
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        self setcamerathirdperson( false );
        self detach( "wmd_vm_missile_cruise" , "tag_stowed_back3" );
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "superslide"
// ja : 機能 "superslide" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfsuperslide( )
{
    // en : execute execsuperslide( ) or exit depending on the existence state of the "superslide" variable
    // ja : "superslide" 変数の存在状態に合わせて、 execsuperslide( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "superslide" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "superslide" ,
        /* optarg2 */   /* optfunc */   ::execsuperslide ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "superslide"
// ja : 機能 "superslide" の実行中の処理
//++++++++++++++++++++++++++++++
execsuperslide( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        self.optstat[optname].start = false;
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: if super slide is not executed
        // ja: スーパースライドが未実行の場合
        if ( !self.optstat[optname].start )
        {
            // en: flag when sliding starts
            // ja: スライディングが開始されたらフラグを立てる
            if ( self issprintsliding( ) )
            {
                self.optstat[optname].start = true;
            }
        }
        else
        {
            // en: get movement speed
            // ja: 移動速度を取得
            l_velocity = self getvelocity( );
            
            // en: when movement speed decreases
            // ja: 移動速度が低下した場合
            if ( ( l_velocity[0] < 100 ) || ( l_velocity[1] < 100 ) )
            {
                // en: when movement speed decreases
                // ja: 移動速度が低下した場合
                l_addvelocity = anglestoforward( self getplayerangles( ) ) * 125;
                self setvelocity( l_velocity + l_addvelocity );
            }

            // en: when the "jump" button is pressed
            // ja: 「ジャンプ」ボタンが押されたら
            if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
            {
                self.optstat[optname].start = false;
                wait 1;
            }
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        
    }
}



////++++++++++++++++++++++++++++++
//// en : switch the enable/disable state of the function "saveloadlocation"
//// ja : 機能 "saveloadlocation" の有効/無効を切り替える
////++++++++++++++++++++++++++++++
//onfsaveloadlocation( )
//{
//    // en : execute execsaveloadlocation( ) or exit depending on the existence state of the "saveloadlocation" variable
//    // ja : "saveloadlocation" 変数の存在状態に合わせて、 execsaveloadlocation( )関数 を実行するか終了する
//    self switchonfselffunction(
//        /* optname */                   "saveloadlocation" ,
//        /* optfunc */                   ::execloopfunction ,
//        /* message */                   undefined ,
//        /* optarg1 */   /* optname */   "saveloadlocation" ,
//        /* optarg2 */   /* optfunc */   ::execsaveloadlocation ,
//        /* optarg3 */   /* looptime */  0.05 ,
//        /* optarg4 */                   undefined ,
//        /* optarg5 */                   undefined ,
//        /* optarg6 */                   undefined ,
//        /* optarg7 */                   undefined ,
//        /* weaponid */                  undefined ,
//        /* inprojectile */              undefined ,
//        /* onlygroup */                 undefined ,
//        /* attachmentid */              undefined ,
//        /* camoid */                    undefined ,
//        /* camogroup */                 undefined ,
//        /* dualmode */                  undefined
//        );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : processing during execution of the function "saveloadlocation"
//// ja : 機能 "saveloadlocation" の実行中の処理
////++++++++++++++++++++++++++++++
//execsaveloadlocation( optname , procstage )
//{
//    // en: initialization process
//    // ja: 初期化処理
//    if ( procstage == 0 /* moddef.mod_initialize */ )
//    {
//    }
//    // en: running process
//    // ja: 実行中処理
//    else if ( procstage == 1 /* moddef.mod_processing*/ )
//    {
//        // en: while the tactical throw button is pressed
//        // ja: タクティカルを投げるボタンが押されている間
//        if ( self getkeycodepressed( "buttontactical" , "buttontactical" ) )
//        {
//            // en: when the "jump" button is pressed
//            // ja: 「ジャンプ」ボタンが押されたら
//            if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
//            {
//                // en: remember your current coordinates
//                // ja: 今いる座標を記憶する
//                self.optstat[optname].moddata["location"] = self.origin;
//                // en: display the specified text in the center of the screen
//                // ja: 画面中央に指定の文章を表示する
//                self showcentermessage( self.curlang , "notice" , "savelocation" , undefined , self.origin , undefined );
//                wait 0.3;
//            }
//            // en: when the "crouch/prone" button is pressed
//            // ja: 「しゃがみ・伏せ」ボタンが押されたら
//            else if ( self getkeycodepressed( "buttonstance" , "buttonstance" ) )
//            {
//                // en: if the coordinates are memorized, move to those coordinates.
//                // ja: 座標が記憶されていれば、その座標に移動する
//                if ( isdefined( self.optstat[optname].moddata["location"] ) )
//                {
//                    self setorigin( self.optstat[optname].moddata["location"] );
//                    // en: display the specified text in the center of the screen
//                    // ja: 画面中央に指定の文章を表示する
//                    self showcentermessage( self.curlang , "notice" , "loadlocation" , undefined , self.optstat[optname].moddata["location"] , undefined );
//                    wait 0.3;
//                }
//            }
//        }
//    }
//    // en: end processing
//    // ja: 終了処理
//    else if ( procstage == 2 /* moddef.mod_finalize */ )
//    {
//    }
//}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "setmodel"
// ja : 機能 "setmodel" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfsetmodel( )
{
    // en : execute execsetmodel( ) or exit depending on the existence state of the "setmodel" variable
    // ja : "setmodel" 変数の存在状態に合わせて、 execsetmodel( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "setmodel" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "setmodel" ,
        /* optarg2 */   /* optfunc */   ::execsetmodel ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "synccenterbody" of function "setmodel"
// ja : 機能 "setmodel" のサブオプション "synccenterbody" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfsetmodelsynccenterbody( )
{
    // en : create or destroy a "synccenterbody" variable
    // ja : "synccenterbody" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "setmodel" ,
        /* optname2 */  "synccenterbody" ,
        /* optdata */   true ,
        /* optfunc */   ::resyncsetmodel ,
        /* notice */    true ,
        /* optarg1 */   "setmodel" ,
        /* optarg2 */   "synccenterbody" ,
        /* optarg3 */   "_objectdata",
        /* optarg4 */   "_objectlinked" ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : change the 3d model synchronization position of the function "setmodel"
// ja : 機能 "setmodel" の3dモデルの同期位置を変更する
//++++++++++++++++++++++++++++++
resyncsetmodel( optname , subparam , objname , linkname )
{
    // en : if a 3d model already exists
    // ja : 既に3dモデルが存在している場合
    if ( isdefined( self.optstat[optname + objname] ) )
    {
        l_noclipbase = "bindnoclip";
        l_nocliplink = "linkobject";

        // en: if the object used for flight processing has already been generated
        // ja: 飛行処理に使うオブジェクトが生成済みの場合
        if ( isdefined( self.optstat[l_noclipbase + l_nocliplink] ) )
        {
            // en : when the link (synchronization) destination of the 3d model is undefined
            // ja : 3dモデルのリンク（同期）先が未定義の場合
            if ( !isdefined( self.optstat[optname + linkname] ) ||
            // en : or if the link (synchronization) destination is yourself
            // ja : もしくはリンク（同期）先が自分自身の場合
                ( isdefined( self.optstat[optname + linkname] ) && ( ( self.optstat[optname + linkname] != "noclip_forward" ) && ( self.optstat[optname + linkname] != "noclip_center" ) ) ) ||
            // en : or, when the link (synchronization) destination is in the forward direction of the object used for flight processing and the model position is adjusted to the center of the body.
            // ja : もしくはリンク（同期）先が飛行処理に使うオブジェクトの前方方向で、且つ体の中央にモデル位置を合わせる場合
                ( isdefined( self.optstat[optname + linkname] ) && ( self.optstat[optname + linkname] == "noclip_forward" ) && isdefined( self.optstat[optname].moddata[subparam] ) ) ||
            // en : or when the link (synchronization) destination is the center point of the object used for flight processing and the model position is adjusted in the forward direction.
            // ja : もしくはリンク（同期）先が飛行処理に使うオブジェクトの中心点で、且つ前方方向にモデル位置を合わせる場合
                ( isdefined( self.optstat[optname + linkname] ) && ( self.optstat[optname + linkname] == "noclip_center" ) && !isdefined( self.optstat[optname].moddata[subparam] ) ) )
            {
                // en : unlink (synchronize) 3d models
                // ja : 3dモデルのリンク（同期）を解除する
                self.optstat[optname + objname] unlink( );

                // en : align the angle of the 3d model and the object used for flight processing
                // ja : 3dモデルと飛行処理に使うオブジェクトの角度を合わせる
                self.optstat[optname + objname].angles = self.optstat[l_noclipbase + l_nocliplink].angles;
                
                // en : when aligning the model position in the forward direction of the object used for flight processing
                // ja : 飛行処理に使うオブジェクトの前方方向にモデル位置を合わせる場合
                if ( !isdefined( self.optstat[optname].moddata[subparam] ) )
                {
                    // en : move the 3d model to the coordinates in front of you and slightly below you
                    // ja : 3dモデルを自分の前方方向、少し下の座標に移動する
                    self.optstat[optname + objname].origin = self getplayerforwardtrace( /* trace */ undefined , /* eye */ undefined , /* length */ 600 , /* up */ -75 );
                    // en : the link (synchronization) destination of the 3d model is the forward direction of the object used for flight processing.
                    // ja : 3dモデルのリンク（同期）先は飛行処理に使うオブジェクトの前方方向とする
                    self.optstat[optname + linkname] = "noclip_forward";
                }
                // en : when aligning the model position to the center of the body
                // ja : 体の中央にモデル位置を合わせる場合
                else
                {
                    // en : align yourself with the 3d model
                    // ja : 3dモデルと自分の位置を合わせる
                    self.optstat[optname + objname].origin = self getplayerforwardtrace( /* trace */ undefined , /* eye */ undefined , /* length */ 15 , /* up */ 15 );
                    // en : assume that 3d model linking (synchronization) is completed.
                    // ja : 3dモデルのリンク（同期）先は自分とする
                    self.optstat[optname + linkname] = "noclip_center";
                }
                // en : link (synchronize) the 3d model to the objects used for flight processing
                // ja : 3dモデルを飛行処理に使うオブジェクトにリンク（同期）する
                self.optstat[optname + objname] linkto( self.optstat[l_noclipbase + l_nocliplink] );
                // en: set an object solid
                // ja: オブジェクトを固体設定する
                self.optstat[optname + objname] solid( );
            }
        }
        // en: if the object used for flight processing has not been created
        // ja: 飛行処理に使うオブジェクトが未生成の場合
        else
        {
            // en : when the link (synchronization) destination of the 3d model is undefined
            // ja : 3dモデルのリンク（同期）先が未定義の場合
            if ( !isdefined( self.optstat[optname + linkname] ) ||
            // en : or if the link (synchronization) destination is an object used for flight processing
            // ja : もしくはリンク（同期）先が飛行処理に使うオブジェクトの場合
                ( isdefined( self.optstat[optname + linkname] ) && ( ( self.optstat[optname + linkname] == "noclip_forward" ) || ( self.optstat[optname + linkname] == "noclip_center" ) ) ) ||
            // en : or if the link (synchronization) destination is your head and you want to align the model position to the center of your body
            // ja : もしくはリンク（同期）先が自分の頭で、且つ体の中央にモデル位置を合わせる場合
                ( isdefined( self.optstat[optname + linkname] ) && ( self.optstat[optname + linkname] == "self_head" ) && isdefined( self.optstat[optname].moddata[subparam] ) ) ||
            // en : or if the link (synchronization) destination is the center of the body and the model position is aligned with the head
            // ja : もしくはリンク（同期）先が体の中央で、且つ頭にモデル位置を合わせる場合
                ( isdefined( self.optstat[optname + linkname] ) && ( self.optstat[optname + linkname] == "self_body" ) && !isdefined( self.optstat[optname].moddata[subparam] ) ) )
            {
                // en : unlink (synchronize) 3d models
                // ja : 3dモデルのリンク（同期）を解除する
                self.optstat[optname + objname] unlink( );

                // en : align your angle with the 3d model
                // ja : 3dモデルと自分の角度を合わせる
                self.optstat[optname + objname].angles = self getplayerangles( );

                // en : when adjusting the model position to the head
                // ja : 頭にモデル位置を合わせる場合
                if ( !isdefined( self.optstat[optname].moddata[subparam] ) )
                {
                    // en : align your head with the 3d model
                    // ja : 3dモデルと自分の頭の位置を合わせる
                    self.optstat[optname + objname].origin = self gettagorigin( "j_head" );
                    // en : link (sync) a 3d model to yourself
                    // ja : 3dモデルを自分にリンク（同期）する
                    self.optstat[optname + objname] linkto( self , "j_head" );
                    // en : link (synchronize) the 3d model to your head
                    // ja : 3dモデルのリンク（同期）先は自分の頭とする
                    self.optstat[optname + linkname] = "self_head";
                }
                // en : when aligning the model position to the center of the body
                // ja : 体の中央にモデル位置を合わせる場合
                else
                {
                    // en : align yourself with the 3d model
                    // ja : 3dモデルと自分の位置を合わせる
                    self.optstat[optname + objname].origin = self.origin;
                    // en : link (sync) a 3d model to yourself
                    // ja : 3dモデルを自分にリンク（同期）する
                    self.optstat[optname + objname] linkto( self );
                    // en : assume that 3d model linking (synchronization) is completed.
                    // ja : 3dモデルのリンク（同期）先は自分とする
                    self.optstat[optname + linkname] = "self_body";
                }

                // en: assume an object is not solid
                // ja: オブジェクトを固体ではないとする
                self.optstat[optname + objname] notsolid( );
            }
        }
    }
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "setmodel" for the specified player.
// ja : 指定したプレイヤーに対して、機能 "setmodel" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfsetmodelforplayer( )
{
    self switchonfplayerfunction( "setmodel" , ::onfsetmodel );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "setmodel" for the all players.
// ja : 全プレイヤーに対して、機能 "setmodel" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfsetmodelforallplayers( )
{
    self thread switchonfallplayersfunction( "setmodel" , ::onfsetmodel , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : change the type of 3d model in use with the function "setmodel"
// ja : 機能 "setmodel" で使用中の3dモデルの種類を変更する
//++++++++++++++++++++++++++++++
switchchangemodel( )
{
    self changemodelid( true );
}



//++++++++++++++++++++++++++++++
// en : change the type of 3d model in use with the function "setmodel"
// ja : 機能 "setmodel" で使用中の3dモデルの種類を変更する
//++++++++++++++++++++++++++++++
changemodelid( notice )
{
    l_optname = "changemodel";

    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array = getstandardmodellist( );
    if ( !isdefined( self.optstat[l_optname + "_objectid"] ) )
    {
        // en : pick a model id randomly from the array
        // ja : 配列内からランダムにモデルidを取り出す
        self.optstat[l_optname + "_objectid"] = scripts\engine\utility::random( l_array );
    }
    else
    {
        l_find = false;
        for ( i = 0; i < l_array.size; i++ )
        {
            if ( self.optstat[l_optname + "_objectid"] == l_array[i] )
            {
                l_find = true;
                if ( (i + 1) < l_array.size )   { self.optstat[l_optname + "_objectid"] = l_array[(i + 1)]; }
                else                            { self.optstat[l_optname + "_objectid"] = l_array[0]; }
                break;
            }
        }
        if ( !l_find ) { self.optstat[l_optname + "_objectid"] = l_array[0]; }
    }

    // en : if a 3d model already exists
    // ja : 既に3dモデルが存在している場合
    if ( isdefined( self.optstat["setmodel" + "_objectdata"] ) )
    {
        // en : change 3d model
        // ja : 3dモデルを変更する
        self.optstat["setmodel" + "_objectdata"] setmodel( self.optstat[l_optname + "_objectid"] );

        // en : set all script parts status for the specified model
        // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
        if ( ( self.optstat[l_optname + "_objectid"] != "military_carepackage_01_juggernaut" ) &&
            ( self.optstat[l_optname + "_objectid"] != "military_carepackage_01_enemy" ) &&
            ( self.optstat[l_optname + "_objectid"] != "military_carepackage_01_friendly" ) )
        {
            self.optstat["setmodel" + "_objectdata"] thread setallsetscriptablepartstate( );
        }
    }

    if ( isdefined( notice ) )
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , l_optname , undefined , self.optstat[l_optname + "_objectid"] , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "setmodel"
// ja : 機能 "setmodel" の実行中の処理
//++++++++++++++++++++++++++++++
execsetmodel( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en: if you have not decided on the type of 3d model yet, set the initial model.
        // ja: まだ3dモデルの種類が決まっていない場合は、初期モデルを設定する
        if ( !isdefined( self.optstat["changemodel" + "_objectid"] ) )
        {
            self changemodelid( undefined );
        }

        // en: if no 3d model object has been generated yet
        // ja: まだ3dモデルオブジェクトが生成されていない場合
        if ( !isdefined( self.optstat[optname + "_objectdata"] ) )
        {
            // en : create an 3d model
            // ja : 3dモデルを作成する
            self.optstat[optname + "_objectdata"] = self createentityobject(
                /* notice */    undefined ,
                /* location */  self.origin ,
                /* length */    undefined ,
                /* script */    "script_model" , 
                /* model */     self.optstat["changemodel" + "_objectid"] ,
                /* collide */   undefined ,
                /* sync */      undefined ,
                /* angle */     self.angles ,
                /* part */      true ,
                /* hpmin */     undefined ,
                /* hpmax */     undefined ,
                /* dmgtype */   undefined ,
                /* dmgfx */     undefined ,
                /* brktype */   undefined ,
                /* brkfx */     undefined ,
                /* dmgse */     undefined ,
                /* brkse */     undefined ,
                /* del */       undefined ,
                /* optname */   undefined
                );

            // en : if the 3d model generation is successful
            // ja : 3dモデルの生成が成功している場合
            if ( isdefined( self.optstat[optname + "_objectdata"] ) )
            {
                // en : change the 3d model synchronization position of the function "setmodel"
                // ja : 機能 "setmodel" の3dモデルの同期位置を変更する
                self resyncsetmodel( optname , "synccenterbody" , "_objectdata" , "_objectlinked" );
            }
        }
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en : change the 3d model synchronization position of the function "setmodel"
        // ja : 機能 "setmodel" の3dモデルの同期位置を変更する
        self resyncsetmodel( optname , "synccenterbody" , "_objectdata" , "_objectlinked" );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en : if the 3d model still exists
        // ja : 3dモデルがまだ存在している場合
        if ( isdefined( self.optstat[optname + "_objectdata"] ) )
        {
            // en : unlink (synchronize) 3d models
            // ja : 3dモデルのリンク（同期）を解除する
            self.optstat[optname + "_objectdata"] unlink( );

            // en : delete 3d model
            // ja : 3dモデルを削除する
            self.optstat[optname + "_objectdata"] deleteentity( );
            self.optstat[optname + "_objectdata"] = undefined;
            
            // en : delete 3d model link information
            // ja : 3dモデルのリンク情報を削除する
            self.optstat[optname + "_objectlinked"] = undefined;
            self.optstat["changemodel" + "_objectid"] = undefined;
        }
    }   
}



//++++++++++++++++++++++++++++++
// en : change the type of 3d model in use with the function "setmodel"
// ja : 機能 "setmodel" で使用中の3dモデルの種類を変更する
//++++++++++++++++++++++++++++++
execchangemodel( )
{
    l_optname1 = "changemodel";
    l_optname2 = "setmodel";

    self.optstat[l_optname1 + "_objectid"] = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].textid;

    // en : if a 3d model already exists
    // ja : 既に3dモデルが存在している場合
    if ( isdefined( self.optstat[l_optname2 + "_objectdata"] ) )
    {
        // en : change 3d model
        // ja : 3dモデルを変更する
        self.optstat[l_optname2 + "_objectdata"] setmodel( self.optstat[l_optname1 + "_objectid"] );

        // en : set all script parts status for the specified model
        // ja : 指定したモデルに全てのスクリプト用パーツステータスを設定する
        if ( ( self.optstat[l_optname1 + "_objectid"] != "military_carepackage_01_juggernaut" ) &&
            ( self.optstat[l_optname1 + "_objectid"] != "military_carepackage_01_enemy" ) &&
            ( self.optstat[l_optname1 + "_objectid"] != "military_carepackage_01_friendly" ) )
        {
            self.optstat[l_optname2 + "_objectdata"] thread setallsetscriptablepartstate( );
        }
    }

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , l_optname1 , undefined , self.optstat[l_optname1 + "_objectid"] , undefined );

}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "randomcamo"
// ja : 機能 "randomcamo" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrandomcamo( )
{
    // en : create or destroy a "randomcamo" variable
    // ja : "randomcamo" 変数の作成か破棄を行う
    self switchonfselffunction(
        /* optname */       "randomcamo" ,
        /* optfunc */       ::emptyfunction ,
        /* message */       undefined ,
        /* optarg1 */       undefined ,
        /* optarg2 */       undefined ,
        /* optarg3 */       undefined ,
        /* optarg4 */       undefined ,
        /* optarg5 */       undefined ,
        /* optarg6 */       undefined ,
        /* optarg7 */       undefined ,
        /* weaponid */      undefined ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  undefined ,
        /* camoid */        undefined ,
        /* camogroup */     undefined ,
        /* dualmode */      undefined
        );
    
    // en : disable blueprintweapon options when feature "randomcamo" is enabled
    // ja : 機能 "randomcamo" が有効の場合、 "blueprintweapon" オプションを無効にする
    if ( isdefined( self.optstat["randomcamo"] ) )
    {
        if ( isdefined( self.optstat["blueprintweapon"] ) ) { self.optstat["blueprintweapon"] = undefined; }
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "randomattachment"
// ja : 機能 "randomattachment" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrandomattachment( )
{
    // en : create or destroy a "randomattachment" variable
    // ja : "randomattachment" 変数の作成か破棄を行う
    self switchonfselffunction(
        /* optname */       "randomattachment" ,
        /* optfunc */       ::emptyfunction ,
        /* message */       undefined ,
        /* optarg1 */       undefined ,
        /* optarg2 */       undefined ,
        /* optarg3 */       undefined ,
        /* optarg4 */       undefined ,
        /* optarg5 */       undefined ,
        /* optarg6 */       undefined ,
        /* optarg7 */       undefined ,
        /* weaponid */      undefined ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  undefined ,
        /* camoid */        undefined ,
        /* camogroup */     undefined ,
        /* dualmode */      undefined
        );
    
    // en : disable blueprintweapon options when feature "randomattachment" is enabled
    // ja : 機能 "randomattachment" が有効の場合、 "blueprintweapon" オプションを無効にする
    if ( isdefined( self.optstat["randomattachment"] ) )
    {
        if ( isdefined( self.optstat["blueprintweapon"] ) ) { self.optstat["blueprintweapon"] = undefined; }
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "blueprintweapon"
// ja : 機能 "blueprintweapon" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfblueprintweapon( )
{
    // en : create or destroy a "blueprintweapon" variable
    // ja : "blueprintweapon" 変数の作成か破棄を行う
    self switchonfselffunction(
        /* optname */       "blueprintweapon" ,
        /* optfunc */       ::emptyfunction ,
        /* message */       undefined ,
        /* optarg1 */       undefined ,
        /* optarg2 */       undefined ,
        /* optarg3 */       undefined ,
        /* optarg4 */       undefined ,
        /* optarg5 */       undefined ,
        /* optarg6 */       undefined ,
        /* optarg7 */       undefined ,
        /* weaponid */      undefined ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  undefined ,
        /* camoid */        undefined ,
        /* camogroup */     undefined ,
        /* dualmode */      undefined
        );
    
    // en : disable attachments and camo options when feature "blueprintweapon" is enabled
    // ja : 機能 "blueprintweapon" が有効の場合、アタッチメントと迷彩オプションを無効にする
    if ( isdefined( self.optstat["blueprintweapon"] ) )
    {
        if ( isdefined( self.optstat["randomattachment"] ) )    { self.optstat["randomattachment"] = undefined; }
        if ( isdefined( self.optstat["randomcamo"] ) )          { self.optstat["randomcamo"] = undefined; }
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "dualweapon"
// ja : 機能 "dualweapon" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfdualweapon( )
{
    // en : create or destroy a "dualweapon" variable
    // ja : "dualweapon" 変数の作成か破棄を行う
    self switchonfselffunction(
        /* optname */       "dualweapon" ,
        /* optfunc */       ::emptyfunction ,
        /* message */       undefined ,
        /* optarg1 */       undefined ,
        /* optarg2 */       undefined ,
        /* optarg3 */       undefined ,
        /* optarg4 */       undefined ,
        /* optarg5 */       undefined ,
        /* optarg6 */       undefined ,
        /* optarg7 */       undefined ,
        /* weaponid */      undefined ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  undefined ,
        /* camoid */        undefined ,
        /* camogroup */     undefined ,
        /* dualmode */      undefined
        );
}



//++++++++++++++++++++++++++++++
// en : get a random weapon
// ja : ランダムに武器を取得する
//++++++++++++++++++++++++++++++
execgiverandomweapon( )
{
    // en : get random attachment settings
    // ja : ランダムアタッチメント設定の取得
    l_attachmentid = undefined;
    if ( isdefined( self.optstat["randomattachment"] ) )    { l_attachmentid = "random"; }
    
    // en : get random camouflage settings
    // ja : ランダム迷彩設定の取得
    l_camoid = undefined;
    if ( isdefined( self.optstat["randomcamo"] ) )          { l_camoid = "random"; }
    
    // en : get random blueprint settings
    // ja : ランダム設計図設定の取得
    if ( isdefined( self.optstat["blueprintweapon"] ) )     { l_camoid = "bpcamo"; }
    
    // en : get dual attachment settings
    // ja : デュアルアタッチメント設定の取得
    l_dual = undefined;
    if ( isdefined( self.optstat["dualweapon"] ) )          { l_dual = true; }

    // en : give specified weapon
    // ja : 指定の武器を与える
    self thread provideweapon(
        /* weaponid */      "random" ,
        /* inprojectile */  "random" ,
        /* onlygroup */     undefined ,
        /* attachmentid */  l_attachmentid ,
        /* camoid */        l_camoid ,
        /* camogroup */     undefined ,
        /* akimbo */        l_dual ,
        /* changehand */    true ,
        /* notice */        true ,
        /* onlygetid */     undefined
        );
}



//++++++++++++++++++++++++++++++
// en : get a random weapon blueprint for the weapon you currently have
// ja : 現在手持ちの武器の設計図武器をランダムで取得する
//++++++++++++++++++++++++++++++
execgivebpweaponfromcurwp( )
{
    // en : give specified weapon
    // ja : 指定の武器を与える
    self thread provideweapon(
        /* weaponid */      "currentbp" ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  undefined ,
        /* camoid */        undefined ,
        /* camogroup */     undefined ,
        /* akimbo */        undefined ,
        /* changehand */    true ,
        /* notice */        true ,
        /* onlygetid */     undefined
        );
}



//++++++++++++++++++++++++++++++
// en : drop your weapon on the ground
// ja : 所持中の武器を地面に落とす
//++++++++++++++++++++++++++++++
execdropweapon( )
{
    // en: get information about the weapon you currently have
    // ja: 今持っている武器の情報を取得
    l_currentweapon = self getcurrentweapon( );

    // en: if you own any kind of weapon
    // ja: 何かしらの武器を所持している場合
    if ( isdefined( l_currentweapon ) )
    {
        // en : get basic name of weapon
        // ja : 武器の基本名称を取得
        l_name = getweaponbasename( l_currentweapon );

        // en : drop your weapon on the ground
        // ja : 所持中の武器を地面に落とす
        self dropitem( l_currentweapon );
        
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "dropweapon" , undefined , l_name , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : pick up your weapon
// ja : 所持中の武器を取り上げる
//++++++++++++++++++++++++++++++
exectakedweapon( )
{
    // en: get information about the weapon you currently have
    // ja: 今持っている武器の情報を取得
    l_currentweapon = self getcurrentweapon( );

    // en: if you own any kind of weapon
    // ja: 何かしらの武器を所持している場合
    if ( isdefined( l_currentweapon ) )
    {
        // en : get basic name of weapon
        // ja : 武器の基本名称を取得
        l_name = getweaponbasename( l_currentweapon );

        // en : pick up your weapon
        // ja : 所持中の武器を取り上げる
        self scripts\cp_mp\utility\inventory_utility::_takeweapon( l_currentweapon );
        
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "takedweapon" , undefined , l_name , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : pick up your all weapons
// ja : 所持中の全ての武器を取り上げる
//++++++++++++++++++++++++++++++
exectakedallweapons( )
{
    // en : pick up your all weapons
    // ja : 所持中の全ての武器を取り上げる
    self takeallweapons( );
    
    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , "takedallweapons" , undefined , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : give specified weapon
// ja : 指定の武器を与える
//++++++++++++++++++++++++++++++
execgiveweapon( )
{
    l_weaponid = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam;

    // en : get random attachment settings
    // ja : ランダムアタッチメント設定の取得
    l_attachmentid = undefined;
    if ( isdefined( self.optstat["randomattachment"] ) )    { l_attachmentid = "random"; }
    
    // en : get random camouflage settings
    // ja : ランダム迷彩設定の取得
    l_camoid = undefined;
    if ( isdefined( self.optstat["randomcamo"] ) )          { l_camoid = "random"; }
    
    // en : get random blueprint settings
    // ja : ランダム設計図設定の取得
    if ( isdefined( self.optstat["blueprintweapon"] ) )     { l_camoid = "bpcamo"; }
    
    // en : get dual attachment settings
    // ja : デュアルアタッチメント設定の取得
    l_dual = undefined;
    if ( isdefined( self.optstat["dualweapon"] ) )          { l_dual = true; }

    // en : give specified weapon
    // ja : 指定の武器を与える
    self thread provideweapon(
        /* weaponid */      l_weaponid ,
        /* inprojectile */  undefined ,
        /* onlygroup */     undefined ,
        /* attachmentid */  l_attachmentid ,
        /* camoid */        l_camoid ,
        /* camogroup */     undefined ,
        /* akimbo */        l_dual ,
        /* changehand */    true ,
        /* notice */        true ,
        /* onlygetid */     undefined
        );
}



////++++++++++++++++++++++++++++++
//// en : switch the enable/disable state of the function "teleportgun"
//// ja : 機能 "teleportgun" の有効/無効を切り替える
////++++++++++++++++++++++++++++++
//onfteleportgun( )
//{
//    // en : when the "teleportgun" variable is enabled, pass a weapon with the specified settings, execute the execteleportgun( ) function at the coordinates of the target fired with that weapon, and generate the specified effect.
//    // ja : "teleportgun" 変数が有効時、指定の設定で武器を渡し、その武器で発射した先の座標に execteleportgun( )関数 を実行、及び指定のエフェクトを発生させる
//    self switchonfselffunction(
//        /* optname */                               "teleportgun" ,
//        /* optfunc */                               ::waitfirebullets ,
//        /* message */                               undefined ,
//        /* optarg1 */       /* optname1 */          "teleportgun" ,
//        /* optarg2 */       /* optname2 */          undefined ,
//        /* optarg3 */       /* optfunc */           ::execteleportgun ,
//        /* optarg4 */       /* notice */            undefined ,
//        /* optarg5 */       /* specificweapon */    true ,
//        /* optarg6 */       /* effectdata */        "equipment_sparks" ,
//        /* optarg7 */       /* enddeath */          true ,
//        /* weaponid */                              "random" ,
//        /* inprojectile */                          undefined ,
//        /* onlygroup */                             "weapon_smg" ,
//        /* attachmentid */                          "random" ,
//        /* camoid */                                "random" ,
//        /* camogroup */                             undefined ,
//        /* dualmode */                              undefined
//        );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : processing during execution of the function "teleportgun"
//// ja : 機能 "teleportgun" の実行中の処理
////++++++++++++++++++++++++++++++
//execteleportgun( location )
//{
//    // en : create a link object
//    // ja : リンク用オブジェクトを作成する
//    l_link = self createentityobject( /* notice */ undefined , /* spawnlocation */ location + ( 0 , 0 , 50 ) , /* spawnlength */ undefined , /* script */ "script_origin" , /* objectname */ "tag_origin" );
//    // en : delete the specified object after the specified number of seconds
//    // ja : 指定されたオブジェクトを、指定された秒数経過後に削除する
//    l_link thread deleteaftertime( 0.1 );
//
//    // en: teleport to target coordinates
//    // ja: 射撃先の座標にテレポートする
//    self setorigin( location + ( 0 , 0 , 50 ) );
//
//    // en : link only for 1 frame after teleporting (fall damage prevention)
//    // ja : テレポート後に1フレーム間だけリンクする（落下ダメージ防止）
//    self playerlinkto( l_link );
//
//    wait 0.001;
//
//    // en : remove player link
//    // ja : プレイヤーリンクを解除する
//    self unlink( );
//    
//    // en: display the specified text in the center of the screen
//    // ja: 画面中央に指定の文章を表示する
//    self showcentermessage( self.curlang , "notice" , "teleporttolocation" , undefined , location , undefined );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : change the amount of movement of the function "teleportgun"
//// ja : 機能 "teleportgun" の 移動量 を変更する
////++++++++++++++++++++++++++++++
//switchteleportgunmovesize( )
//{
//    self changetracesize( "teleportgun" , "tracelength" , ::onfteleportgun , true );
//}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "rocketride"
// ja : 機能 "rocketride" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrocketride( )
{
    // en : execute execrocketride( ) or exit depending on the existence state of the "rocketride" variable
    // ja : "rocketride" 変数の存在状態に合わせて、 execrocketride( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "rocketride" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "rocketride" ,
        /* optarg2 */   /* optfunc */   ::execrocketride ,
        /* optarg3 */   /* looptime */  0.5 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  getbulletid( "rpg7" ) ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              "random" ,
        /* camoid */                    "random" ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "rocketride" for the specified player.
// ja : 指定したプレイヤーに対して、機能 "rocketride" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrocketrideforplayer( )
{
    self switchonfplayerfunction( "rocketride" , ::onfrocketride );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "rocketride" for the all players.
// ja : 全プレイヤーに対して、機能 "rocketride" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrocketrideforallplayers( )
{
    self thread switchonfallplayersfunction( "rocketride" , ::onfrocketride , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "rocketride"
// ja : 機能 "rocketride" の実行中の処理
//++++++++++++++++++++++++++++++
execrocketride( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        self waittill( "missile_fire" , bulletobject , weaponid );
        
        // en: if the weapon no longer exists, execute the termination process
        // ja: 武器が既に存在しない場合、終了処理を実行する
        if ( isdefined( self.optstat[optname] ) == false )
        {
            self execrocketride( optname , 2 /* moddef.mod_finalize */ );
            return;
        }

        // en: if the fired weapon matches the weapon linked to the specified variable
        // ja: 発射された武器と、指定の変数に連携する武器が一致する場合
        if ( getcompleteweaponname( self getcurrentweapon( ) ) == self.optstat[optname].weapondata )
        {
            // en: if you are already linking to a previously launched missile
            // ja: 既に前に発射したミサイルにリンク中である場合
            if ( isdefined( self.optstat[optname + "_linking"] ) )
            {
                // en: terminates the missile link standby process that is currently running.
                // ja: 実行中のミサイルリンク待機処理を終了する
                self notify( "end_" + optname + "_linking" );

                // en: unlink (synchronize) yourself from the missile
                // ja: ミサイルから自分のリンク（同期）を解除する
                self unlink( );

                wait 0.001;
            }

            // en: link (synchronize) yourself to the launched missile
            // ja: 自分を発射されたミサイルにリンク（同期）する
            self playerlinkto( bulletobject );

            // en : processing during linking until the missile disappears in the function "rocketride"
            // ja : 機能 "rocketride" のミサイルが消滅するまでのリンク中の処理
            self thread ondeathrocketride( optname , bulletobject );
            
            // en: define missile linking flag
            // ja: ミサイルリンク中フラグを定義する
            self.optstat[optname + "_linking"] = true;
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: if linked to a missile
        // ja: ミサイルにリンク中である場合
        if ( isdefined( self.optstat[optname + "_linking"] ) )
        {
            // en: unlink (synchronize) yourself from the missile
            // ja: ミサイルから自分のリンク（同期）を解除する
            self unlink( );
            
            // en: discard missile link flag
            // ja: ミサイルリンク中フラグを破棄する
            self.optstat[optname + "_linking"] = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// en : processing during linking until the missile disappears in the function "rocketride"
// ja : 機能 "rocketride" のミサイルが消滅するまでのリンク中の処理
//++++++++++++++++++++++++++++++
ondeathrocketride( optname , bulletobject )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    // en: set the specified effect name as the function termination trigger
    // ja: 指定の機能名を関数の終了トリガーとする
    self endon( "end_" + optname + "_linking" );

    
    // en: increase your health so you don't die when the missile explodes
    // ja: ミサイルの爆発時に死なないように、体力を上げておく
    self.maxhealth  = 10000;
    self.health     = self.maxhealth;

    // en : wait until the missile explodes
    // ja : ミサイルが爆発するまで待つ
    bulletobject waittill( "death" );
    
    // en: unlink (synchronize) yourself from the missile
    // ja: ミサイルから自分のリンク（同期）を解除する
    self unlink( );
    wait 0.5;

    // en: regain one's strength
    // ja: 体力を元に戻す
    self.maxhealth  = 100;
    self.health     = self.maxhealth;
}



////++++++++++++++++++++++++++++++
//// en : switch the enable/disable state of the function "walkingac130"
//// ja : 機能 "walkingac130" の有効/無効を切り替える
////++++++++++++++++++++++++++++++
//onfwalkingac130( )
//{
//    // en : execute execwalkingac130( ) or exit depending on the existence state of the "walkingac130" variable
//    // ja : "walkingac130" 変数の存在状態に合わせて execwalkingac130( ) を実行するか終了する
//    self switchonfselffunction(
//        /* optname */                   "walkingac130" ,
//        /* optfunc */                   ::execloopfunction ,
//        /* message */                   undefined ,
//        /* optarg1 */   /* optname */   "walkingac130" ,
//        /* optarg2 */   /* optfunc */   ::execwalkingac130 ,
//        /* optarg3 */   /* looptime */  0.05 ,
//        /* optarg4 */                   undefined ,
//        /* optarg5 */                   undefined ,
//        /* optarg6 */                   undefined ,
//        /* optarg7 */                   undefined ,
//        /* weaponid */                  getbulletid( "ac130_25mm" ) ,
//        /* inprojectile */              undefined ,
//        /* onlygroup */                 undefined ,
//        /* attachmentid */              undefined ,
//        /* camoid */                    undefined ,
//        /* camogroup */                 undefined ,
//        /* dualmode */                  undefined
//        );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : processing during execution of the function "walkingac130"
//// ja : 機能 "walkingac130" の実行中の処理
////++++++++++++++++++++++++++++++
//execwalkingac130( optname , procstage )
//{
//    // en: initialization process
//    // ja: 初期化処理
//    if ( procstage == 0 /* moddef.mod_initialize */ )
//    {
//        // en : give specified weapon
//        // ja : 指定の武器を与える
//        self thread provideweapon( getbulletid( "ac130_40mm" ) );
//        self thread provideweapon( getbulletid( "ac130_105mm" ) );
//
//        // en : executes general animation processing on a subthread when a special missile is launched.
//        // ja : 特殊なミサイルが発射された時に実行する汎用アニメーション処理をサブスレッド上で実行する
//        self thread onwaitingfiredmissile( optname );
//        // en : set the hud to ac130 specifications
//        // ja : hudをac130仕様にする
//        /*
//        self visionsetkillstreakforplayer( "ac130_color" );
//        self setclientomnvar( "ui_ac130_hud" , 1 );
//        self setclientomnvar( "ui_killstreak_weapon_1_ammo", self getweaponammoclip( "ac130_105mm_mp" ) );
//        self setclientomnvar( "ui_killstreak_weapon_2_ammo", self getweaponammoclip( "ac130_40mm_mp" ) );
//        self setclientomnvar( "ui_killstreak_weapon_3_ammo", self getweaponammoclip( "ac130_25mm_mp" ) );
//        self setclientomnvar( "ui_killstreak_countdown" , gettime( ) + int( self.timeout * 1000 ) );
//        self setclientomnvar( "ui_killstreak_health" , self.maxhealth );
//        self setclientomnvar( "ui_killstreak_flares" , 2 );
//        */
//    }
//    // en: running process
//    // ja: 実行中処理
//    else if ( procstage == 1 /* moddef.mod_processing*/ )
//    {
//        // en: get information about the weapon you currently have
//        // ja: 今持っている武器の情報を取得
//        l_currentweapon = self getcurrentweapon( );
//        // en: change processing depending on weapon type
//        // ja: 武器種類によって処理を変更する
//        switch ( l_currentweapon.basename )
//        {
//            case "ac130_105mm_mp":
//            case "ac130_40mm_mp":
//            case "ac130_25mm_mp":
//                // en: set the number of remaining bullets to the maximum number of bullets for that weapon.
//                // ja: 残弾数をその武器の最大弾数にする
//                self setweaponammostock( l_currentweapon , weaponmaxammo( l_currentweapon ) );
//                // en: set the number of bullets to the maximum number of bullets for that weapon.
//                // ja: 装弾数をその武器の最大弾数にする
//                self setweaponammoclip( l_currentweapon , l_currentweapon.clipsize );
//                break;
//        }
//        
//    }
//    // en: end processing
//    // ja: 終了処理
//    else if ( procstage == 2 /* moddef.mod_finalize */ )
//    {
//        // en: pick up the target's weapon
//        // ja: 持っている対象の武器を取り上げる
//        self configureweapon( /* weapondata */ getbulletid( "ac130_40mm" ) , /* takehand */ true );
//        self configureweapon( /* weapondata */ getbulletid( "ac130_105mm" ) , /* takehand */ true );
//
//        // en : restore hud to default
//        // ja : hudをデフォルトに戻す
//        /*
//        self setclientomnvar( "ui_ac130_hud" , 0 );
//        self visionsetkillstreakforplayer( "" );
//        self scripts\cp_mp\utility\killstreak_utility::killstreak_restorenvgstate( );
//        */
//        // en : finish the general animation process that is executed when a special missile is launched.
//        // ja : 特殊なミサイルが発射された時に実行する汎用アニメーション処理を終了する
//        self notify( "finalize_" + optname );
//        self.optstat[optname] = undefined;
//    }
//}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "realcarepackagegun"
// ja : 機能 "realcarepackagegun" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfrealcarepackagegun( )
{
    l_optname = "realcarepackagegun";

    // en : when the "realcarepackagegun" variable is enabled, pass the weapon with the specified settings and pass the coordinates of the target fired with the weapon to the execrealcarepackagegun( ) function.
    // ja : "realcarepackagegun" 変数が有効時、指定の設定で武器を渡し、その武器で発射した先の座標を execrealcarepackagegun( )関数 にデータを渡す
    self switchonfselffunction(
        /* optname */                               l_optname ,
        /* optfunc */                               ::waitfirebullets ,
        /* message */                               undefined ,
        /* optarg1 */       /* optname1 */          l_optname ,
        /* optarg2 */       /* optname2 */          undefined ,
        /* optarg3 */       /* optfunc */           ::execrealcarepackagegun ,
        /* optarg4 */       /* notice */            undefined ,
        /* optarg5 */       /* specificweapon */    true ,
        /* optarg6 */       /* effectdata */        undefined ,
        /* optarg7 */       /* enddeath */          true ,
        /* weaponid */                              "random" ,
        /* inprojectile */                          undefined ,
        /* onlygroup */                             "weapon_pistol" ,
        /* attachmentid */                          "random" ,
        /* camoid */                                "random" ,
        /* camogroup */                             undefined ,
        /* dualmode */                              undefined
        );

    wait 0.05;
    // en: shorten the distance of the coordinates to obtain when firing a gun
    // ja: 銃発射時の取得先の座標の距離を短くする
    if ( isdefined( self.optstat[l_optname] ) ) { self.optstat[l_optname].moddata["tracelength"] = 1000; }
}



//++++++++++++++++++++++++++++++
// en : when the "realcarepackagegun" variable is enabled, a care package is created and launched towards the specified coordinates.
// ja : "realcarepackagegun" 変数が有効時、指定の座標に向けてケアパッケージを作成し、発射させる
//++++++++++++++++++++++++++++++
execrealcarepackagegun( location )
{
    // en : get the coordinates of the aircraft's destination (coordinates a specified distance ahead in the direction of the player's viewpoint)
    // ja : ケアパッケージの生成座標を取得する（プレイヤーの視点方向に 指定分 先の座標）
    l_cratelocation = self getplayerforwardtrace( /* trace */ undefined , /* eye */ true , /* length */ 100 , /* up */ undefined );
    // en : create a care package
    // ja : ケアパッケージを作成する
    l_package = createrealcarepackage( /* owner */ self , /* location */ l_cratelocation , /* angle */ self getplayerangles( ) );

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , "createobject" , undefined , location , undefined );
    wait 0.001;

    // en : for effect processing purposes, make the specified bullet fly in a transparent state from the specified starting point to the specified ending point.
    // ja : エフェクト処理用途で、指定した弾を、指定した開始地点から終了地点まで、透明状態で飛ばす
    l_bullet = self createeffectablebullet( self , 150 , 0 , getbulletid( "rpg7" ) , location );
    // en: if bullets can be generated
    // ja: 弾が生成出来ている場合
    if ( isdefined( l_bullet ) )
    {
        // en : executes the process during the movement of ammunition fired with the function "realcarepackagegun" on a subthread.
        // ja : 機能 "realcarepackagegun" で発射された弾薬が移動中の処理を、サブスレッド上で実行する
        l_bullet thread linkobjecttobullet( /* object */ l_package , /* time */ undefined , /* del */ undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : change the type of ammunition for the function "modded bullets"
// ja : 機能　"modded bullets" の弾薬の種類を変更する 
//++++++++++++++++++++++++++++++
switchbulletstype( )
{
    // en : change the type of ammunition for the function "modded bullet" (with notification)
    // ja : 機能　"modded bullet" の弾薬の種類を変更する （通知有り）
    self changebulletstype( true , undefined );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "moddedbulletsfiretrigger" of function "modded bullets"
// ja : 機能 "modded bullets" のサブオプション "moddedbulletsfiretrigger" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfmoddedbulletsfiretrigger( )
{
    // en : create or destroy a "moddedbulletsfiretrigger" variable
    // ja : "moddedbulletsfiretrigger" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "moddedbullets" ,
        /* optname2 */  "moddedbulletsfiretrigger" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



////++++++++++++++++++++++++++++++
//// en : enable/disable suboption "moddedbulletsnum5" of function "modded bullets"
//// ja : 機能 "modded bullets" のサブオプション "moddedbulletsnum5" の有効/無効を切り替える
////++++++++++++++++++++++++++++++
//onfmoddedbulletsnum5( )
//{
//    // en : create or destroy a "moddedbulletsnum5" variable
//    // ja : "moddedbulletsnum5" 変数の作成か破棄を行う
//    self switchonfselfsubfunction(
//        /* optname1 */  "moddedbullets" ,
//        /* optname2 */  "moddedbulletsnum5" ,
//        /* optdata */   true ,
//        /* optfunc */   undefined ,
//        /* notice */    true ,
//        /* optarg1 */   undefined ,
//        /* optarg2 */   undefined ,
//        /* optarg3 */   undefined,
//        /* optarg4 */   undefined ,
//        /* optarg5 */   undefined ,
//        /* optarg6 */   undefined ,
//        /* optarg7 */   undefined 
//        );
//}



//++++++++++++++++++++++++++++++
// en : change the type of ammunition for the function "modded bullet" (with or without notification specified)
// ja : 機能　"modded bullet" の弾薬の種類を変更する （通知の有無の指定有り）
//++++++++++++++++++++++++++++++
changebulletstype( notice , random )
{
    // en : get ammo list
    // ja : 弾薬リストを取得する
    l_array = getbulletlist( "allbullet" );

    self changeselfparameter( "moddedbullets" , "bullettype" , undefined , ::onfmoddedbullets , l_array , notice , undefined , random );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "modded bullet"
// ja : 機能「modded bullet」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfmoddedbullets( )
{
    // en : execute execmoddedbullets( ) or exit depending on the existence state of the "moddedbullets" variable
    // ja : "moddedbullets" 変数の存在状態に合わせて、execmoddedbullets( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "moddedbullets" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "moddedbullets" ,
        /* optarg2 */   /* optfunc */   ::execmoddedbullets ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "modded bullet" for the specified player.
// ja : 指定したプレイヤーに対して、機能「modded bullet」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfmoddedbulletsforplayer( )
{
    // en : execute onfmoddedbullets( ) or exit for the specified player, depending on the existence state of the "moddedbullets" variable.
    // ja : 指定したプレイヤーに対して、 "moddedbullets" 変数の存在状態に合わせて、onfmoddedbullets( ) を実行するか終了する
    self switchonfplayerfunction( "moddedbullets" , ::onfmoddedbullets );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "moddedbullets" for the all players.
// ja : 全プレイヤーに対して、機能 "moddedbullets" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfmoddedbulletsforallplayers( )
{
    self thread switchonfallplayersfunction( "moddedbullets" , ::onfmoddedbullets , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "modded bullet"
// ja : 機能「改造弾」の実行中の処理
//++++++++++++++++++++++++++++++
execmoddedbullets( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en: if the "bullettype" variable does not exist
        // ja: 「bullettype」変数が存在しない場合
        if ( !isdefined( self.optstat[optname].moddata["bullettype"] ) )
        {
            // en : pick a weapon id randomly from the array and set it
            // ja : 配列内からランダムに 武器id を取り出して設定する
            self changebulletstype( undefined , true );
        }
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: when waiting for a gun firing event to occur using the waittill function
        // ja: waittill 関数による 銃発射 イベントの発生を待機する場合
        if ( isdefined( self.optstat[optname].moddata["moddedbulletsfiretrigger"] ) )
        {
            self waittill( "weapon_fired" );
        }
        // en: when not using the gun firing event using the waittill function
        // ja: waittill 関数による 銃発射 イベントを利用しない場合
        else
        {
            // en: do not proceed to the next process while the "attack" button is not pressed.
            // ja: "攻撃" ボタンが押されていない間は、次の処理に進まない
            if ( self getkeycodepressed( "buttonattack" , "buttonattack" ) == false ) { return; }
        }

        // en: whether 3d model is being generated and noclip is in progress
        // ja: 3dモデル生成中で、且つnoclip中かどうか
        l_modelnoclip = false;
        // en: define ammunition coordinate information to be used during 3d model generation and noclip.
        // ja: 3dモデル生成中で、且つnoclip中の時に使う、弾薬座標情報を定義しておく
        l_bulletstart = [];
        l_bulletend = [];
        // en: get eye location
        // ja: 目の座標を取得
        l_eyelocation = self geteye( );
        // en: get front direction
        // ja: 正面方向を取得
        l_forwardangle = anglestoforward( self getplayerangles( ) );
        // en: get the bullet generation start coordinates (shift about 50 points from the coordinates of your eyes in the direction the muzzle is facing)
        // ja: 弾の生成開始座標を取得（自分の目の座標から、銃口が向いてる方向に 50 程度ずらす）
        l_startlocation = ( l_eyelocation + ( l_forwardangle * 50 ) );
        // en: get the bullet generation start coordinates (shift about 1000000 points from the coordinates of your eyes in the direction the muzzle is facing)
        // ja: 弾の生成開始座標を取得（自分の目の座標から、銃口が向いてる方向に 1000000 程度ずらす）
        l_endlocation = ( l_eyelocation + ( l_forwardangle * 1000000 ) );
        
        // en : if a 3d model has been generated
        // ja : 3dモデルの生成がされている場合
        if ( isdefined( self.optstat["setmodel" + "_objectdata"] ) )
        {
            // en: if the object used for flight processing has already been generated
            // ja: 飛行処理に使うオブジェクトが生成済みの場合
            if ( isdefined( self.optstat["bindnoclip" + "linkobject"] ) )
            {
                // en: 3d model is being generated and noclip is in progress
                // ja: 3dモデル生成中で、且つnoclip中とする
                l_modelnoclip = true;
                // en : get 3d model coordinates
                // ja : 3dモデルの座標を取得
                l_eyelocation = self.optstat["setmodel" + "_objectdata"].origin;
                // en: get front direction
                // ja: 正面方向を取得
                l_forwardangle = anglestoforward( self.optstat["setmodel" + "_objectdata"].angles );
                // en: get right direction
                // ja: 右方向を取得
                l_rightangle = anglestoright( self.optstat["setmodel" + "_objectdata"].angles );
                // en: get left direction
                // ja: 左向を取得
                l_leftangle = anglestoleft( self.optstat["setmodel" + "_objectdata"].angles );
                // en: obtain the bullet generation start coordinates (shift slightly to the left and right from the coordinates of the 3d model, and shift about 300 in the front direction)
                // ja: 弾の生成開始座標を取得（3dモデルの座標から少し左右にずらし、正面方向に 300 程度ずらす）
                l_bulletstart["right"]  = ( l_eyelocation + ( l_rightangle * 100 ) + ( 0 , 0 , -75 ) + ( l_forwardangle * 300 ) );
                l_bulletstart["left"]   = ( l_eyelocation + ( l_leftangle * 100 ) + ( 0 , 0 , -75 ) + ( l_forwardangle * 300 ) );
                // en: get the bullet generation start coordinates (shift slightly to the left and right from the coordinates of the 3d model, and shift about 1000000 in the front direction)
                // ja: 弾の生成開始座標を取得（3dモデルの座標から少し左右にずらし、正面方向に 1000000 程度ずらす）
                l_bulletend["right"]    = ( l_eyelocation + ( l_rightangle * 100 ) + ( 0 , 0 , -75 ) + ( l_forwardangle * 1000000 ) );
                l_bulletend["left"]     = ( l_eyelocation + ( l_leftangle * 100 ) + ( 0 , 0 , -75 ) + ( l_forwardangle * 1000000 ) );
            }
        }
        
        //// en: when firing 5 bullets at the same time
        //// ja: 弾発射数を5発同時に撃つ場合
        //if ( isdefined( self.optstat[optname].moddata["moddedbulletsnum5"] ) )
        //{
        //    // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
        //    // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
        //    createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , ( l_startlocation + ( 0 , 0 , 100 ) ) , l_endlocation );
        //    wait 0.05;
        //    createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , ( l_startlocation + ( 100 , 0 , 0 ) ) , l_endlocation );
        //    wait 0.05;
        //    createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , ( l_startlocation + ( -100 , 0 , 0 ) ) , l_endlocation );
        //    wait 0.05;
        //    createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , ( l_startlocation + ( 100 , 0 , 100 ) ) , l_endlocation );
        //    wait 0.05;
        //    createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , ( l_startlocation + ( -100 , 0 , 100 ) ) , l_endlocation );
        //    wait 0.05;
        //}
        //// en: when only one bullet is fired
        //// ja: 弾発射数が1発だけの場合
        //else
        {
            // en: when generating a 3d model, but not during noclip
            // ja: 3dモデル生成中、noclip中ではない場合
            if ( l_modelnoclip == false )
            {
                // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , l_startlocation , l_endlocation );
                wait 0.05;
            }
            // en: when 3d model is being generated and noclip is in progress
            // ja: 3dモデル生成中で、且つnoclip中の場合
            else
            {
                // en: a ray is sent from the left and right bullet launch coordinates to the end coordinate, and information on hit data is obtained.
                // ja: 左右の弾丸発射座標から終了座標へ向けて、レイを飛ばし、ヒットしたデータの情報を取得する
                l_bulletleft = scripts\engine\trace::_bullet_trace( l_bulletstart["left"] , l_bulletend["left"] , 0 , undefined );
                l_bulletright = scripts\engine\trace::_bullet_trace( l_bulletstart["right"] , l_bulletend["right"] , 0 , undefined );
                
                // en: if you are not shooting the bullet on the left side
                // ja: 左側の弾を撃っていない場合
                if ( !isdefined( self.optstat[optname].moddata["noclipbulletlefted"] ) )
                {
                    // en: if coordinate information has been obtained
                    // ja: 座標情報が取得できている場合
                    if ( isdefined( l_bulletleft["position"] ) )
                    {
                        // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , l_bulletstart["left"] , l_bulletleft["position"] );
                        
                        // en: suppose you shoot the bullet on the left.
                        // ja: 左側の弾を撃ったとする
                        self.optstat[optname].moddata["noclipbulletlefted"] = true;
                        wait 0.1;
                    }
                }
                // en: after shooting the bullet on the left
                // ja: 左側の弾を撃った後の場合
                else
                {
                    // en: if coordinate information has been obtained
                    // ja: 座標情報が取得できている場合
                    if ( isdefined( l_bulletright["position"] ) )
                    {
                        // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
                        // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
                        createmagicbullet( self , self.optstat[optname].moddata["bullettype"] , l_bulletstart["right"] , l_bulletright["position"] );
                        
                        // en: suppose you shoot the bullet on the right.
                        // ja: 右側の弾を撃ったとする
                        self.optstat[optname].moddata["noclipbulletlefted"] = undefined;
                        wait 0.1;
                    }
                }
            }
        }

    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en : finish the general animation process that is executed when a special missile is launched.
        // ja : 特殊なミサイルが発射された時に実行する汎用アニメーション処理を終了する
        self notify( "finalize_" + optname );
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "infinity ammo"
// ja : 機能「弾無限」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfinfinityammo( )
{
    // en : execute execinfinityammo( ) or exit depending on the existence state of the "infinityammo" variable
    // ja : 「infammo」変数の存在状態に合わせて、execinfinityammo( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "infinityammo" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "infinityammo" ,
        /* optarg2 */   /* optfunc */   ::execinfinityammo ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "infinity ammo" for the specified player.
// ja : 指定したプレイヤーに対して、機能「弾無限」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfinfinityammoforplayer( )
{
    // en : execute onfinfinityammo( ) or exit for the specified player, depending on the existence state of the "infinityammo" variable.
    // ja : 指定したプレイヤーに対して、「infammo」変数の存在状態に合わせて、onfinfinityammo( ) を実行するか終了する
    self switchonfplayerfunction( "infinityammo" , ::onfinfinityammo );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "infinityammo" for the all players.
// ja : 全プレイヤーに対して、機能 "infinityammo" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfinfinityammoforallplayers( )
{
    self thread switchonfallplayersfunction( "infinityammo" , ::onfinfinityammo , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "infinity ammo"
// ja : 機能「弾無限」の実行中の処理
//++++++++++++++++++++++++++++++
execinfinityammo( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en : if duplicate functions are activated, disable them
        // ja : 重複している機能が起動している場合、無効化させる
        //self checkduplicatefunction( "infinityremainingammo" , ::execinfinityremainingammo );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: get information about the weapon you currently have
        // ja: 今持っている武器の情報を取得
        l_currentweapon = self getcurrentweapon( );

        // en: if you have any weapons
        // ja: 武器を何か持っている場合
        if ( ( l_currentweapon != "none" ) && isdefined( l_currentweapon.clipsize ) && ( 0 < l_currentweapon.clipsize ) )
        {
            // en: set the number of remaining bullets to the maximum number of bullets for that weapon.
            // ja: 残弾数をその武器の最大弾数にする
            l_maxammo = weaponmaxammo( l_currentweapon );
            self setweaponammostock( l_currentweapon , 9999 );
            
            // en: set the number of bullets to the maximum number of bullets for that weapon.
            // ja: 装弾数をその武器の最大弾数にする
            l_maxclip = weaponclipsize( l_currentweapon );
            self setweaponammoclip( l_currentweapon , 9999 , "left" );
            self setweaponammoclip( l_currentweapon , 9999 , "right" );
            self setweaponammoclip( l_currentweapon , 9999 );

            // en: gives maximum ammo for that weapon
            // ja: その武器の最大弾薬数を与える
            self givemaxammo( l_currentweapon );
        }


        // en: get information about sub-weapons that you don't have in your hand
        // ja: 手に持っていないサブ武器の情報を取得
        l_offhandweapon = self getcurrentoffhand( );

        // en: if you have any sub-weapons
        // ja: サブ武器を何か持っている場合
        if ( ( l_offhandweapon != "none" ) && isdefined( l_offhandweapon.clipsize ) && ( 0 < l_offhandweapon.clipsize ) )
        {
            // en: set the number of remaining bullets to the maximum number of bullets for that weapon.
            // ja: 残弾数をその武器の最大弾数にする
            self setweaponammostock( l_offhandweapon , weaponmaxammo( l_offhandweapon ) );
            
            // en: set the number of bullets to the maximum number of bullets for that weapon.
            // ja: 装弾数をその武器の最大弾数にする
            self setweaponammoclip( l_offhandweapon , l_offhandweapon.clipsize , "left" );
            self setweaponammoclip( l_offhandweapon , l_offhandweapon.clipsize , "right" );

            // en: gives maximum ammo for that weapon
            // ja: その武器の最大弾薬数を与える
            self givemaxammo( l_offhandweapon );
        }

        //  // en: get information about sub-weapons that you don't have in your hand
        //  // ja: 代替武器の情報を取得
        //  l_altweapon = self getaltweapon( );
//  
        //  // en: if you have any sub-weapons
        //  // ja: 代替武器を何か持っている場合
        //  if ( l_altweapon != "none" )
        //  {
        //      // en: set the number of remaining bullets to the maximum number of bullets for that weapon.
        //      // ja: 残弾数をその武器の最大弾数にする
        //      self setweaponammostock( l_altweapon , weaponmaxammo( l_altweapon ) );
        //      
        //      // en: set the number of bullets to the maximum number of bullets for that weapon.
        //      // ja: 装弾数をその武器の最大弾数にする
        //      self setweaponammoclip( l_altweapon , l_altweapon.clipsize );
//  
        //      // en: gives maximum ammo for that weapon
        //      // ja: その武器の最大弾薬数を与える
        //      self givemaxammo( l_altweapon );
        //  }
        l_result = self scripts\engine\utility::waittill_any_return( "weapon_fired" , "reload" , "grenade_fire" , "missile_fire" , "weapon_change" , "melee" );
        

        // en: wait until the bullet is fired
        // ja: 銃弾を発射するまで待機する
        // self waittill( "weapon_fired" );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "bindnoclip"
// ja : 機能 "bindnoclip" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfbindnoclip( )
{
    // en : execute execbindnoclip( ) or exit depending on the existence state of the "bindnoclip" variable
    // ja : "bindnoclip" 変数の存在状態に合わせて、 execbindnoclip( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "bindnoclip" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "bindnoclip" ,
        /* optarg2 */   /* optfunc */   ::execbindnoclip ,
        /* optarg3 */   /* looptime */  0.05 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "bindnoclip" for the specified player.
// ja : 指定したプレイヤーに対して、機能 "bindnoclip" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfbindnoclipforplayer( )
{
    self switchonfplayerfunction( "bindnoclip" , ::onfbindnoclip );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "bindnoclip" for the all players.
// ja : 全プレイヤーに対して、機能 "bindnoclip" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfbindnoclipforallplayers( )
{
    self thread switchonfallplayersfunction( "bindnoclip" , ::onfbindnoclip , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "bindnoclip"
// ja : 機能 "bindnoclip" の実行中の処理
//++++++++++++++++++++++++++++++
execbindnoclip( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        lv_unverified = 0;

        // en: if the "tactical throw" button and "melee attack" button are pressed at the same time
        // ja: "タクティカル投球" ボタンと、「近接攻撃」ボタンが同時に押されたら
        if ( ( self getkeycodepressed( "buttontactical" , "buttontactical" ) && self getkeycodepressed( "buttonmelee" , "buttonmelee" ) && !isdefined( level.lvlstat["michaelmyers"] ) ) ||
        // en: if "michaelmyers" game mode is active and not yet in noclip state
        // ja: "michaelmyers" ゲームモードが有効中で、且つまだnoclip状態ではない場合
            ( isdefined( level.lvlstat["michaelmyers"] ) && !isdefined( self.optstat[optname + "linkobject"] ) ) ||
        // en: when "noclip" is enabled for all players and your own privilege level is "unverified"
        // ja: 全プレイヤーの "noclip" が有効で、且つ自分自身の権限レベルが "unverified" の場合
            ( isdefined( level.lvlstat[optname] ) && ( self.verificationstatusindex == lv_unverified ) ) )
        {
            // en: if the object used for flight processing has not been created yet
            // ja: 飛行処理に使うオブジェクトがまだ生成されてない場合
            if ( !isdefined( self.optstat[optname + "linkobject"] ) )
            {
                // en: create a transparent object used for flight processing with your own coordinates and angle
                // ja: 飛行処理に使う透明なオブジェクトを、自分の座標、角度で作成する
                self.optstat[optname + "linkobject"] = self createentityobject(
                    /* notice */ undefined , /* spawnlocation */ self.origin , /* spawnlength */ undefined , /* script */ "script_origin" , /* objectname */ "" ,
                    /* objectcollide */ undefined , /* anglesync */ undefined , /* objectangle */ self.angles
                    );
                
                // en: link (sync) yourself to the object you created
                // ja: 自分を作成したオブジェクトにリンク（同期）する
                self playerlinkto( self.optstat[optname + "linkobject"] , undefined , 0 );

                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "enabled" , "bindnoclipdiscription" , undefined , undefined , undefined );
            }
            // en: if the object used for flight processing has already been generated
            // ja: 飛行処理に使うオブジェクトが生成済みの場合
            else
            {
                // en: unlink (synchronize) yourself from the created object
                // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
                self unlink( );
                
                // en: delete the created object
                // ja: 作成したオブジェクトを削除する
                self.optstat[optname + "linkobject"] deleteentity( );
                self.optstat[optname + "linkobject"] = undefined;
                
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "disabled" , "bindnoclip" , undefined , undefined , undefined );
            }

            wait 0.3;
        }

        // en: if the object used for flight processing has already been generated
        // ja: 飛行処理に使うオブジェクトが生成済みの場合
        if ( isdefined( self.optstat[optname + "linkobject"] ) )
        {
            // en: if the player is in a vehicle, remember the vehicle
            // ja: プレイヤーが乗り物に乗っている場合、乗り物を記憶する
            if ( self scripts\cp_mp\utility\player_utility::isinvehicle( ) )
            {
                self.optstat[optname].curvehicle = self scripts\cp_mp\utility\player_utility::getvehicle( );
            }

            self.optstat[optname + "linkobject"].angles = self getplayerangles( );

            l_angles = self getplayerangles( );
            l_forward = anglestoforward( l_angles );
            l_left = anglestoforward( l_angles - ( 0 , 90 , 0 ) );
            l_top = anglestoforward( l_angles - ( 90 , 0 , 0 ) );
            l_movement = self getnormalizedmovement( );
            l_zscale = 0;
            
            // en: when the "jump" button is pressed
            // ja: 「ジャンプ」ボタンが押されたら
            if ( self getkeycodepressed( "buttonjump" , "buttonjump"  ) )
            {
                // en: set the amount of movement in the +z axis direction
                // ja: +z軸方向への移動量を設定する
                l_zscale = 1;
            }
            // en: when the "crouch/prone" button is pressed
            // ja: 「しゃがみ・伏せ」ボタンが押されたら
            else if ( self getkeycodepressed( "buttonstance" , "buttonstance"  ) )
            {
                // en: set the amount of movement in the -z axis direction
                // ja: -z軸方向への移動量を設定する
                l_zscale = -1;
            }

            // en: when the "run/hold your breath" button is pressed
            // ja: 「走る・息止め」ボタンが押されたら
            if ( self getkeycodepressed( "buttonsprint" , "buttonsprint" ) )
            {
                // en: when the "tacticalthrow" button is pressed
                // ja: "タクティカル投球" ボタンが押されている間
                if ( self getkeycodepressed( "buttontactical" , "buttontactical"  ) )
                {
                    l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
                    l_scale = vectorscale( l_vector , 5000 );
                    self.optstat[optname + "linkobject"].origin = self.origin + l_scale;
                }
                // en: when the "tacticalthrow" button is not pressed
                // ja: "タクティカル投球" ボタンが押されていない間
                else
                {
                    l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
                    l_scale = vectorscale( l_vector , 350 );
                    self.optstat[optname + "linkobject"].origin = self.origin + l_scale;
                }
            }
            // en: when neither button is pressed
            // ja: どちらのボタンも押されていない時
            else
            {
                l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
                l_scale = vectorscale( l_vector , 30 );
                self.optstat[optname + "linkobject"].origin = self.origin + l_scale;
            }

            // en: if a vehicle is memorized, move the vehicle to the noclip position as well.
            // ja: 乗り物が記憶されている場合、乗り物も一緒にnoclip位置に移動させる
            if ( isdefined( self.optstat[optname].curvehicle ) )
            {
                self.optstat[optname].curvehicle.origin = self.optstat[optname + "linkobject"].origin;
                self.optstat[optname].curvehicle.angles = self.optstat[optname + "linkobject"].angles;
            }
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: if the object used for flight processing has already been generated
        // ja: 飛行処理に使うオブジェクトが生成済みの場合
        if ( isdefined( self.optstat[optname + "linkobject"] ) )
        {
            // en: unlink (synchronize) yourself from the created object
            // ja: 作成したオブジェクトから自分のリンク（同期）を解除する
            self unlink( );
            
            // en: delete the created object
            // ja: 作成したオブジェクトを削除する
            self.optstat[optname + "linkobject"] deleteentity( );
            self.optstat[optname + "linkobject"] = undefined;
            self.optstat[optname].curvehicle = undefined;
        }
    }
}



//++++++++++++++++++++++++++++++
// en : change the movement speed of the function "movementspeed" (with notification)
// ja : 機能 "movementspeed" の 移動速度 を変更する （通知有り）
//++++++++++++++++++++++++++++++
switchmovementspeed( )
{
    self changemovementspeed( true );
}



//++++++++++++++++++++++++++++++
// en : change the movement speed of the function "movementspeed" (with or without notification specified)
// ja : 機能 "movementspeed" の 移動速度 を変更する  （通知の有無の指定有り）
//++++++++++++++++++++++++++++++
changemovementspeed( notice )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array =
    [
        2 ,
        3 ,
        4 ,
        5
    ];
    

    self changeselfparameter( "movementspeed" , "changemovementspeed" , "value_x" , ::onfchangemovementspeed , l_array , notice , true , undefined );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "movementspeed"
// ja : 機能 "movementspeed" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfchangemovementspeed( )
{
    // en : execute execchangemovementspeed( ) or exit depending on the existence state of the "movementspeed" variable
    // ja : "movementspeed" 変数の存在状態に合わせて、 execchangemovementspeed( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "movementspeed" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "movementspeed" ,
        /* optarg2 */   /* optfunc */   ::execchangemovementspeed ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined ,
        /* lvlcheck */                  "speedhack"
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "movementspeed"
// ja : 機能 "movementspeed" の実行中の処理
//++++++++++++++++++++++++++++++
execchangemovementspeed( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en : if duplicate functions are activated, disable them
        // ja : 重複している機能が起動している場合、無効化させる
        //self checkduplicatefunction( "movementspeed1_25x" , ::execmovementspeed1_25x );

        // en: set initial movement speed to double
        // ja: 初期の移動速度を2倍に設定する
        if ( !isdefined( self.optstat[optname].moddata["changemovementspeed"] ) ) { self.optstat[optname].moddata["changemovementspeed"] = 2; }
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: set your movement speed to the currently set speed
        // ja: 自分の移動速度を設定中の速度にする
        self setmovespeedscale( self.optstat[optname].moddata["changemovementspeed"] );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: return your movement speed to default
        // ja: 自分の移動速度をデフォルトに戻す
        self setmovespeedscale( 1 );
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "invisible"
// ja : 機能 "invisible" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfinvisible( )
{
    // en : execute execinvisible( ) or exit depending on the existence state of the "invisible" variable
    // ja : "invisible" 変数の存在状態に合わせて、 execinvisible( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "invisible" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "invisible" ,
        /* optarg2 */   /* optfunc */   ::execinvisible ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "invisible"
// ja : 機能 "invisible" の実行中の処理
//++++++++++++++++++++++++++++++
execinvisible( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: hide one's appearance
        // ja: 姿を非表示にする
        self playerhide( );
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: show appearance
        // ja: 姿を表示する
        self playershow( );
    }
}



//++++++++++++++++++++++++++++++
// en : give specified killstreak
// ja : 指定のキルストリークを与える
//++++++++++++++++++++++++++++++
execgivekillstreak( )
{
    // en : get killstreak id from currently selected item
    // ja : 現在選択中の項目から、キルストリークidを取得
    l_killstreakid = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam;

    switch ( l_killstreakid )
    {
        case "emp_drone":           scripts\cp_mp\killstreaks\emp_drone::empdrone_beginsuper( ); break;
        case "emp_drone_targeted":  scripts\cp_mp\killstreaks\emp_drone_targeted::empdrone_beginsuper( ); break;
        case "helper_drone":        scripts\cp_mp\killstreaks\helper_drone::recondrone_beginsuper( ); break;
        case "super_deadsilence":   scripts\mp\supers\super_deadsilence::superdeadsilence_beginsuper( ); break;
        case "super_stoppingpower": scripts\mp\supers\super_stoppingpower::stoppingpower_beginuse( ); break;
        case "weapon_drop":         scripts\mp\equipment\weapon_drop::weapondrop_beginsuper( ); break;
        default:                    self thread scripts\mp\killstreaks\killstreaks::givekillstreak( l_killstreakid , 0 , 0 , self ); break;
    }
	

    //l_killstreakdata = scripts\mp\killstreaks\killstreaks::createstreakitemstruct( l_killstreakid );
    //self thread scripts\mp\killstreaks\killstreaks::awardkillstreakfromstruct( l_killstreakdata );
    //self thread scripts\mp\killstreaks\killstreaks::awardkillstreak( l_killstreakid );

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , "givekillstreak" , undefined , l_killstreakid , undefined );

}



//++++++++++++++++++++++++++++++
// en : call the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」を呼び出す
//++++++++++++++++++++++++++++++
onfkamikazebomber( )
{
    // en : execute execkamikazebomber( ) or exit depending on the existence state of the "kamikazebomber" variable
    // ja : 「kamikazebomber」変数の存在状態に合わせて、execkamikazebomber( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                           "kamikazebomber" ,
        /* optfunc */                           ::waitfirebullets ,
        /* message */                           "pleaseshooting" ,
        /* optarg1 */   /* optname1 */          "kamikazebomber" ,
        /* optarg2 */   /* optname2 */          undefined ,
        /* optarg3 */   /* optfunc */           ::execkamikazebomber ,
        /* optarg4 */   /* notice */            true ,
        /* optarg5 */   /* specificweapon */    true ,
        /* optarg6 */   /* effectdata */        "equipment_sparks" ,
        /* optarg7 */   /* enddeath */          true ,
        /* weaponid */                          "random" ,
        /* inprojectile */                      undefined ,
        /* onlygroup */                         undefined ,
        /* attachmentid */                      "random" ,
        /* camoid */                            "random" ,
        /* camogroup */                         undefined ,
        /* dualmode */                          undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」の実行中の処理
//++++++++++++++++++++++++++++++
execkamikazebomber( endlocation )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    l_optname = "kamikazebomber";
    l_optname2 = "changekamikazebombermodel";

    // en : define the initial model of the object to be generated
    // ja : 生成するオブジェクトの初期モデルを定義する
    if ( !isdefined( self.optstat[l_optname].moddata[l_optname2] ) ) 
        self.optstat[l_optname].moddata[l_optname2] = "veh8_mil_air_acharlie130";
    l_optrandom     = self.optstat[l_optname].moddata["changekamikazebomberrandom"];
    l_optobjname    = self.optstat[l_optname].moddata[l_optname2];
    // en : define the initial loop sound of the object to be generated
    // ja : 生成するオブジェクトの初期ループサウンドを定義する
    l_optloopsound  = "iw8_cruise_missile_plr";
    // en : define the initial loop effect (smoke) for the generated object
    // ja : 生成するオブジェクトの初期ループエフェクト（煙）を定義する
    l_optsmokefx    = "juggernaut_crate_vfx";
    l_optexplodefx  = self.optstat[l_optname].moddata["kamikazeloopexplodefx"];
    l_optspin       = self.optstat[l_optname].moddata["changekamikazebomberspinning"];
    // en : define the initial effect (explode 1) for the generated object
    // ja : 生成するオブジェクトの初期エフェクト（爆発 1）を定義する
    l_optfinexpfx1  = "large_transport_explode";
    // en : define the initial effect (explode 2) for the generated object
    // ja : 生成するオブジェクトの初期エフェクト（爆発 2）を定義する
    l_optfinexpfx2  = "white_phosphorus_inair_explosion";

    // en : get kamikaze bomber generation start position randomly
    // ja : kamikaze bomberの生成開始位置をランダムで取得する
    l_startlocation = endlocation + ( randomintrange( -30000 , 30000 ) , randomintrange( -30000 , 25000 ) , randomintrange( 15000 , 30000 ) );
    
    // en : if kamikaze bomber random settings are enabled
    // ja : kamikaze bomberのランダム設定が有効になっている場合
    if ( isdefined( l_optrandom ) )
        // en : randomize the 3d model of kamikaze bomber
        // ja : kamikaze bomberの3dモデルをランダムに設定する
        self changekamikazebombermodel( undefined , true );

    // en : obtain the angle of the impact coordinate facing the front.
    // ja : 着弾座標を正面に向けたアングルを取得する
    l_angles = vectortoangles( endlocation - l_startlocation );

    // en : create an 3d model at the generation start position
    // ja : 生成開始位置に3dモデルを作成する
    l_kamikaze = self createentityobject(
        /* notice */    undefined ,
        /* location */  l_startlocation ,
        /* length */    undefined ,
        /* script */    "script_model" , 
        /* model */     l_optobjname ,
        /* collide */   true ,
        /* sync */      undefined ,
        /* angle */     l_angles ,
        /* part */      true ,
        /* hpmin */     undefined ,
        /* hpmax */     undefined ,
        /* dmgtype */   undefined ,
        /* dmgfx */     undefined ,
        /* brktype */   undefined ,
        /* brkfx */     undefined ,
        /* dmgse */     undefined ,
        /* brkse */     undefined ,
        /* del */       undefined ,
        /* optname */   undefined
        );
    // en : generate an object for the kill camera, but do not set model data because you want it to be transparent.
    // ja : キルカメラ用のオブジェクトを生成するが、透明にしたいためモデルデータは設定しない
    l_killcam = self createentityobject( /* notice */ undefined , /* spawnlocation */ l_kamikaze gettagorigin( "tag_origin" ) , /* spawnlength */ undefined , /* script */ "script_model" , /* objectname */ "tag_origin" );
    // en : make it follow the specified coordinates of kamikaze bomber
    // ja : kamikaze bomberの指定座標に追従するようにする
    l_killcam linkto( l_kamikaze , "tag_origin" , ( -1500 , 0 , 275 ) , ( 0 , 0 , 0 ) );
    // en : the kill camera when kamikaze bomber kills an opponent becomes a kill camera object.
    // ja : kamikaze bomberが相手を殺した時のキルカメラを、キルカメラ用オブジェクトにする
    l_kamikaze.killcament = l_killcam;
    
    // en : make kamikaze bomber play flight sound on loop
    // ja : kamikaze bomberがループで飛行サウンドを再生するようにする
    l_kamikaze playloopsound( l_optloopsound );
    
    // en : kamikaze bomber plays the crash effect in a loop in a subthread.
    // ja : kamikaze bomberがループで墜落エフェクトを再生する処理を、サブスレッドで実行する
    l_kamikaze thread playeffecttoobject( /* time */ 0.01 , /* obj */ l_kamikaze , /* fx */ l_optsmokefx    , /* tag */ "tag_engine_right"  , /* type */ "gettag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    l_kamikaze thread playeffecttoobject( /* time */ 0.01 , /* obj */ l_kamikaze , /* fx */ l_optexplodefx  , /* tag */ "tag_engine_reft"   , /* type */ "gettag" , /* loop */ true , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.15;

    // en : defines the transition time for kamikaze bomber before impact
    // ja : kamikaze bomberが着弾するまでの遷移時間を定義
    l_waittime = 3.5;
    // en : defines the angle at which the kamikaze bomber rolls
    // ja : kamikaze bomberがロール回転する角度を定義
    l_spinangle = 0;
    
    // en : if kamikaze bomber random settings are enabled
    // ja : kamikaze bomberのランダム設定が有効になっている場合
    if ( isdefined( l_optrandom ) )
    {
        // en : randomly decide whether to rotate
        // ja : 回転させるかどうかをランダムに決める
        if ( scripts\engine\utility::cointoss( ) )
        {
            // en : to rotate to the left, rotate to an angle of "-360 degrees x 5" in 3.5 seconds.
            // ja : 左回転させる場合、「-360度 x 5」の角度に、3.5秒かけて回転させる
            if ( scripts\engine\utility::cointoss( ) )  l_spinangle = -360;
            // en : to rotate clockwise, rotate to an angle of 360 degrees x 5 in 3.5 seconds.
            // ja : 右回転させる場合、「360度 x 5」の角度に、3.5秒かけて回転させる
            else                                        l_spinangle = 360;
        }
    }
    // en : if kamikaze bomber random setting is disabled, if kamikaze bomber spin setting is enabled
    // ja : kamikaze bomberのランダム設定が無効の場合、且つkamikaze bomberのスピン設定が有効の場合
    else if ( isdefined( l_optspin ) )
        // en : rotate the kamikaze bomber to an angle of 360 degrees x 5 in 3.5 seconds.
        // ja : kamikaze bomberを「360度 x 5」の角度に、3.5秒かけて回転させる
        l_spinangle = 360;

    // en : if the roll rotation angle is not 0, rotate the kamikaze bomber to the specified angle.
    // ja : ロール回転角度が0ではない場合、kamikaze bomberを指定角へ回転させる
    if ( l_spinangle != 0 )
        l_kamikaze rotateroll( (l_spinangle * 5) , l_waittime );

    // en : move the kamikaze bomber to the crash destination coordinates in 3.5 seconds
    // ja : kamikaze bomberを墜落先の座標に3.5秒で移動させる
    l_kamikaze moveto( endlocation , l_waittime );
    
    // en : wait until just before the bullet hits
    // ja : 着弾直前まで待機する
    wait l_waittime - 0.1;

    // en : generates a nuclear explosion at the specified coordinates (earthquake generation and damage included)
    // ja : 指定した座標に 核爆発 を発生させる （地震発生・ダメージ込み）
    self thread execnuclearexplosion( endlocation , self );
    wait 0.2;

    // en : play the aircraft explosion effect at the specified coordinates.
    // ja : 指定した座標に機体爆発のエフェクトを再生させる
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ "little_bird_explode" , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
    wait 0.05;

    // en : play the aircraft explosion effect at the specified coordinates.
    // ja : 指定した座標に機体爆発のエフェクトを再生させる
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 400   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 0     , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 400   , 400   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx1 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 400   , 400   , 400 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // en : as an attacker, inflict damage with explosives of the specified weapon type within a radius of 50,000 from the specified coordinates.
    // ja : 指定した座標から半径 50000 の範囲まで、自分自身が攻撃者として、指定した武器種類の爆発物でダメージを与える
    l_kamikaze radiusdamage( endlocation , 50000 , 50000 , 50000 , self , "MOD_EXPLOSIVE" , getbulletid( "nuke" ) );

    // en : play the aircraft explosion effect at the specified coordinates.
    // ja : 指定した座標に機体爆発のエフェクトを再生させる
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 200   , 0     , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 0     , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 0     , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 200   , 200   , 0 )     , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;
    playeffecttoobject( /* time */ undefined , /* obj */ undefined , /* fx */ l_optfinexpfx2 , /* tag */ undefined , /* type */ "getplay" , /* loop */ undefined , /* base */ endlocation , /* fix */ ( 200   , 200   , 200 )   , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );   wait 0.05;

    // en : stop the looping sound that kamikaze bomber was playing
    // ja : kamikaze bomberが再生していたループサウンドを停止する
    l_kamikaze stoploopsound( l_optloopsound );
    
    // en : unfollow nuclear object
    // ja : オブジェクトの追従を解除する
    l_killcam unlink( );
    
    // en : delete the created 3d object
    // ja : 作成した3dオブジェクトを削除する
    l_killcam deleteentity( );
    l_kamikaze deleteentity( );
}



//++++++++++++++++++++++++++++++
// en : change the model rotation settings for the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のモデルの回転設定を変更する
//++++++++++++++++++++++++++++++
switchkamikazebomberspin( )
{
    self changekamikazebomberspin( true );
}



//++++++++++++++++++++++++++++++
// en : change the model rotation settings for the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のモデルの回転設定を変更する
//++++++++++++++++++++++++++++++
changekamikazebomberspin( notice )
{
    self switchonfselfsubfunction(
        /* optname1 */  "kamikazebomber" ,
        /* optname2 */  "changekamikazebomberspinning" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    notice ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : change the random settings of the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のランダム設定を変更する
//++++++++++++++++++++++++++++++
switchkamikazebomberrandom( )
{
    self changekamikazebomberrandom( true );
}



//++++++++++++++++++++++++++++++
// en : change the random settings of the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のランダム設定を変更する
//++++++++++++++++++++++++++++++
changekamikazebomberrandom( notice )
{
    self switchonfselfsubfunction(
        /* optname1 */  "kamikazebomber" ,
        /* optname2 */  "changekamikazebomberrandom" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    notice ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : change the model type of the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
switchkamikazebombermodel( )
{
    self changekamikazebombermodel( true , undefined );
}



//++++++++++++++++++++++++++++++
// en : change the model type of the function "kamikaze bomber"
// ja : 機能「kamikaze bomber」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
changekamikazebombermodel( notice , random )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array = getstandardvehiclemodellist( );

    self changeselfparameter( "kamikazebomber" , "changekamikazebombermodel" , undefined , ::onfkamikazebomber , l_array , notice , undefined , random );
}



//++++++++++++++++++++++++++++++
// en : call the function "vanguardairstrike"
// ja : 機能 "vanguardairstrike" を呼び出す
//++++++++++++++++++++++++++++++
onfvanguardairstrike( )
{
    // en : execute execvanguardairstrike( ) or exit depending on the existence state of the "vanguardairstrike" variable
    // ja : "vanguardairstrike" 変数の存在状態に合わせて execvanguardairstrike( ) を実行するか終了する
    self switchonflevelfunction(
        /* optname */                           "vanguardairstrike" ,
        /* optfunc */                           ::waitfirebullets ,
        /* message */                           "pleaseshooting" ,
        /* optarg1 */   /* optname1 */          "vanguardairstrike" ,
        /* optarg2 */   /* optname2 */          undefined ,
        /* optarg3 */   /* optfunc */           ::execvanguardairstrike ,
        /* optarg4 */   /* notice */            true ,
        /* optarg5 */   /* specificweapon */    undefined ,
        /* optarg6 */   /* effectdata */        "equipment_sparks" ,
        /* optarg7 */   /* enddeath */          undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "vanguardairstrike"
// ja : 機能 "vanguardairstrike" の実行中の処理
//++++++++++++++++++++++++++++++
execvanguardairstrike( location )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );

    l_optname = "vanguardairstrike";
    
    // en: set the specified option name as the function termination trigger
    // ja: 指定のオプション名の終了トリガーを通知する
    self notify( "end_" + l_optname );
    wait 0.001;
    
    // en : since this mod uses a large number of entities, multiple activations are difficult, so it will not be possible to reuse it until the end of the production.
    // ja : このmodでは大量のエンティティを使う関係で多重起動が難しいため、演出終了まで再使用できないようにする
    level.lvlstat[l_optname + "deleting"] = true;

    // en : create an array to manage the aircraft
    // ja : 機体を管理する配列を作成
    level.lvlstat[l_optname + "_object"] = [];

    // en : randomly obtain the starting coordinates where the aircraft is generated and the coordinates of the destination, and calculate the angle of the aircraft.
    // ja : 機体が生成される開始座標、移動先の座標をランダムに取得し、機体の角度を算出する
    l_randomx = undefined;
    l_randomy = undefined;
    if ( scripts\engine\utility::cointoss( ) )  { l_randomx = randomintrange( -15000 , -10000 ); }
    else                                        { l_randomx = randomintrange( 10000 , 15000 ); }
    if ( scripts\engine\utility::cointoss( ) )  { l_randomy = randomintrange( -15000 , -10000 ); }
    else                                        { l_randomy = randomintrange( 10000 , 15000 ); }
    l_randomz = randomintrange( 1500 , 2000 );
    l_startlocation = location + ( l_randomx , l_randomy , l_randomz );
    l_endlocation = location + ( -( l_randomx ) , -( l_randomy ) , l_randomz );
    l_airlocation = ( location[0] , location[1] , l_randomz );
    l_angle = vectortoangles( l_endlocation - l_startlocation );
    l_time = 0;
    l_location = l_startlocation;
    l_weaponid = "";

    // en : define the model of the aircraft to be used
    // ja : 使用する機体のモデルを定義
    l_array =
    [
        "veh8_mil_air_alfa10" ,
        "veh8_mil_air_alfa10_east"
    ];

    // en : define the missile to use
    // ja : 使用するミサイルを定義
    l_weaponarray =
    [
        getbulletid( "rpg7" ) ,
        getbulletid( "nolockmissile2" ) ,
        getbulletid( "lockonmissile1" ) ,
        getbulletid( "nolockmissile1" ) ,
        getbulletid( "grenadelauncher" )
    ];

    // en : perform loop processing for the number of aircraft to be generated
    // ja : 生成する機体の個数分ループ処理を行う
    for ( i = 0; i < 500; i++ )
    {
        // en : randomly extract the model of the aircraft to be used from the array
        // ja : 使用する機体のモデルをランダムに配列から取り出す
        l_modelid = scripts\engine\utility::random( l_array );

        // en : randomly select the aircraft generation coordinates within the range from the starting point
        // ja : 機体の生成座標を開始地点から範囲内にランダムに選定する
        l_location = l_startlocation;
        if ( scripts\engine\utility::cointoss( ) )  { l_location = l_location + ( anglestoforward( l_angle )    * randomintrange( 500 , 1500 ) ); }
        else                                        { l_location = l_location + ( anglestoforward( l_angle )    * randomintrange( -500 , -1500 ) ); }
        if ( scripts\engine\utility::cointoss( ) )  { l_location = l_location + ( anglestoleft( l_angle )       * randomintrange( 500 , 5000 ) ); }
        else                                        { l_location = l_location + ( anglestoright( l_angle )      * randomintrange( 500 , 5000 ) ); }
        if ( scripts\engine\utility::cointoss( ) )  { l_location = l_location + ( anglestoup( l_angle )         * randomintrange( 500 , 4000 ) ); }
        else                                        { l_location = l_location + ( anglestoup( l_angle )         * randomintrange( -500 , -4000 ) ); }

        // en: create a plane
        // ja: 機体を作成する
        level.lvlstat[l_optname + "_object"][i] = self createentityobject(
            /* notice */ undefined , /* point */ l_location , /* length */ undefined , /* script */ "script_model" , /* model */ l_modelid , /* collide */ undefined , /* sync */ undefined , /* angle */ l_angle , /* part */ true ,
            /* hpmin */ undefined , /* hpmax */ undefined , /* dmgtype */ undefined , /* dmgfx */ undefined , /* brktype */ undefined , /* brkfx */ undefined , /* dmgse */ undefined , /* brkse */ undefined , /* enddel */ undefined , /* name */ undefined
            );

        // en: move the aircraft forward at random times
        // ja: 機体を正面方向にランダムな時間で移動させる
        l_time = randomintrange( 40 , 50 );
        level.lvlstat[l_optname + "_object"][i] moveto( level.lvlstat[l_optname + "_object"][i].origin + ( anglestoforward( level.lvlstat[l_optname + "_object"][i].angles ) * ( 35000 + ( ( l_time - 40 ) * 1000 ) ) ) , l_time );
        level.lvlstat[l_optname + "_object"][i] thread deleteaftertime( l_time );

        // en : make the aircraft play sound effects on a loop
        // ja : 機体がループでサウンドエフェクトを再生させるようにする
        level.lvlstat[l_optname + "_object"][i] playloopsound( "weap_mortar_fly_lp" );
        
        // en : missile launch processing for each aircraft of the function "vanguardairstrike"
        // ja : 機能 "vanguardairstrike" の各機体のミサイル発射処理
        level.lvlstat[l_optname + "_object"][i] thread onprocessvanguardairstrikeplaneattack( /* optname */ l_optname , /* owner */ self , /* location */ l_airlocation , /* distance */ 7500 , /* weap */ scripts\engine\utility::random( l_weaponarray ) );
        
        wait 0.2;
    }

    l_end = false;

    wait l_time;
    wait 1;
    
    // en : make this mod available again
    // ja : このmodを再度利用できるようにする
    level.lvlstat[l_optname + "_object"] = undefined;
    level.lvlstat[l_optname + "deleting"] = undefined;
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
}



//++++++++++++++++++++++++++++++
// en : missile launch processing for each aircraft of the function "vanguardairstrike"
// ja : 機能 "vanguardairstrike" の各機体のミサイル発射処理
//++++++++++++++++++++++++++++++
onprocessvanguardairstrikeplaneattack( optname , owner , location , distance , weap )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : when this function is finished, finish the processing in this function
    // ja : この機能が終了されたら、この関数内の処理を終了する
    level endon( "end_lobby_" + optname );

    while ( isdefined( self ) )
    {
        // en: when the aircraft approaches the airstrike location
        // ja: 機体が空爆地点に近づいたら
        if ( distance( self.origin , location ) < distance )
        {
            // en: generates the specified bullet type and flies it from the start coordinate to the end coordinate (you are the owner of the bullet)
            // ja: 指定した弾の種類を生成し、開始座標から終了座標に向けて飛ばす（弾の所有者は自分自身）
            //createmagicbullet( owner , weap , ( self.origin + ( anglestoup( self.angles ) * -500 ) ) , ( self.origin + ( anglestoup( self.angles ) * -100000 ) ) );
            createmagicbullet( owner , weap , ( self.origin + ( 0 , 0 , -150 ) ) , ( self.origin + ( 0 , 0 , -100000 ) ) );
        }
        wait 0.3;
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "godmode"
// ja : 機能「無敵」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfgodmode( )
{
    // en : execute execgodmode( ) or exit depending on the existence state of the "godmode" variable
    // ja : 「godmode」変数の存在状態に合わせて、execgodmode( ) を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "godmode" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "godmode" ,
        /* optarg2 */   /* optfunc */   ::execgodmode ,
        /* optarg3 */   /* looptime */  1 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "godmode" for the specified player.
// ja : 指定したプレイヤーに対して、機能「無敵」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfgodmodeforplayer( )
{
    // en : execute onfgodmode( ) or exit for the specified player, depending on the existence state of the "infamgodmodemo" variable.
    // ja : 指定したプレイヤーに対して、「godmode」変数の存在状態に合わせて、onfgodmode( ) を実行するか終了する
    self switchonfplayerfunction( "godmode" , ::onfgodmode );
}



//++++++++++++++++++++++++++++++
// en : enables/disables the feature "godmode" for the all players.
// ja : 全プレイヤーに対して、機能 "godmode" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfgodmodeforallplayers( )
{
    self thread switchonfallplayersfunction( "godmode" , ::onfgodmode , undefined , true );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "godmode"
// ja : 機能 "無敵" の実行中の処理
//++++++++++++++++++++++++++++++
execgodmode( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en : if duplicate functions are activated, disable them
        // ja : 重複している機能が起動している場合、無効化させる
        //self checkduplicatefunction( "demigod" , ::execdemigod );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: if your current health is less than 10,000
        // ja: 現在の体力が 10000 を下回ったら
        if ( self.health < 10000 )
        {
            // en: increase health to 99999999
            // ja: 体力を 99999999 に上げる
            self.maxhealth  = 99999999;
            self.health     = 99999999;
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        // en: return to normal strength
        // ja: 通常の体力に戻す
        self.maxhealth  = 100;
        self.health     = 100;
    }
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "aimbot"
// ja : 機能 "aimbot" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbot( )
{
    // en : execute execaimbot( ) or exit depending on the existence state of the "aimbot" variable
    // ja : "aimbot" 変数の存在状態に合わせて、 execaimbot( )関数 を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "aimbot" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "aimbot" ,
        /* optarg2 */   /* optfunc */   ::execaimbot ,
        /* optarg3 */   /* looptime */  0.01 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "aimbot"
// ja : 機能 "aimbot" の実行中の処理
//++++++++++++++++++++++++++++++
execaimbot( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {                         
        // en: enable all suboptions of feature "aimbot" by default
        // ja: 機能 "aimbot" のサブオプションをデフォルトで全て有効にする
        if ( !isdefined( self.optstat[optname].moddata["attacktoforcekill"] ) )   { self.optstat[optname].moddata["attacktoforcekill"] = true; }
        // if ( !isdefined( self.optstat[optname].moddata["aimingrequired"] ) )      { self.optstat[optname].moddata["aimingrequired"] = true; }
        if ( !isdefined( self.optstat[optname].moddata["aimtracking"] ) )         { self.optstat[optname].moddata["aimtracking"] = true; }
        if ( !isdefined( self.optstat[optname].moddata["targettag"] ) )         { self.optstat[optname].moddata["targettag"] = "j_head"; }

        self thread onprocessaimbot( optname );
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: if there is an aim request
        // ja: エイム要求がある場合
        if ( isdefined( self.optstat[optname].moddata["aimingrequired"] ) )
        {
            // en: do not proceed to the next process while the "aim" button is not pressed.
            // ja: "エイム" ボタンが押されていない間は、次の処理に進まない
            if ( self getkeycodepressed( "buttonads" , "buttonads" ) == false ) { return; }
        }

        // en: get information on all participating players
        // ja: 参加中の全プレイヤー情報を取得
        foreach ( player in level.players )
        {
            // en: exclude yourself from aimbot
            // ja: 自分自身は aimbot の対象外とする
            if ( player == self )                                                                               { continue; }
            // en: if the other party is a host, it will not be targeted by aimbot.
            // ja: 相手がホストの場合は aimbot の対象外とする
            if ( player ishost( ) )                                                                             { continue; }
            if ( isdefined( self.optstat[optname].target ) && ( self.optstat[optname].target == player ) )      { continue; }
            // en: if the opponent is dead, it will not be targeted by aimbot.
            // ja: 相手が死んでいる場合は aimbot の対象外とする
            if ( !isalive( player ) )                                                                           { continue; }
            // en: in team mode, if your team is the same as your opponent's, it will not be targeted by aimbot.
            // ja: チーム形式のモードで、且つ相手と自分のチームが同じ場合は aimbot の対象外とする
            if ( level.teambased && ( self.pers["team"] == player.pers["team" ] ) )                             { continue; }
            // en: if the opponent is using godmode, it will not be targeted by aimbot.
            // ja: 相手が godmode を使用中の場合は aimbot の対象外とする
            if ( isdefined( player.optstat["demigod"] ) ||
                isdefined( player.optstat["godmode"] ) ||
                isdefined( player.optstat["nohitmode"] ) )                                                      { continue; }

            l_selfpart = self geteye( );
            l_enemypart = player gettagorigin( self.optstat[optname].moddata["targettag"] );

            // en: if you are setting stealth aim
            // ja: ステルスエイムを設定中の場合
            if ( isdefined( self.optstat[optname].moddata["aimstealth"] ) )
            {
                // en: if it is not possible to aim at the opponent's head coordinates from the current own head coordinates, it will not be targeted by aimbot.
                // ja: 現在の自身の頭の座標から、相手の頭の座標を狙う事が可能でない場合は aimbot の対象外とする
                if ( !scripts\engine\trace::_bullet_trace_passed( l_selfpart , l_enemypart , 0 , self ) )       { continue; }
                // en: if there is no opponent within your current field of vision, they will not be targeted by aimbot.
                // ja: 現在の自分の視界内に相手がいない場合 aimbot の対象外とする
                l_selfangle = anglestoforward( self getplayerangles( ) );
                l_enemyvector = vectornormalize( l_enemypart - l_selfpart );
                if ( vectordot( l_selfangle , l_enemyvector ) < 0.9 )                                           { continue; }
            }
            
            if ( isdefined( self.optstat[optname].target ) && ( isalive( self.optstat[optname].target ) ) && ( distance( self.origin , self.optstat[optname].target.origin ) <= distance( self.origin , player.origin ) ) ) { continue; }

            self.optstat[optname].target = player;
            break;
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "aimbot"
// ja : 機能 "aimbot" の実行中の処理
//++++++++++++++++++++++++++++++
onprocessaimbot( optname )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );
    // en : this function ends processing if "you die"
    // ja : この関数は「自分が死んだ」場合に処理を終了する
    self endon( "death" );
    // en: set the specified effect name as the function termination trigger
    // ja: 指定の機能名を関数の終了トリガーとする
    self endon( "finalize_" + optname );

    while ( true )
    {
        wait 0.001;

        if ( !isdefined( self.optstat[optname].target ) )                                                   { continue; }

        // en: if there is an aim request
        // ja: エイム要求がある場合
        if ( isdefined( self.optstat[optname].moddata["aimingrequired"] ) )
        {
            // en: do not proceed to the next process while the "aim" button is not pressed.
            // ja: "エイム" ボタンが押されていない間は、次の処理に進まない
            if ( self getkeycodepressed( "buttonads" , "buttonads" ) == false )                             { continue; }
        }

        l_selfpart = self geteye( );
        l_enemypart = self.optstat[optname].target gettagorigin( self.optstat[optname].moddata["targettag"] );

        // en: if the opponent is dead, it will not be targeted by aimbot.
        // ja: 相手が死んでいる場合は aimbot の対象外とする
        if ( !isalive( self.optstat[optname].target ) )                                                     { self.optstat[optname].target = undefined; continue; }
        // en: if the opponent is using godmode, it will not be targeted by aimbot.
        // ja: 相手が godmode を使用中の場合は aimbot の対象外とする
        if ( isdefined( self.optstat[optname].target.optstat["demigod"] ) ||
            isdefined( self.optstat[optname].target.optstat["godmode"] ) ||
            isdefined( self.optstat[optname].target.optstat["nohitmode"] ) )                                { self.optstat[optname].target = undefined; continue; }
        
        // en: if you are setting stealth aim
        // ja: ステルスエイムを設定中の場合
        if ( isdefined( self.optstat[optname].moddata["aimstealth"] ) )
        {
            // en: if it is not possible to aim at the opponent's head coordinates from the current own head coordinates, it will not be targeted by aimbot.
            // ja: 現在の自身の頭の座標から、相手の頭の座標を狙う事が可能でない場合は aimbot の対象外とする
                if ( !scripts\engine\trace::_bullet_trace_passed( l_selfpart , l_enemypart , 0 , self ) )   { continue; }
            // en: if there is no opponent within your current field of vision, they will not be targeted by aimbot.
            // ja: 現在の自分の視界内に相手がいない場合 aimbot の対象外とする
            l_selfangle = anglestoforward( self getplayerangles( ) );
            l_enemyvector = vectornormalize( l_enemypart - l_selfpart );
            if ( vectordot( l_selfangle , l_enemyvector ) < 0.9 )                                           { continue; }
        }
        
        // en: if you are setting aim tracking
        // ja: エイム追跡を設定中の場合
        if ( isdefined( self.optstat[optname].moddata["aimtracking"] ) )
        {
            // en: always aim your angle at the coordinates of your opponent's head
            // ja: 自分の角度を常に相手の頭の座標に向ける
            self setplayerangles( vectortoangles( l_enemypart - l_selfpart ) );
        }
        
        // en: when forced to kill during an attack or to kill automatically
        // ja: 攻撃時に強制キルする場合、もしくは自動キルする場合
        if ( !isdefined( self.optstat[optname].moddata["attacktoforcekill"] ) && !isdefined( self.optstat[optname].moddata["autokill"] ) ) { continue; }
        
        // en: if you do not kill automatically
        // ja: 自動キルしない場合
        if ( !isdefined( self.optstat[optname].moddata["autokill"] ) )
        {
            // en: do not proceed to the next process while the "attack" button is not pressed.
            // ja: "攻撃" ボタンが押されていない間は、次の処理に進まない
            if ( self getkeycodepressed( "buttonattack" , "buttonattack" ) == false )                       { continue; }
        }

        // en: inflict damage equal to the opponent's health with a headshot with the weapon you currently own.
        // ja: 相手に 今自分が所有している武器 で ヘッドショット で 相手の体力分ダメージを与える
        // player thread [[level.callbackplayerdamage]]( self , self , player.health , 2 , "MOD_HEAD_SHOT" , self getcurrentweapon( ) , ( 0 , 0 , 0 ) , ( 0 , 0 , 0 ) , "torso_upper" , 0 );
        l_mod = "MOD_HEAD_SHOT";
        if ( self.optstat[optname].moddata["targettag"] != "j_head" ) { l_mod = "MOD_RIFLE_BULLET"; }
        self.optstat[optname].target dodamage( self.optstat[optname].target.health , self.optstat[optname].target.origin , self , self , l_mod , getcompleteweaponname( self getcurrentweapon( ) ) );

        wait 0.05;
        self.optstat[optname].target = undefined;
    }
}



//++++++++++++++++++++++++++++++
// en : toggles the contents of the "targettag" suboption of the "aimbot" function
// ja : 機能 "aimbot" のサブオプション "targettag" の内容を切り替える
//++++++++++++++++++++++++++++++
switchaimbottargettag( )
{
    l_array = [];
    l_array[l_array.size] = "j_head";
    l_array[l_array.size] = "j_neck";
    l_array[l_array.size] = "j_mainroot";
    l_array[l_array.size] = "j_spineupper";
    l_array[l_array.size] = "j_spinelower";
    l_array[l_array.size] = "j_spine4";
    l_array[l_array.size] = "tag_stowed_back3";
    l_array[l_array.size] = "tag_weapon_left";
    l_array[l_array.size] = "j_knee_ri";
    l_array[l_array.size] = "j_ankle_le";
    l_array[l_array.size] = "j_shoulder_ri";
    l_array[l_array.size] = "j_shoulder_le";
    l_array[l_array.size] = "j_elbow_ri";
    l_array[l_array.size] = "j_elbow_le";
    l_array[l_array.size] = "j_hip_ri";
    l_array[l_array.size] = "j_hip_le";
    l_array[l_array.size] = "j_knee_ri";
    l_array[l_array.size] = "j_knee_le";

    self changeselfparameter( "aimbot" , "targettag" , undefined , ::onfaimbot , l_array , true , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "attacktoforcekill" of function "aimbot"
// ja : 機能 "aimbot" のサブオプション "attacktoforcekill" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbotattacktoforcekill( )
{
    // en : create or destroy a "attacktoforcekill" variable
    // ja : "attacktoforcekill" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "aimbot" ,
        /* optname2 */  "attacktoforcekill" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "aimingrequired" of function "aimbot"
// ja : 機能 "aimbot" のサブオプション "aimingrequired" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbotaimingrequired( )
{
    // en : create or destroy a "aimingrequired" variable
    // ja : "aimingrequired" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "aimbot" ,
        /* optname2 */  "aimingrequired" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "aimtracking" of function "aimbot"
// ja : 機能 "aimbot" のサブオプション "aimtracking" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbotaimtracking( )
{
    // en : create or destroy a "aimtracking" variable
    // ja : "aimtracking" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "aimbot" ,
        /* optname2 */  "aimtracking" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "aimstealth" of function "aimbot"
// ja : 機能 "aimbot" のサブオプション "aimstealth" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbotaimstealth( )
{
    // en : create or destroy a "aimstealth" variable
    // ja : "aimstealth" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "aimbot" ,
        /* optname2 */  "aimstealth" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "autokill" of function "aimbot"
// ja : 機能 "aimbot" のサブオプション "autokill" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfaimbotautokill( )
{
    // en : create or destroy a "autokill" variable
    // ja : "autokill" 変数の作成か破棄を行う
    self switchonfselfsubfunction(
        /* optname1 */  "aimbot" ,
        /* optname2 */  "autokill" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : generate a vehicle
// ja : 乗り物を生成する
//++++++++++++++++++++++++++++++
execspawnvehicle( )
{
    // en : get the vehicle id from the currently selected item
    // ja : 現在選択中の項目から、車両idを取得する
    l_vehiclename = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].textid;
    if ( !isdefined( level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam ) )
    {
        if ( getdvarint( "scr_allow_vehicle_" + l_vehiclename , 1 ) <= 0 )
        {
            setdvar( "scr_allow_vehicle_" + l_vehiclename , 1 );
        }
    }
    else
    {
        if ( getdvarint( "scr_allow_vehicle_" + "little_bird" , 1 ) <= 0 )
        {
            setdvar( "scr_allow_vehicle_" + "little_bird" , 1 );
        }
    }
    // en : if the vehicle is not loaded
    // ja : 車両がロードされていない場合
    if ( getdvarint( "scr_allow_vehicles" , 0 ) <= 0 )
    {
        setdvar( "scr_allow_vehicles" , 1 );
    }
    

    // en : define information to create a vehicle
    // ja : 乗り物を作成する情報を定義
    l_spawndata = spawnstruct( );
    l_spawndata.origin = self getplayerforwardtrace( undefined , true , 300 , undefined );
    l_spawndata.angles = self getplayerangles( );
    l_spawndata.owner = self;
    l_spawndata.spawntype = "GAME_MODE"; //GAME_MODE LEVEL

    l_spawnvec = undefined;

    if ( !isdefined( level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam ) )
    {

        l_spawnvec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( l_vehiclename , l_spawndata );
    }
    else
    {
        l_spawnvec = scripts\cp_mp\vehicles\vehicle_spawn::vehicle_spawn_spawnvehicle( "little_bird" , l_spawndata );
    }

    // en : if you were able to create a vehicle
    // ja : 乗り物を作成出来ていた場合
    if ( isdefined( l_spawnvec ) )
    {
        // en : set speed and health
        // ja : 速度と体力を設定
        l_spawnvec vehicle_setspeed( 100000 , 100000 , 50000 );
        l_spawnvec.maxhealth = 100000;
        l_spawnvec.health = l_spawnvec.maxhealth;

        
        // en: add the created object to the managed list
        // ja: 作成されたオブジェクトを管理リストに追加する
        if ( !isdefined( level.lvlstat["deletelastobject" + "_objectcount"] ) ) { level.lvlstat["deletelastobject" + "_objectcount"] = []; }
        level.lvlstat["deletelastobject" + "_objectcount"][level.lvlstat["deletelastobject" + "_objectcount"].size] = l_spawnvec;

        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "createobject" , undefined , l_vehiclename , undefined );
    }
    else
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "cannotusedata" , undefined , l_vehiclename , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : generate a tracking vehicle
// ja : 追跡用乗り物を生成する
//++++++++++++++++++++++++++++++
execspawntrackingvehicle( )
{
    // en : get the vehicle id from the currently selected item
    // ja : 現在選択中の項目から、車両idを取得する
    l_vehicletype = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].textid;
    l_vehicleinfo = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].subparam;
    

    // en : define information to create a vehicle
    // ja : 乗り物を作成する情報を定義
    l_spawndata = spawnstruct( );
    l_spawndata.origin = self getplayerforwardtrace( undefined , true , 300 , undefined );
    l_spawndata.angles = self getplayerangles( );
    l_spawndata.modelname = l_vehicleinfo[1];
    l_spawndata.vehicletype = l_vehicletype;
    l_spawndata.targetname = l_vehicleinfo[0];
    l_struct = spawnstruct( );

    l_spawnvec = scripts\cp_mp\vehicles\vehicle_tracking::_spawnvehicle( l_spawndata , l_struct );
    
    // en : if you were able to create a vehicle
    // ja : 乗り物を作成出来ていた場合
    if ( isdefined( l_spawnvec ) )
    {
        l_optname = "deletelastobject_objectcount";

        // en: add the created object to the managed list
        // ja: 作成されたオブジェクトを管理リストに追加する
        if ( !isdefined( level.lvlstat[l_optname] ) ) level.lvlstat[l_optname] = [];
        level.lvlstat[l_optname][level.lvlstat[l_optname].size] = l_spawnvec;

        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "notice" , "createobject" , undefined , l_vehicletype , undefined );
    }
    else
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "cannotusedata" , undefined , l_vehicletype , undefined );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "advanced forge mode"
// ja : 機能「advanced forge mode」の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfadvancedforgemode( )
{
    // en : execute execadvancedforgemode( ) or exit depending on the existence state of the "advancedforgemode" variable
    // ja : 「advancedforgemode」変数の存在状態に合わせて、execadvancedforgemode 関数を実行するか終了する
    self switchonfselffunction(
        /* optname */                   "advancedforgemode" ,
        /* optfunc */                   ::execloopfunction ,
        /* message */                   undefined ,
        /* optarg1 */   /* optname */   "advancedforgemode" ,
        /* optarg2 */   /* optfunc */   ::execadvancedforgemode ,
        /* optarg3 */   /* looptime */  0.01 ,
        /* optarg4 */                   undefined ,
        /* optarg5 */                   undefined ,
        /* optarg6 */                   undefined ,
        /* optarg7 */                   undefined ,
        /* weaponid */                  undefined ,
        /* inprojectile */              undefined ,
        /* onlygroup */                 undefined ,
        /* attachmentid */              undefined ,
        /* camoid */                    undefined ,
        /* camogroup */                 undefined ,
        /* dualmode */                  undefined
        );
}



//++++++++++++++++++++++++++++++
// en : processing during execution of the function "advanced forge mode"
// ja : 機能「advanced forge mode」の実行中の処理
//++++++++++++++++++++++++++++++
execadvancedforgemode( optname , procstage )
{
    // en: initialization process
    // ja: 初期化処理
    if ( procstage == 0 /* moddef.mod_initialize */ )
    {
        // en : initialize each parameter
        // ja : 各パラメーターを初期化する
        if ( !isdefined( self.optstat[optname].moddata["changespawnedmodel"] ) )
        {
            self.optstat[optname].moddata["changespawnedmodel"] = "military_crate_large_stackable_01_dummy";
        }
        if ( !isdefined( self.optstat[optname].moddata["changespawnedtime"] ) )
        {
            self.optstat[optname].moddata["changespawnedtime"] = 0.05;
        }
        if ( !isdefined( self.optstat[optname].moddata["spawnlength"] ) )
        {
            self.optstat[optname].moddata["spawnlength"] = 100;
        }
        if ( !isdefined( self.optstat[optname].moddata["ignorecollision"] ) )
        {
            self.optstat[optname].moddata["ignorecollision"] = true;
        }
        if ( !isdefined( self.optstat["deletelastobject" + "_objectcount"] ) )
        {
            self.optstat["deletelastobject" + "_objectcount"] = [];
        }

        // en: the stored object data is discarded.
        // ja: 記憶していたオブジェクトデータを破棄する
        self.optstat[optname].moddata["currentobject"] = undefined;
        self.optstat[optname].moddata["beforeobject"] = undefined;
        self.optstat[optname].moddata["looping"] = undefined;
    }
    // en: running process
    // ja: 実行中処理
    else if ( procstage == 1 /* moddef.mod_processing*/ )
    {
        // en: while the "aim" button is pressed
        // ja: "エイム" ボタンが押されている間
        if ( self getkeycodepressed( "buttonads" , "buttonads" ) )
        {
            // en: while the "use" button is also pressed at the same time
            // ja: "使用" ボタンも同時に押されている間
            if ( self getkeycodepressed( "buttonuse" , "buttonuse" ) )
            {
                // en: when not in object acquisition loop processing
                // ja: オブジェクト取得ループ処理に入っていない場合
                if ( !isdefined( self.optstat[optname].moddata["looping"] ) )
                {
                    // en: if the previously stored object data exists
                    // ja: 直前に記憶していたオブジェクトデータが存在する場合
                    if ( isdefined( self.optstat[optname].moddata["currentobject"] ) )
                    {
                        // en: back up the object data as the previous data
                        // ja: そのオブジェクトデータを1つ前のデータとしてバックアップする
                        self.optstat[optname].moddata["beforeobject"] = self.optstat[optname].moddata["currentobject"];
                        // en: the stored object data is discarded.
                        // ja: 記憶していたオブジェクトデータを破棄する
                        self.optstat[optname].moddata["currentobject"] = undefined;
                    }

                    // en: set that object acquisition loop processing has entered
                    // ja: オブジェクト取得ループ処理に入ったと設定する
                    self.optstat[optname].moddata["looping"] = true;

                    while ( true )
                    {
                        // en: the infinite loop ends when the "use" button is released.
                        // ja: 「使用」ボタンが離されたら無限ループ終了
                        if ( self getkeycodepressed( "buttonuse" , "buttonuse" ) == false )
                        {
                            self.optstat[optname].moddata["looping"] = undefined;
                            break;
                        }
                        
                        // en: if there are no remembered objects
                        // ja: 記憶されているオブジェクトが無い場合
                        if ( !isdefined( self.optstat[optname].moddata["currentobject"] ) )
                        {
                            // en : obtain trace results 1000000 times further away in the front direction
                            // ja : 正面方向へ 1000000 倍先の距離のトレース結果を取得する
                            l_hitresult = self getplayerforwardtrace( true , true , 1000000 );
                            // scripts\engine\trace::ray_trace( l_eyelocation , l_endlocation , self , scripts\engine\trace::create_world_contents( ) );
                        
                            // en: if object data exists at the location of the hit
                            // ja: ヒットした先にオブジェクトデータが存在したら
                            if ( isdefined( l_hitresult["entity"] ) )
                            {
                                // en: remember object information
                                // ja: オブジェクト情報を記憶する
                                self.optstat[optname].moddata["currentobject"] = l_hitresult["entity"];
                            }
                        }
                        // en: if there is a remembered object
                        // ja: 記憶されているオブジェクトがある場合
                        else
                        {
                            // en: when the "lethal" button is pressed
                            // ja: 「リーサル」ボタンが押されたら
                            if ( self getkeycodepressed( "buttonlethal" , "buttonlethal" ) )
                            {
                                // en: display the text "[notification] delete object: object name" in the center of the screen
                                // ja: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
                                self showcentermessage( self.curlang , "notice" , "deleteobject" , undefined , self.optstat[optname].moddata["currentobject"].model , undefined );
                                
                                // en: delete an object
                                // ja: オブジェクトを削除する
                                self.optstat[optname].moddata["currentobject"] deleteentity( );
                            }
                            else
                            {
                                l_objectlocation = undefined;
                                // en: if the ignore collision setting is enabled
                                // ja: コリジョン無視設定が有効になっている場合
                                if ( isdefined( self.optstat[optname].moddata["ignorecollision"] ) )
                                {
                                    // en : obtain the corrected coordinates shifted slightly downward at the specified distance in the front direction.
                                    // ja : 正面方向へ 指定倍先の距離 の、若干下にずらした修正座標を取得する
                                    l_objectlocation = self getplayerforwardtrace( /* trace */ undefined , /* eye */ true , /* length */ self.optstat[optname].moddata["spawnlength"] , /* up */ undefined );
                                }
                                // en: if the ignore collision setting is disabled
                                // ja: コリジョン無視設定が無効になっている場合
                                else
                                {
                                    // en : obtain the corrected coordinates shifted slightly downward at the specified distance in the front direction.
                                    // ja : 正面方向へ 指定倍先の距離 の、若干下にずらした修正座標を取得する
                                    l_tracelocation = self getplayerforwardtrace( /* trace */ true , /* eye */ true , /* length */ self.optstat[optname].moddata["spawnlength"] , /* up */ undefined );
                                    if ( isdefined( l_tracelocation["position"] ) ) { l_objectlocation = l_tracelocation["position"]; }
                                    else                                            { l_objectlocation = self.optstat[optname].moddata["currentobject"].origin; }

                                    l_objectlocation += anglestoforward( self getplayerangles( ) ) * 15;
                                    l_objectlocation += anglestoup( self getplayerangles( ) ) * -( 10 );
                                }

                                // en: set object coordinates
                                // ja: オブジェクトの座標を設定する
                                self.optstat[optname].moddata["currentobject"] setorigin( l_objectlocation );
                                self.optstat[optname].moddata["currentobject"].origin = l_objectlocation;

                                // en: if the object is not rotated
                                // ja: オブジェクトが回転していない場合
                                if ( !isdefined( self.optstat[optname].moddata["currentobject"].spinningmode ) )
                                {
                                    
                                    // en: if "x-axis rotation setting" is enabled
                                    // ja: "x軸回転設定" が 有効 になっている場合
                                    if ( isdefined( self.optstat[optname].moddata["rotatexaxis"] ) )
                                    {
                                        l_objectangle = self getplayerangles( );
                                        l_objectangle = ( l_objectangle[0] , l_objectangle[1] , 0 );
                                    }
                                    // en: if "x-axis rotation setting" is disabled
                                    // ja: "x軸回転設定" が 無効 になっている場合
                                    else
                                    {
                                        l_objectangle = self getplayerangles( );
                                        l_objectangle = ( 0 , l_objectangle[1] , 0 );
                                    }
                                    // en: set the object angle
                                    // ja: オブジェクトの角度を設定する
                                    self.optstat[optname].moddata["currentobject"].angles = l_objectangle;
                                }

                                // en: display the text "[notification] get object: object name" in the center of the screen.
                                // ja: 画面中央に「[通知] オブジェクトを取得 : オブジェクト名」という文章を表示する
                                self showcentermessage( self.curlang , "notice" , "getobject" , undefined , self.optstat[optname].moddata["currentobject"].model , undefined );
                            }
                        }

                        wait 0.01;
                    }
                }
            }
        }
        // en: when the "aim" button is not pressed
        // ja: "エイム" ボタンが押されていない時に
        else
        {
            // en: while the "use" button is pressed
            // ja: 「使用」ボタンが押されている間
            if ( self getkeycodepressed( "buttonuse" , "buttonuse" ) )
            {
                // en: when the "reload" button is pressed (if using a controller, use the "tactical throw" button)
                // ja: 「リロード」ボタンが押されたら（コントローラーの場合は「タクティカル投球」ボタン）
                if ( self getkeycodepressed( "buttontactical" , "buttontactical" ) )
                {
                    // en: back up the previous object data
                    // ja: 1つ前のオブジェクトデータをバックアップする
                    if ( !isdefined( self.optstat[optname].moddata["beforeobject"] ) )
                    {
                        self.optstat[optname].moddata["beforeobject"] = self.optstat[optname].moddata["currentobject"];
                    }

                    // en: generates the model data being set in front of you at the specified distance in front of you.
                    // ja: 正面方向に 指定倍先の距離、自分の目の前に、設定中のモデルデータを生成する
                    l_object = self createentityobject(
                        /* notice */    true ,
                        /* location */  undefined ,
                        /* length */    self.optstat[optname].moddata["spawnlength"] ,
                        /* script */    "script_model" , 
                        /* model */     self.optstat[optname].moddata["changespawnedmodel"] ,
                        /* collide */   true ,
                        /* sync */      self.optstat[optname].moddata["rotatexaxis"] ,
                        /* angle */     undefined ,
                        /* part */      true ,
                        /* hpmin */     1000 ,
                        /* hpmax */     2000 ,
                        /* dmgtype */   "getplay" ,
                        /* dmgfx */     "money" ,
                        /* brktype */   "getplay" ,
                        /* brkfx */     "claymore_explode" ,
                        /* dmgse */     "recondrone_damaged" ,
                        /* brkse */     "veh_apache_explode_mp" ,
                        /* del */       true ,
                        /* optname */   undefined
                        );

                    if ( isdefined( l_object ) )
                    {
                        // en: add the created object to the managed list
                        // ja: 作成されたオブジェクトを管理リストに追加する
                        self.optstat["deletelastobject" + "_objectcount"][self.optstat["deletelastobject" + "_objectcount"].size] = l_object;
                        // en: remember the currently created object
                        // ja: 現在作成されたオブジェクトを記憶する
                        self.optstat[optname].moddata["currentobject"] = l_object;

                        // en : if suboption "autolinkonspawn" is enabled
                        // ja : サブオプション "autolinkonspawn" が有効の場合
                        if ( isdefined( self.optstat[optname].moddata["autolinkonspawn"] ) )
                        {
                            // en: combine current and previous objects
                            // ja: 現在と直前のオブジェクトを結合する
                            self execforgemodecombineobject( );
                        }
                    }

                    // en: wait for specified interval
                    // ja: 指定インターバル分待機する
                    wait self.optstat[optname].moddata["changespawnedtime"];
                }
                // en: when the "melee attack" button is pressed
                // ja: 「近接攻撃」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonmelee" , "buttonmelee" ) )
                {
                    // en: back up the previous object data
                    // ja: 1つ前のオブジェクトデータをバックアップする
                    if ( !isdefined( self.optstat[optname].moddata["beforeobject"] ) )
                    {
                        self.optstat[optname].moddata["beforeobject"] = self.optstat[optname].moddata["currentobject"];
                    }

                    // en: generates memorized object data in front of you at a specified distance in front of you.
                    // ja: 正面方向に 指定倍先の距離、自分の目の前に、記憶していたオブジェクトデータを生成する
                    l_object = self createentityobject(
                        /* notice */    true ,
                        /* location */  undefined ,
                        /* length */    self.optstat[optname].moddata["spawnlength"] ,
                        /* script */    "script_model" , 
                        /* model */     self.optstat[optname].moddata["currentobject"].model ,
                        /* collide */   true ,
                        /* sync */      self.optstat[optname].moddata["rotatexaxis"] ,
                        /* angle */     undefined ,
                        /* part */      true ,
                        /* hpmin */     100 ,
                        /* hpmax */     500 ,
                        /* dmgtype */   "getplay" ,
                        /* dmgfx */     "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
                        /* brktype */   "getplay" ,
                        /* brkfx */     "med_transport_explode" ,
                        /* dmgse */     "ks_a10_fire_dist_crack" ,
                        /* brkse */     "iw8_rc_plane_engine_exp" ,
                        /* del */       true ,
                        /* optname */   undefined
                        );

                    if ( isdefined( l_object ) )
                    {
                        // en: add the created object to the managed list
                        // ja: 作成されたオブジェクトを管理リストに追加する
                        self.optstat["deletelastobject" + "_objectcount"][self.optstat["deletelastobject" + "_objectcount"].size] = l_object;
                        // en: remember the currently created object
                        // ja: 現在作成されたオブジェクトを記憶する
                        self.optstat[optname].moddata["currentobject"] = l_object;

                        // en : if suboption "autolinkonspawn" is enabled
                        // ja : サブオプション "autolinkonspawn" が有効の場合
                        if ( isdefined( self.optstat[optname].moddata["autolinkonspawn"] ) )
                        {
                            // en: combine current and previous objects
                            // ja: 現在と直前のオブジェクトを結合する
                            self execforgemodecombineobject( );
                        }
                    }

                    // en: wait for specified interval
                    // ja: 指定インターバル分待機する
                    wait self.optstat[optname].moddata["changespawnedtime"];
                }
                // en: when the "lethal" button is pressed
                // ja: 「リーサル」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonlethal" , "buttonlethal" ) )
                {
                    // en: change the generated model
                    // ja: 生成するモデルを変更する
                    self switchforgemodemodel( );
                    wait 0.3;
                }
                // en: when the "jump" button is pressed
                // ja: 「ジャンプ」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
                {
                    // en: toggle x-axis rotation settings
                    // ja: x軸回転設定を切り替える
                    self onfforgemoderotatexaxis( );
                    wait 0.3;
                }
                // en: when the "crouch/prone" button is pressed
                // ja: 「しゃがみ・伏せ」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonstance" , "buttonstance" ) )
                {
                    // en: switch on/off of the process generated at the launch destination
                    // ja: 発射先に生成する処理の有無効化を切り替える
                    self onfforgemodefiredcreate( );
                    wait 0.3;
                }
                // en: when the "tacticalthrow" button is pressed
                // ja: "タクティカル投球" ボタンが押されている間
                else if ( self getkeycodepressed( "buttonattack" , "buttonattack" ) )
                {
                    // en: switch generation interval
                    // ja: 生成インターバルを切り替える
                    self switchforgemodespawnedtime( );
                    wait 0.3;
                }
            }
            // en: while the "melee attack" button is pressed
            // ja: "近接攻撃" ボタンが押されている間
            else if ( self getkeycodepressed( "buttonmelee" , "buttonmelee" ) )
            {
                // en: when the "jump" button is pressed
                // ja: 「ジャンプ」ボタンが押されたら
                if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
                {
                    // en: delete the last created object
                    // ja: 最後に作成したオブジェクトを削除する
                    self execforgemodedeletelastobject( );
                }
                // en: when the "lethal" button is pressed
                // ja: 「リーサル」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonlethal" , "buttonlethal" ) )
                {
                    // en: switch the trace distance when moving the model
                    // ja: モデル移動時のトレース距離を切り替える
                    self switchforgemodemovesize( );
                    wait 0.3;
                }
                // en: when the "crouch/prone" button is pressed
                // ja: 「しゃがみ・伏せ」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonstance" , "buttonstance" ) )
                {
                    // en : enable/disable suboption "autolinkonspawn" of function "advancedforgemode"
                    // ja : 機能 "advancedforgemode" の サブオプション "autolinkonspawn" の有効/無効を切り替える
                    self onfforgemodeautolinkonspawn( );
                    wait 0.3;
                }
            }
            // en: when the "tacticalthrow" button is pressed
            // ja: "タクティカル投球" ボタンが押されている間
            else if ( self getkeycodepressed( "buttontactical" , "buttontactical" ) )
            {
                // en: when the "jump" button is pressed
                // ja: 「ジャンプ」ボタンが押されたら
                if ( self getkeycodepressed( "buttonjump" , "buttonjump" ) )
                {
                    // en: combine current and previous objects
                    // ja: 現在と直前のオブジェクトを結合する
                    self execforgemodecombineobject( );
                    wait 0.3;
                }
                // en: when the "crouch/prone" button is pressed
                // ja: 「しゃがみ・伏せ」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonstance" , "buttonstance" ) )
                {
                    // en : change the rotation mode of the current object
                    // ja : 現在のオブジェクトの回転モードを変更する
                    self switchforgemodespinningmode( );
                    wait 0.3;
                }
                // en: when the "lethal" button is pressed
                // ja: 「リーサル」ボタンが押されたら
                else if ( self getkeycodepressed( "buttonlethal" , "buttonlethal" ) )
                {
                    // en : change the movement mode of the current object
                    // ja : 現在のオブジェクトの移動モードを変更する
                    self switchforgemodemovementmode( );
                    wait 0.3;
                }
            }
        }
    }
    // en: end processing
    // ja: 終了処理
    else if ( procstage == 2 /* moddef.mod_finalize */ )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "autolinkonspawn" of function "advancedforgemode"
// ja : 機能 "advancedforgemode" の サブオプション "autolinkonspawn" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfforgemodeautolinkonspawn( )
{
    self switchonfselfsubfunction(
        /* optname1 */  "advancedforgemode" ,
        /* optname2 */  "autolinkonspawn" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "rotatexaxis" of function "advancedforgemode"
// ja : 機能 "advancedforgemode" の サブオプション "rotatexaxis" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfforgemoderotatexaxis( )
{
    self switchonfselfsubfunction(
        /* optname1 */  "advancedforgemode" ,
        /* optname2 */  "rotatexaxis" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "firedcreate" of function "advancedforgemode"
// ja : 機能 "advancedforgemode" の サブオプション "firedcreate" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfforgemodefiredcreate( )
{
    self switchonfselfsubfunction(
        /* optname1 */                          "advancedforgemode" ,
        /* optname2 */                          "firedcreate" ,
        /* optdata */                           true ,
        /* optfunc */                           ::waitfirebullets ,
        /* notice */                            true ,
        /* optarg1 */   /* optname1 */          "advancedforgemode" ,
        /* optarg2 */   /* optname2 */          "firedcreate" ,
        /* optarg3 */   /* optfunc */           ::createobjecttofiredlocation ,
        /* optarg4 */   /* notice */            undefined ,
        /* optarg5 */   /* specificweapon */    undefined ,
        /* optarg6 */   /* effectdata */        undefined ,
        /* optarg7 */   /* enddeath */          undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : enable/disable suboption "ignorecollision" of function "advancedforgemode"
// ja : 機能 "advancedforgemode" の サブオプション "ignorecollision" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfforgemodeignorecollision( )
{
    self switchonfselfsubfunction(
        /* optname1 */  "advancedforgemode" ,
        /* optname2 */  "ignorecollision" ,
        /* optdata */   true ,
        /* optfunc */   undefined ,
        /* notice */    true ,
        /* optarg1 */   undefined ,
        /* optarg2 */   undefined ,
        /* optarg3 */   undefined,
        /* optarg4 */   undefined ,
        /* optarg5 */   undefined ,
        /* optarg6 */   undefined ,
        /* optarg7 */   undefined 
        );
}



//++++++++++++++++++++++++++++++
// en : switch the type of suboption "changespawnedtime" of function "advancedforgemode"
// ja : 機能 "advancedforgemode" の サブオプション "changespawnedtime" の種類を切り替える
//++++++++++++++++++++++++++++++
switchforgemodespawnedtime( )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array =
    [
        0.01 ,
        0.02 ,
        0.03 ,
        0.04 ,
        0.05 ,
        0.06 ,
        0.07 ,
        0.08 ,
        0.09 ,
        0.1 ,
        0.15 ,
        0.2 ,
        0.25 ,
        0.3 ,
        0.4 ,
        0.5 ,
        0.6 ,
        0.7 ,
        0.8 ,
        0.9 ,
        1.0
    ];
    

    self changeselfparameter( "advancedforgemode" , "changespawnedtime" , undefined , ::onfadvancedforgemode , l_array , true , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : combine the current and previous objects obtained with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で取得した現在と直前のオブジェクトを結合する
//++++++++++++++++++++++++++++++
execforgemodecombineobject( )
{
    l_optname = "advancedforgemode";
    l_current = "currentobject";
    l_before = "beforeobject";
    
    // en : if the current object exists
    // ja : 現在のオブジェクトが存在する場合
    if ( isdefined( self.optstat[l_optname].moddata[l_current] ) )
    {
        // en : if the objects are not yet combined
        // ja : オブジェクトがまだ結合されていない場合
        if ( !isdefined( self.optstat[l_optname].moddata[l_current].combinedobject ) )
        {
            // en : if the previous objects exist
            // ja : 直前のオブジェクトが存在する場合
            if ( isdefined( self.optstat[l_optname].moddata[l_before] ) )
            {
                // en : link the current object to the previous object
                // ja : 現在のオブジェクトを直前のオブジェクトにリンクする
                self.optstat[l_optname].moddata[l_current] linkto( self.optstat[l_optname].moddata[l_before] );
                self.optstat[l_optname].moddata[l_current].combinedobject = true;
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "notice" , "combineobject" , undefined , self.optstat[l_optname].moddata[l_current].model , undefined );
            }
            // en : if the object does not exist
            // ja : オブジェクトが存在しない場合
            else
            {
                // en: display the specified text in the center of the screen
                // ja: 画面中央に指定の文章を表示する
                self showcentermessage( self.curlang , "warning" , "noobject" , undefined , undefined , undefined );
            }
        }
        // en : if the object is already joined
        // ja : オブジェクトが結合済みの場合
        else
        {
            // en : unlink current object
            // ja : 現在のオブジェクトのリンクを解除する
            self.optstat[l_optname].moddata[l_current] unlink( );
            self.optstat[l_optname].moddata[l_current].combinedobject = undefined;
            // en: display the specified text in the center of the screen
            // ja: 画面中央に指定の文章を表示する
            self showcentermessage( self.curlang , "notice" , "unlinkobject" , undefined , self.optstat[l_optname].moddata[l_current].model , undefined );
        }
    }
    // en : if the current object does not exist
    // ja : 現在のオブジェクトが存在しない場合
    else
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "noobject" , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : always move the current object obtained with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトを常に移動させる
//++++++++++++++++++++++++++++++
switchforgemodemovementmode( )
{
    l_optname = "advancedforgemode";
    l_current = "currentobject";

    // en : if the current object exists
    // ja : 現在のオブジェクトが存在する場合
    if ( isdefined( self.optstat[l_optname].moddata[l_current] ) )
    {
        // en : temporarily stop the movement process of the current object
        // ja : 現在のオブジェクトの移動処理を一旦停止させる
        self.optstat[l_optname].moddata[l_current] notify( "end_objectmoving" );
        // en : change the movement mode of the current object
        // ja : 現在のオブジェクトの移動モードを変更する
        self.optstat[l_optname].moddata[l_current] thread execforgemodemovementmode( self );
    }
    // en : if the current object does not exist
    // ja : 現在のオブジェクトが存在しない場合
    else
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "noobject" , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : change the movement mode of the current object obtained with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトの移動モードを変更する
//++++++++++++++++++++++++++++++
execforgemodemovementmode( owner )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function terminates processing when "the object's movement mode has changed"
    // ja : この関数は「オブジェクトの移動モードが変更された」場合に処理を終了する
    self endon( "end_objectmoving" );

    l_time = 2;
    l_wait = 1;
    l_text = "";
    l_value = 200;

    // en : initialize the movement pattern if movement processing has not started
    // ja : 移動処理が始まっていない場合、移動パターンを初期化する
    if ( !isdefined( self.movementmode ) )      { self.movementmode = 0; }
    // en : if movement processing has started, change the movement pattern
    // ja : 移動処理が開始されてる場合、回転パターンを変更する
    else if ( isdefined( self.movementmode ) )  { self.movementmode += 1; }

    switch ( self.movementmode )
    {
        case 0:     l_text = "moveup"; break;
        case 1:     l_text = "movedown"; break;
        case 2:     l_text = "moveupdown"; break;
        case 3:     l_text = "moveright"; break;
        case 4:     l_text = "moveleft"; break;
        case 5:     l_text = "moverightleft"; break;
        case 6:     l_text = "moveforward"; break;
        case 7:     l_text = "moveback"; break;
        case 8:     l_text = "moveforwardback"; break;
        default:    l_text = "movestop"; break;
    }
    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    owner showcentermessage( owner.curlang , "notice" , l_text , undefined , undefined , undefined );

    // en: infinite loop until object no longer exists
    // ja: オブジェクトが存在しなくなるまで無限ループ
    while ( isdefined( self ) )
    {
        // en: end infinite loop when loop pattern exceeds 8
        // ja: ループパターンが 8 を超えたら、無限ループを終了する
        if ( 8 < self.movementmode ) { break; }

        switch ( self.movementmode )
        {
            case 0:
                self moveto(    self.origin + ( 0 , 0 , l_value )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , 0 , l_value * -1 )  , l_time ); wait l_time;
                break;

            case 1:
                self moveto(    self.origin + ( 0 , 0 , l_value * -1 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , 0 , l_value )       , l_time ); wait l_time;
                break;

            case 2:
                self moveto(    self.origin + ( 0 , 0 , l_value )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , 0 , l_value * -1 )  , l_time ); wait l_time;
                self moveto(    self.origin + ( 0 , 0 , l_value * -1 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , 0 , l_value )       , l_time ); wait l_time;
                break;

                
            case 3:
                self moveto(    self.origin + ( l_value , 0 , 0 )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( l_value * -1 , 0 , 0 )  , l_time ); wait l_time;
                break;

            case 4:
                self moveto(    self.origin + ( l_value * -1 , 0 , 0 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( l_value , 0 , 0 )       , l_time ); wait l_time;
                break;

            case 5:
                self moveto(    self.origin + ( l_value , 0 , 0 )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( l_value * -1 , 0 , 0 )  , l_time ); wait l_time;
                self moveto(    self.origin + ( l_value * -1 , 0 , 0 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( l_value , 0 , 0 )       , l_time ); wait l_time;
                break;

                
            case 6:
                self moveto(    self.origin + ( 0 , l_value , 0 )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , l_value * -1 , 0 )  , l_time ); wait l_time;
                break;

            case 7:
                self moveto(    self.origin + ( 0 , l_value * -1 , 0 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , l_value , 0 )       , l_time ); wait l_time;
                break;

            case 8:
                self moveto(    self.origin + ( 0 , l_value , 0 )       , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , l_value * -1 , 0 )  , l_time ); wait l_time;
                self moveto(    self.origin + ( 0 , l_value * -1 , 0 )  , l_time ); wait l_time; wait l_wait;
                self moveto(    self.origin + ( 0 , l_value , 0 )       , l_time ); wait l_time;
                break;
        }
        wait l_time;
    }

    self.movementmode = undefined;
}



//++++++++++++++++++++++++++++++
// en : always rotate the current object obtained with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトを常に回転させる
//++++++++++++++++++++++++++++++
switchforgemodespinningmode( )
{
    l_optname = "advancedforgemode";
    l_current = "currentobject";

    // en : if the current object exists
    // ja : 現在のオブジェクトが存在する場合
    if ( isdefined( self.optstat[l_optname].moddata[l_current] ) )
    {
        // en : temporarily stop the rotation process of the current object
        // ja : 現在のオブジェクトの回転処理を一旦停止させる
        self.optstat[l_optname].moddata[l_current] notify( "end_objectrotation" );
        // en : change the rotation mode of the current object
        // ja : 現在のオブジェクトの回転モードを変更する
        self.optstat[l_optname].moddata[l_current] thread execforgemodespinningmode( self );
    }
    // en : if the current object does not exist
    // ja : 現在のオブジェクトが存在しない場合
    else
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "noobject" , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : change the rotation mode of the current object obtained with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトの回転モードを変更する
//++++++++++++++++++++++++++++++
execforgemodespinningmode( owner )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function terminates processing when "the object's rotation mode has changed"
    // ja : この関数は「オブジェクトの回転モードが変更された」場合に処理を終了する
    self endon( "end_objectrotation" );

    l_time = 0;
    l_text = "";
    l_value = 0;

    // en : initialize the rotation pattern if rotation processing has not started
    // ja : 回転処理が始まっていない場合、回転パターンを初期化する
    if ( !isdefined( self.spinningmode ) )      { self.spinningmode = 0;}
    // en : if rotation processing has started, change the rotation pattern
    // ja : 回転処理が開始されてる場合、回転パターンを変更する
    else if ( isdefined( self.spinningmode ) )  { self.spinningmode += 1; }

    switch ( self.spinningmode )
    {
        case 0:     l_text = "spinyaw";     l_value = 360;  l_time = 3; break;
        case 1:     l_text = "spinyaw";     l_value = 360;  l_time = 2; break;
        case 2:     l_text = "spinyaw";     l_value = 360;  l_time = 1; break;
        case 3:     l_text = "spinyaw";     l_value = -360; l_time = 3; break;
        case 4:     l_text = "spinyaw";     l_value = -360; l_time = 2; break;
        case 5:     l_text = "spinyaw";     l_value = -360; l_time = 1; break;
        case 6:     l_text = "spinroll";    l_value = 360;  l_time = 3; break;
        case 7:     l_text = "spinroll";    l_value = 360;  l_time = 2; break;
        case 8:     l_text = "spinroll";    l_value = 360;  l_time = 1; break;
        case 9:     l_text = "spinroll";    l_value = -360; l_time = 3; break;
        case 10:    l_text = "spinroll";    l_value = -360; l_time = 2; break;
        case 11:    l_text = "spinroll";    l_value = -360; l_time = 1; break;
        case 12:    l_text = "spinpitch";   l_value = 360;  l_time = 3; break;
        case 13:    l_text = "spinpitch";   l_value = 360;  l_time = 2; break;
        case 14:    l_text = "spinpitch";   l_value = 360;  l_time = 1; break;
        case 15:    l_text = "spinpitch";   l_value = -360; l_time = 3; break;
        case 16:    l_text = "spinpitch";   l_value = -360; l_time = 2; break;
        case 17:    l_text = "spinpitch";   l_value = -360; l_time = 1; break;
        default:    l_text = "spinstop"; break;
    }
    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    owner showcentermessage( owner.curlang , "notice" , l_text , undefined , l_value + " / " + l_time , undefined );

    // en: infinite loop until object no longer exists
    // ja: オブジェクトが存在しなくなるまで無限ループ
    while ( isdefined( self ) )
    {
        // en: end infinite loop when loop pattern exceeds 17
        // ja: ループパターンが 17 を超えたら、無限ループを終了する
        if ( 17 < self.spinningmode ) { break; }

        switch ( self.spinningmode )
        {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                self rotateyaw(     l_value , l_time );
                break;
                
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                self rotateroll(    l_value , l_time );
                break;
                
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                self rotatepitch(    l_value , l_time );
                break;
        }
        wait l_time;
    }

    self.spinningmode = undefined;
}



//++++++++++++++++++++++++++++++
// en : always sync the current object obtained with the function "advancedforgemode" to yourself
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトを常に自分に同期させる
//++++++++++++++++++++++++++++++
switchforgemodelinkself( )
{
    l_optname = "advancedforgemode";
    l_current = "currentobject";

    // en : if the current object exists
    // ja : 現在のオブジェクトが存在する場合
    if ( isdefined( self.optstat[l_optname].moddata[l_current] ) )
    {
        // en : change the current object's player following state
        // ja : 現在のオブジェクトのプレイヤー追従状態を変更する
        self.optstat[l_optname].moddata[l_current] thread execforgemodelinkself( self );
    }
    // en : if the current object does not exist
    // ja : 現在のオブジェクトが存在しない場合
    else
    {
        // en: display the specified text in the center of the screen
        // ja: 画面中央に指定の文章を表示する
        self showcentermessage( self.curlang , "warning" , "noobject" , undefined , undefined , undefined );
    }
}



//++++++++++++++++++++++++++++++
// en : always sync the current object obtained with the function "advancedforgemode" to yourself
// ja : 機能 "advancedforgemode" で取得した現在のオブジェクトを常に自分に同期させる
//++++++++++++++++++++++++++++++
execforgemodelinkself( owner )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    l_init = false;
    l_text = "";

    // en : if player link processing has not started, initialize it.
    // ja : プレイヤーリンク処理が始まっていない場合、初期化する
    if ( !isdefined( self.playerlinkmode ) )    { self.playerlinkmode = owner; l_text = "enabled"; l_init = true; }
    // en : if player link processing has not started, initialize it.
    // ja : プレイヤーリンク処理が開始済みの場合、ループ処理を終了させる
    else                                        { self.playerlinkmode = undefined; l_text = "disabled"; }

    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    owner showcentermessage( owner.curlang , l_text , "linkobject" , undefined , undefined , undefined );

    // en : if synchronous processing has already been executed in a subthread, loop processing will not be entered within this function.
    // ja : 既に同期処理がサブスレッドで実行済みの場合、この関数内ではループ処理に入らない
    if ( !l_init ) { return; }

    // en: infinite loop until object no longer exists
    // ja: オブジェクトが存在しなくなるまで無限ループ
    while ( isdefined( self ) )
    {
        // en: end the infinite loop when the player link processing flag disappears.
        // ja: プレイヤーリンク処理フラグが消えたら、無限ループを終了する
        if ( !isdefined( self.playerlinkmode ) ) { break; }
        // en: end the infinite loop if the linked player no longer exists
        // ja: リンク対象のプレイヤーが存在しなくなった場合、無限ループを終了する
        if ( !isdefined( owner ) ) { break; }

        // en: if object rotation processing is not performed
        // ja: オブジェクトの回転処理が実行されていない場合
        if ( !isdefined( self.spinningmode ) )
        {
            // en: always set object angle to player angle
            // ja: オブジェクトの角度を常にプレイヤーの角度に設定する
            self.angles = owner getplayerangles( );
        }

        // en: always set object coordinates to player coordinates
        // ja: オブジェクトの座標を常にプレイヤーの座標に設定する
        self.origin = owner.origin;
        
        wait 0.05;
    }

    self.playerlinkmode = undefined;
}



//++++++++++++++++++++++++++++++
// en : delete the last object created with the function "advancedforgemode"
// ja : 機能 "advancedforgemode" で作成したオブジェクトの内、最後のオブジェクトを削除する
//++++++++++++++++++++++++++++++
execforgemodedeletelastobject( )
{
    l_optname = "deletelastobject";

    if ( isdefined( self.optstat[l_optname+ "_objectcount"] ) )
    {
        if ( 0 <= self.optstat[l_optname + "_objectcount"].size )
        {
            self.optstat[l_optname + "_objectcount"][( self.optstat[l_optname + "_objectcount"].size - 1 )] deleteentity( );
            self.optstat[l_optname + "_objectcount"][( self.optstat[l_optname + "_objectcount"].size - 1 )] = undefined;
            
            // en: display the text "[notification] delete object: object name" in the center of the screen
            // ja: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
            self showcentermessage( self.curlang , "notice" , l_optname , undefined , ( self.optstat[l_optname + "_objectcount"].size - 1 ) , undefined );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : create an object at the firing destination coordinates while the suboption "firedcreate" of the function "advanced forge mode" is enabled.
// ja : 機能 "advanced forge mode" の サブオプション "firedcreate" が有効中に、発射先の座標にオブジェクトを作成する
//++++++++++++++++++++++++++++++
createobjecttofiredlocation( location )
{
    // en: generate the model data being set at the specified coordinates
    // ja: 指定された座標に、設定中のモデルデータを生成する
    location = location + ( 0 , 0 , -10 );
    l_object = self createentityobject(
        /* notice */    true ,
        /* location */  location ,
        /* length */    undefined ,
        /* script */    "script_model" , 
        /* model */     self.optstat["advancedforgemode"].moddata["changespawnedmodel"] ,
        /* collide */   true ,
        /* sync */      self.optstat["advancedforgemode"].moddata["rotatexaxis"] ,
        /* angle */     undefined ,
        /* part */      true ,
        /* hpmin */     1000 ,
        /* hpmax */     5000 ,
        /* dmgtype */   "getplay" ,
        /* dmgfx */     "money" ,
        /* brktype */   "getplay" ,
        /* brkfx */     "claymore_explode" ,
        /* dmgse */     "recondrone_damaged" ,
        /* brkse */     "veh_apache_explode_mp" ,
        /* del */       true ,
        /* optname */   undefined
        );

    // en: add the created object to the managed list
    // ja: 作成されたオブジェクトを管理リストに追加する
    if ( isdefined( l_object ) )
    {
        self.optstat["advancedforgemode" + "_objectcount"][self.optstat["advancedforgemode" + "_objectcount"].size] = l_object;
    }
}



//++++++++++++++++++++++++++++++
// en : change the model type of the function "advancedforgemode"
// ja : 機能 "advancedforgemode" のモデルの種類を変更する
//++++++++++++++++++++++++++++++
execchangeforgemodemodel( )
{
    l_optname1 = "advancedforgemode";
    l_optname2 = "changespawnedmodel";

    self.optstat[l_optname1].moddata[l_optname2] = level.modmenudata[self.modsystem.menulayercurrent].item[self.modsystem.menuoptioncurrent].textid;
    
    // en: display the specified text in the center of the screen
    // ja: 画面中央に指定の文章を表示する
    self showcentermessage( self.curlang , "notice" , l_optname2 , undefined , self.optstat[l_optname1].moddata[l_optname2] , undefined );
}



//++++++++++++++++++++++++++++++
// en : change the model type of the function "advanced forge mode"
// ja : 機能「advanced forge mode」のモデルの種類を変更する
//++++++++++++++++++++++++++++++
switchforgemodemodel( )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array = getstandardmodellist( );
    
    self changeselfparameter( "advancedforgemode" , "changespawnedmodel" , undefined , ::onfadvancedforgemode , l_array , true , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : change the amount of trace movement of the function "advancedforgemode"
// ja : 機能 "advancedforgemode" の トレース移動量 を変更する
//++++++++++++++++++++++++++++++
switchforgemodemovesize( )
{
    self changetracesize( "advancedforgemode" , "spawnlength" , ::onfadvancedforgemode , true );
}



//++++++++++++++++++++++++++++++
// en : change the model type of the function "mexicanwave"
// ja : 機能 "mexicanwave" のモデルの種類を変更する
//++++++++++++++++++++++++++++++
switchmexicanwavemodel( )
{
    // en: define an array and perform an operation that changes the current parameter from within the array
    // ja: 配列を定義して、配列内から現在のパラメーターを変更する処理を実行する
    l_array = getstandardmodellist( );
    
    self changeselfparameter( "changemodel_mexicanwave" , undefined , undefined , ::emptyfunction , l_array , true , undefined , undefined );
}



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "mexicanwave"
// ja : 機能 "mexicanwave" を自身の目の前に作成する
//++++++++++++++++++++++++++++++
execmexicanwave( )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );
    // en : this function ends the process if "you disconnect from the room"
    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
    self endon( "disconnect" );


    l_optname = "mexicanwave";

    // en : if no "mexicanwave" has been created yet
    // ja : まだ "mexicanwave" が 1つも作成されていない場合
    if ( !isdefined( level.lvlstat[l_optname] ) )
    {
        // en : create or destroy a "mexicanwave" variable
        // ja : "mexicanwave" 変数の作成か破棄を行う
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
            
        level.lvlstat[l_optname + "_object"] = [];

        // en : initialize the "mexicanwave" model
        // ja : "mexicanwave" のモデルを初期化する
        if ( !isdefined( self.optstat["changemodel_" + l_optname] ) )
        {
            self.optstat["changemodel_" + l_optname] = "veh8_mil_air_mquebec8_small";
        }
    }

    wait 0.01;
    
    // en : if no "mexicanwave" has been created yet, do not perform any further processing.
    // ja : まだ "mexicanwave" が 1つも作成されていない場合、以降の処理は行わない
    if ( !isdefined( level.lvlstat[l_optname] ) ) { return; }

    // en : get the corrected coordinates of the specified distance in the front direction
    // ja : 正面方向へ 指定倍 先の距離の修正座標を取得する
    l_location = self getplayerforwardtrace( /* trace */ undefined , /* eye */ true , /* length */ 150 , /* up */ undefined );

    // en : create "mexicanwave" at specified coordinates
    // ja : 指定した座標に "mexicanwave" を作成する
    level.lvlstat[l_optname + "_object"][level.lvlstat[l_optname + "_object"].size] = spawnmultiplemodels( l_location , 1 , 10 , 1 , 0 , 0 , 0 , self.optstat["changemodel_" + l_optname] , self getplayerangles( ) , 50 , 0.05 );
    
    // en : have each object perform behavior processing on the created "mexicanwave"
    // ja : 作成された "mexicanwave" に対して、挙動処理を各オブジェクトに実行させる
	for( i = 0; i < level.lvlstat[l_optname + "_object"][( level.lvlstat[l_optname + "_object"].size - 1)].size; i++ )
	{
		level.lvlstat[l_optname + "_object"][( level.lvlstat[l_optname + "_object"].size - 1)][i] thread onprocessmexicanmove( l_optname );
		wait 0.1;
	}
}



//++++++++++++++++++++++++++++++
// en : behavior processing of function "mexicanwave"
// ja : 機能 "mexicanwave" の挙動処理
//++++++++++++++++++++++++++++++
onprocessmexicanmove( optname )
{
    // en : this function ends processing when "the match is over"
    // ja : この関数は「試合が終了した」場合に処理を終了する
    level endon( "game_ended" );

    // en : if the function "mexicanwave" is destroyed, terminate processing in this function
    // ja : 機能 "mexicanwave" が破壊されたら、この関数内の処理を終了する
    level endon( "end_lobby_" + optname );

	while( isdefined( self ) )
	{
		self movez( 80 , 1 , 0.2 , 0.4 );
		wait 1;
		self movez( -80 , 1 , 0.2 , 0.4 );
		wait 1;
	}
}



//++++++++++++++++++++++++++++++
// en : delete the feature "mexicanwave"
// ja : 機能 "mexicanwave" を削除する
//++++++++++++++++++++++++++++++
execdeletemexicanwave( )
{
    l_optname = "mexicanwave";

    // en : if no "mexicanwave" has been created yet, do not perform any further processing.
    // ja : まだ "mexicanwave" が 1つも作成されていない場合、以降の処理は行わない
    if ( !isdefined( level.lvlstat[l_optname] ) ) { return; }
    
    // en : execute the completion wait process for the function "mexicanwave"
    // ja : 機能 "mexicanwave" の終了待機処理を実行する
    level thread onwaitingdestroyentities(
        /* delmode */   "random" ,              /* optname */       l_optname ,                     /* sfxid */     "exp_helicopter_fuel" ,
        /* expfxid */   "claymore_explode" ,    /* discfxid */      "claymore_explode" ,
        /* eqpower */   0.3 ,                   /* eqtime */        1 ,                             /* eqrange */   2000 ,
        /* exptime */   0.01 ,                  /* delay */         3 ,
        /* lastnuke */  undefined ,             /* nukepoint */     undefined ,                     /* owner */     undefined ,
        /* objarray */  undefined ,             /* objdelete */     undefined ,
        /* listarray */ l_optname + "_object" , /* listdelete */    true ,                          /* dualarray */ true
        );

    wait 0.01;
    
    // en : destroy a "mexicanwave" variable
    // ja : "mexicanwave" 変数の破棄を行う
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
}



//++++++++++++++++++++++++++++++
// en : kick yourself from the lobby
// ja : 自分をロビーからキックする
//++++++++++++++++++++++++++++++
execkick( )
{
    kick( self getentitynumber() );
}



//++++++++++++++++++++++++++++++
// en : kicks the specified player from the lobby
// ja : 指定したプレイヤーをロビーからキックする
//++++++++++++++++++++++++++++++
execkickforplayer( )
{
    level.players[self.modsystem.menuplayer] execkick( );
}



//++++++++++++++++++++++++++++++
// en : kick all players from the lobby
// ja : 全プレイヤーをロビーからキックする
//++++++++++++++++++++++++++++++
execkickforallplayers( )
{
    self thread switchonfallplayersfunction( "none" , ::execkick , true , undefined );
}



////++++++++++++++++++++++++++++++
//// en : switch the enable/disable state of the function "twister"
//// ja : 機能 "twister" の有効/無効を切り替える
////++++++++++++++++++++++++++++++
//onftwister( )
//{
//    // en : execute waitfirebullets( ) or exit depending on the existence state of the "twister" variable
//    // ja : "twister" 変数の存在状態に合わせて、 "waitfirebullets" 関数を実行するか終了する
//    self switchonflevelfunction(
//        /* optname */                               "twister" ,
//        /* optfunc */                               ::waitfirebullets ,
//        /* message */                               "pleaseshooting" ,
//        /* optarg1 */       /* optname1 */          "twister" ,
//        /* optarg2 */       /* optname2 */          undefined ,
//        /* optarg3 */       /* optfunc */           ::createtwister ,
//        /* optarg4 */       /* notice */            true ,
//        /* optarg5 */       /* specificweapon */    undefined ,
//        /* optarg6 */       /* effectdata */        "vfx/iw8_mp/perk/vfx_emp_drone_exp_fieldupgrades.vfx" ,
//        /* optarg7 */       /* enddeath */          undefined 
//        );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : create a casing for the function "twister" at the coordinates of the launch destination.
//// ja : 機能 "twister" の筐体を、発射先の座標に作成する
////++++++++++++++++++++++++++++++
//createtwister( location )
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon("game_ended");
//    // en : this function ends the process if "you disconnect from the room"
//    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
//    self endon("disconnect");
//
//    l_optname = "twister";
//
//    // en : if the function "twister" is destroyed, terminate processing in this function
//    // ja : 機能 "twister" が破壊されたら、この関数内の処理を終了する
//    level endon("end_lobby_" + l_optname);
//
//    // en: set the specified option name as the function termination trigger
//    // ja: 指定のオプション名の終了トリガーを通知する
//    self notify("end_" + l_optname);
//    waitframe();
//    
//    l_objarray      = [];                       l_objdel        = [];
//    l_objarray[0]   = l_optname + "_link";      l_objdel[0]     = true;
//    l_objarray[1]   = l_optname + "_top";       l_objdel[1]     = true;
//    l_objarray[2]   = l_optname + "_tag";       l_objdel[2]     = true;
//    
//    l_listarray     = [];                       l_listdel       = [];
//    l_listarray[0]  = l_optname + "_attach";    l_listdel[0]    = false;
//    l_listarray[1]  = l_optname + "_seats";     l_listdel[1]    = false;
//    l_listarray[2]  = l_optname + "_box";       l_listdel[2]    = true;
//    l_listarray[3]  = l_optname + "_row";       l_listdel[3]    = true;
//    l_listarray[4]  = l_optname + "_ss1";       l_listdel[4]    = false;
//    l_listarray[5]  = l_optname + "_ss2";       l_listdel[5]    = false;
//
//    // en : execute the completion wait process for the function "twister"
//    // ja : 機能 "twister" の終了待機処理を実行する
//    level thread onwaitingdestroyentities(
//        /* delmode */   "random" ,              /* optname */       l_optname ,                     /* sfxid */     "exp_helicopter_fuel" ,
//        /* expfxid */   "claymore_explode" ,    /* discfxid */     "claymore_explode" ,
//        /* eqpower */   0.3 ,                   /* eqtime */        1 ,                             /* eqrange */   2000 ,
//        /* exptime */   0.01 ,                  /* delay */         10 ,
//        /* lastnuke */  undefined ,             /* nukepoint */     undefined ,                     /* owner */     undefined ,
//        /* objarray */  l_objarray ,            /* objdelete */     l_objdel ,
//        /* listarray */ l_listarray ,           /* listdelete */    l_listdel ,                     /* dualarray */ undefined
//        );
//
//    
//    l_location = location + ( 0 , 0 , 15 );
//
//    level.lvlstat[l_optname + "_attach"] = [];
//    level.lvlstat[l_optname + "_seats"] = [];
//    level.lvlstat[l_optname + "_box"] = [];
//    level.lvlstat[l_optname + "_row"] = [];
//    level.lvlstat[l_optname + "_ss1"] = [];
//    level.lvlstat[l_optname + "_ss2"] = [];
//    level.lvlstat[l_optname + "_link"] = modelspawner(l_location, "tag_origin" , ( 0 , 0 , 0 ) );
//
//    //level.lvlstat[l_optname + "_link"] skybasearray(true);
//    l_modelid01 = "military_crate_field_upgrade_01";
//    l_modelid02 = "military_carepackage_01_friendly";
//    l_modelid03 = "military_carepackage_01_enemy";
//    
//    if ( ( scripts\mp\utility\game::getgametype( ) == "br" ) || scripts\cp_mp\utility\game_utility::islargemap( ) )
//    {
//        l_modelid02 = "military_crate_field_upgrade_01";
//        l_modelid03 = "military_crate_field_upgrade_01";
//    }
//    l_time = .01;
//
//    for(a=0;a<11;a++)for(b=0;b<6;b++)level.lvlstat[l_optname + "_box"][level.lvlstat[l_optname + "_box"].size] = modelspawner(l_location + (0, 0, a * 27), l_modelid03, (0, b * 51.43, 0), l_time);
//    for(a=0;a<4;a++)for(b=0;b<2;b++)for(c=0;c<3;c++)level.lvlstat[l_optname + "_box"][level.lvlstat[l_optname + "_box"].size] = modelspawner(l_location + (sin(a * 90) * (c * 57 + 50), cos(a * 90) * (c * 57 + 50), 125), l_modelid01, (0, 90 + a * 90 + b * 180, 0), l_time);
//    for(a=0;a<4;a++)for(b=0;b<2;b++)for(c=0;c<3;c++)level.lvlstat[l_optname + "_box"][level.lvlstat[l_optname + "_box"].size] = modelspawner(l_location + (sin(a * 90 + 45) * (c * 57 + 50), cos(a * 90 + 45) * (c * 57 + 50), 270), l_modelid01, (0, 45 + a * 90 + b * 180, 0), l_time);
//    //array_thread(level.lvlstat[l_optname + "_box"], ::linktwisterobjects, level.lvlstat[l_optname + "_link"]);
//    for(a=0;a<level.lvlstat[l_optname + "_box"].size;a++)
//    {
//        level.lvlstat[l_optname + "_box"][a] linkto( level.lvlstat[l_optname + "_link"]);
//    }
//
//    for(a=0;a<4;a++)level.lvlstat[l_optname + "_row"][level.lvlstat[l_optname + "_row"].size] = modelspawner(l_location + (sin(a * 90) * (3 * 57 + 35), cos(a * 90) * (3 * 57 + 35), 111), l_modelid02, (90, 90 + a * 90, 0), l_time);
//    for(a=0;a<4;a++)level.lvlstat[l_optname + "_row"][level.lvlstat[l_optname + "_row"].size] = modelspawner(l_location + (sin(a * 90 + 45) * (3 * 57 + 35), cos(a * 90 + 45) * (3 * 57 + 35), 256), l_modelid02, (90, 45 + a * 90, 0), l_time);
//    //array_thread(level.lvlstat[l_optname + "_row"], ::skybasearray, true);
//
//    for(a=0;a<4;a++)for(b=0;b<3;b+=2)level.lvlstat[l_optname + "_ss1"][level.lvlstat[l_optname + "_ss1"].size] = modelspawner(level.lvlstat[l_optname + "_row"][a].origin + (0, cos(b * 90) * (35), -50), l_modelid01, (17 + b * 163, 90, 0), l_time);
//    for(a=0;a<4;a++)for(b=1;b<4;b+=2)level.lvlstat[l_optname + "_ss1"][level.lvlstat[l_optname + "_ss1"].size] = modelspawner(level.lvlstat[l_optname + "_row"][a].origin + (sin(b * 90) * (35), 0, -50), l_modelid01, (343 + (b - 1) * -163, 180, 0), l_time);
//    num = 0;
//    count = 0;
//    for(a=0;a<level.lvlstat[l_optname + "_ss1"].size;a++)
//    {
//        level.lvlstat[l_optname + "_ss1"][a] linkto( level.lvlstat[l_optname + "_row"][num]);
//        if(count == 1) 
//        {
//            num++;
//            count = -1;
//        }
//        if(num > 3)num = 0;
//        count++;
//    }
//
//    for(a=0;a<4;a++)for(b=0;b<3;b+=2)level.lvlstat[l_optname + "_ss2"][level.lvlstat[l_optname + "_ss2"].size] = modelspawner(level.lvlstat[l_optname + "_row"][a + 4].origin + (sin(b * 90 + 45) * (35), cos(b * 90 + 45) * (35), -50), l_modelid01, (17 + b * 163, 45, 0), l_time);
//    for(a=0;a<4;a++)for(b=1;b<4;b+=2)level.lvlstat[l_optname + "_ss2"][level.lvlstat[l_optname + "_ss2"].size] = modelspawner(level.lvlstat[l_optname + "_row"][a + 4].origin + (sin(b * 90 + 45) * (35), cos(b * 90 + 45) * (35), -50), l_modelid01, (343 + (b - 1) * -163, 135, 0), l_time);
//    num = 4;
//    count = 0;
//    for(a=0;a<level.lvlstat[l_optname + "_ss2"].size;a++)
//    {
//        level.lvlstat[l_optname + "_ss2"][a] linkto( level.lvlstat[l_optname + "_row"][num]);
//        if(count == 1)
//        {
//            num++;
//            count = -1;
//        }
//        if(num>7)num = 4;
//        count++;
//    }
//
//    for(a=0;a<4;a++)
//    {
//        for(b=0;b<8;b++)
//        {
//            level.lvlstat[l_optname + "_seats"][a] = modelspawner(level.lvlstat[l_optname + "_row"][a].origin + (sin(b * 45) * (77), cos(b * 45) * (77), -58), l_modelid01, (0, 315 * b, 0), l_time);
//            level.lvlstat[l_optname + "_attach"][level.lvlstat[l_optname + "_attach"].size] = modelspawner(level.lvlstat[l_optname + "_seats"][a].origin + (sin(b * 90) * (22), cos(b * 90) * (22), 0), "tag_origin", undefined, l_time);
//            level.lvlstat[l_optname + "_seats"][a] linkto( level.lvlstat[l_optname + "_row"][a]);
//            level.lvlstat[l_optname + "_attach"][level.lvlstat[l_optname + "_attach"].size - 1] linkto( level.lvlstat[l_optname + "_row"][a] );
//        }
//    }
//    for(a=0;a<4;a++)
//    {
//        for(b=0;b<8;b++)
//        {
//            level.lvlstat[l_optname + "_seats"][a+4] = modelspawner(level.lvlstat[l_optname + "_row"][a + 4].origin + (sin(b * 45) * (77), cos(b * 45) * (77), -58), l_modelid01, (0, 315 * b, 0), l_time);
//            level.lvlstat[l_optname + "_attach"][level.lvlstat[l_optname + "_attach"].size] = modelspawner(level.lvlstat[l_optname + "_seats"][a + 4].origin + (sin(b * 90 + 45) * (22), cos(b * 90 + 45) * (22), 0), "tag_origin", undefined, l_time);
//            level.lvlstat[l_optname + "_seats"][a+4] linkto( level.lvlstat[l_optname + "_row"][a + 4]);
//            level.lvlstat[l_optname + "_attach"][level.lvlstat[l_optname + "_attach"].size - 1] linkto( level.lvlstat[l_optname + "_row"][a + 4] );
//        }
//    }
//
//    level.lvlstat[l_optname + "_top"] = modelspawner(l_location + (0, 0, 280), "veh8_mil_air_lbravo" , ( 0 , 0 , 0 ) , l_time);
//    level.lvlstat[l_optname + "_tag"] = modelspawner(level.lvlstat[l_optname + "_top"].origin, "tag_origin" , ( 0 , 0 , 0 ) , l_time);
//    //level.lvlstat[l_optname + "_top"] skybasearray(true);
//    //tag skybasearray(true);
//    level.lvlstat[l_optname + "_top"] linkto( level.lvlstat[l_optname + "_link"]);
//    //level.lvlstat[l_optname + "_attach"] thread checktwister(l_location, level.lvlstat[l_optname + "_attach"]);
//
//    level.lvlstat[l_optname + "_link"] thread onattractionplayersmonitoring( l_optname , level.lvlstat[l_optname + "_attach"] , 500 , "delta" );
//    level.lvlstat[l_optname + "_link"] thread ondestroydetachplayers( l_optname );
//    for(a=0;a<4;a++)
//    {
//        level.lvlstat[l_optname + "_row"][a] thread ontwistermovement( l_optname , l_location, a * 90, 111);
//        level.lvlstat[l_optname + "_row"][a + 4] thread ontwistermovement( l_optname , l_location, a * 90 + 45, 256);
//        level.lvlstat[l_optname + "_row"][a] thread rotateentyaw(-360, 3);
//        level.lvlstat[l_optname + "_row"][a + 4] thread rotateentyaw(-360, 3);
//    }
//    level.lvlstat[l_optname + "_link"] thread rotateentyaw(360, 4);
//    //level.notifyicon = textmarker(undefined, level.lvlstat[l_optname + "_top"].origin, "the twister", false, "rain");
//    //level.notifyicon settargetent(level.lvlstat[l_optname + "_tag"]);
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : function "twister" housing behavior processing
//// ja : 機能 "twister" の筐体の挙動処理
////++++++++++++++++++++++++++++++
//ontwistermovement( optname , origin, int, z)
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon( "game_ended" );
//    // en : if the function "theclaw" is destroyed, terminate processing in this function
//    // ja : 機能 "theclaw" が破壊されたら、この関数内の処理を終了する
//    level endon( "end_lobby_" + optname );
//
//    while (true) {
//        for (a = int - 4.5; a < 370; a -= 9) {
//            loc = (origin + (sin(a) * 200, cos(a) * 200, z));
//            self moveto(loc, .1);
//            wait .09;
//        }
//        wait .01;
//    }
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : lrotates the yaw of the entity itself over a specified time
//// ja : エンティティである自分自身のヨーを、指定した時間で回転させる
////++++++++++++++++++++++++++++++
//rotateentyaw( yaw , time )
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon("game_ended");
//
//    while(isdefined(self))
//    {
//        self rotateyaw(yaw,time);
//        wait time;
//    }
//}



////++++++++++++++++++++++++++++++
//// en : switch the enable/disable state of the function "discodancer"
//// ja : 機能 "discodancer" を自身の目の前に作成する
////++++++++++++++++++++++++++++++
//execdiscodancer( )
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon( "game_ended" );
//    // en : this function ends the process if "you disconnect from the room"
//    // ja : この関数は「自分が部屋から切断した」場合に処理を終了する
//    self endon( "disconnect" );
//
//
//    l_optname = "discodancer";
//    l_combinedname = l_optname + "_object";
//
//    // en : if no "discodancer" has been created yet
//    // ja : まだ "discodancer" が 1つも作成されていない場合
//    if ( !isdefined( level.lvlstat[l_optname] ) )
//    {
//        // en : create or destroy a "discodancer" variable
//        // ja : "discodancer" 変数の作成か破棄を行う
//        self switchonflevelfunction(
//            /* optname */   l_optname ,
//            /* optfunc */   ::emptyfunction ,
//            /* message */   undefined ,
//            /* optarg1 */   undefined ,
//            /* optarg2 */   undefined ,
//            /* optarg3 */   undefined ,
//            /* optarg4 */   undefined ,
//            /* optarg5 */   undefined ,
//            /* optarg6 */   undefined ,
//            /* optarg7 */   undefined 
//            );
//            
//        level.lvlstat[l_combinedname] = [];
//    }
//
//    wait 0.01;
//    
//    // en : if no "discodancer" has been created yet, do not perform any further processing.
//    // ja : まだ "discodancer" が 1つも作成されていない場合、以降の処理は行わない
//    if ( !isdefined( level.lvlstat[l_optname] ) ) return;
//
//    l_model = self.model; //"mw_test_soldier"
//
//    // en : create "discodancer" at specified coordinates
//    // ja : 指定した座標に "discodancer" を作成する
//    l_obj1 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ l_model                         , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ true );
//    l_obj2 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ "axis_guide_createfx_rot"       , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ true );
//    l_obj3 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ "wmd_vm_missile_cruise_warhead" , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ undefined );
//    l_obj4 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ "wmd_vm_missile_cruise_warhead" , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ undefined );
//    l_obj5 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ "wmd_vm_missile_cruise_warhead" , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ undefined );
//    l_obj6 = self createentityobject( /* notice */ undefined , /* point */ undefined , /* length */ 150 , /* script */ "script_model" , /* model */ "wmd_vm_missile_cruise_warhead" , /* collide */ true , /* sync */ undefined , /* angle */ ( 0 , 0 , 0 ) , /* part */ undefined );
//    
//    // en : Link the decoration model to the base model
//    // ja : ベースモデルに対して装飾モデルをリンクする
//    l_obj2 linkto( l_obj1 , "tag_origin" , ( 0 , 0      , 65 )  , ( 0   , 0 , 0 ) );
//    l_obj3 linkto( l_obj1 , "tag_origin" , ( 20 , 20    , 40 )  , ( 0   , 0 , 0 ) );
//    l_obj4 linkto( l_obj1 , "tag_origin" , ( 20 , -20   , 40 )  , ( 0   , 0 , 0 ) );
//    l_obj5 linkto( l_obj1 , "tag_origin" , ( 0 , 8      , -10 ) , ( 270 , 0 , 0 ) );
//    l_obj6 linkto( l_obj1 , "tag_origin" , ( 0 , -8     , -10 ) , ( 270 , 0 , 0 ) );
//
//    l_obj1.angles = self getplayerangles( );
//
//    // en : add the created object to the managed list for deletion
//    // ja : 作成したオブジェクトを削除用管理リストに追加する
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj1;
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj2;
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj3;
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj4;
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj5;
//    level.lvlstat[l_combinedname][level.lvlstat[l_combinedname].size] = l_obj6;
//    wait 0.001;
//    playeffecttoobject( /* time */ undefined , /* obj */ l_obj2 , /* fx */ "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" , /* tag */ "tag_origin" , /* type */ "gettag" , /* loop */ undefined , /* base */ undefined , /* fix */ undefined , /* angle */ undefined , /* range */ undefined , /* stop */ undefined );
//    // playfxontag( scripts\engine\utility::getfx( "vfx/iw8/level/safehouse/vfx_safehouse_finale_drone_wingtip_red_lit.vfx" ) , l_obj2 , "tag_origin" );
//
//    // en : Execute behavior processing for the created 'discodancer'
//    // ja : 作成された "discodancer" に対して、挙動処理を実行させる
//    l_obj1 thread onprocessdiscodancer( l_optname );
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : animation processing of function "discodancer"
//// ja : 機能 "discodancer" のアニメーション処理
////++++++++++++++++++++++++++++++
//onprocessdiscodancer( owner , optname , yawonly , attack , specpos1 , specpos2 )
//{
//    // en : this function ends processing when "the match is over"
//    // ja : この関数は「試合が終了した」場合に処理を終了する
//    level endon( "game_ended" );
//
//    // en : if the function "discodancer" is destroyed, terminate processing in this function
//    // ja : 機能 "discodancer" が破壊されたら、この関数内の処理を終了する
//    level endon( "end_lobby_" + optname );
//
//    // en : define various variables
//    // ja : 各種変数を定義
//    l_time1     = 1;
//    l_time2     = 0.5;
//    l_value1    = -180;
//    l_value2    = 180;
//    l_value3    = 90;
//    l_value4    = -90;
//
//    // en : this animation thread executes a loop only while the object it is running on is alive.
//    // ja : このアニメーションスレッドが実行されている自分自身のオブジェクトが生存している間だけループ処理を行う
//	while( isdefined( self ) )
//	{
//        self rotateyaw( 9000        , 9 );
//        self movey(     l_value1    , l_time1 );    wait l_time1;
//        self movey(     l_value2    , l_time1 );    wait l_time1;
//        self movex(     l_value1    , l_time1 );    wait l_time1;
//        self movex(     l_value2    , l_time1 );    wait l_time1;
//        self movez(     l_value3    , l_time2 );    wait l_time2;
//        self movez(     l_value4    , l_time2 );    wait l_time2;
//        self movey(     l_value2    , l_time1 );    wait l_time1;
//        self movey(     l_value1    , l_time1 );    wait l_time1;
//        self movex(     l_value2    , l_time1 );    wait l_time1;
//        self movex(     l_value1    , l_time1 );    wait l_time1;
//	}
//}
//
//
//
////++++++++++++++++++++++++++++++
//// en : delete the feature "discodancer"
//// ja : 機能 "discodancer" を削除する
////++++++++++++++++++++++++++++++
//execdeletediscodancer( )
//{
//    l_optname = "discodancer";
//
//    // en : if no "discodancer" has been created yet, do not perform any further processing.
//    // ja : まだ "discodancer" が 1つも作成されていない場合、以降の処理は行わない
//    if ( !isdefined( level.lvlstat[l_optname] ) ) { return; }
//    
//    l_listarray     = [];                       l_listdel       = [];
//    l_listarray[0]  = l_optname + "_object";    l_listdel[0]    = true;
//    
//    // en : execute the completion wait process for the function "discodancer"
//    // ja : 機能 "discodancer" の終了待機処理を実行する
//    level thread onwaitingdestroyentities(
//        /* delmode */   "random" ,              /* optname */       l_optname ,                     /* sfxid */     "exp_helicopter_fuel" ,
//        /* expfxid */   "claymore_explode" ,    /* discfxid */      "claymore_explode" ,
//        /* eqpower */   0.3 ,                   /* eqtime */        1 ,                             /* eqrange */   2000 ,
//        /* exptime */   0.01 ,                  /* delay */         3 ,
//        /* lastnuke */  undefined ,             /* nukepoint */     undefined ,                     /* owner */     undefined ,
//        /* objarray */  undefined ,             /* objdelete */     undefined ,
//        /* listarray */ l_listarray ,           /* listdelete */    l_listdel ,                     /* dualarray */ undefined
//        );
//
//    wait 0.01;
//    
//    // en : destroy a "discodancer" variable
//    // ja : "discodancer" 変数の破棄を行う
//    self switchonflevelfunction(
//        /* optname */   l_optname ,
//        /* optfunc */   ::emptyfunction ,
//        /* message */   undefined ,
//        /* optarg1 */   undefined ,
//        /* optarg2 */   undefined ,
//        /* optarg3 */   undefined ,
//        /* optarg4 */   undefined ,
//        /* optarg5 */   undefined ,
//        /* optarg6 */   undefined ,
//        /* optarg7 */   undefined 
//        );
//}



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

    if ( isdefined( level.lvlstat[l_optname] ) )
    {
        // en: get information on all participating players
        // ja: 参加中の全プレイヤー情報を取得
        foreach( player in level.players )
        {
            // en : display a "welcome" message every time you spawn
            // ja : スポーン時に毎回「ようこそ」メッセージを表示する
            player showwelocomemessage( );
            // en : Execute processing when applying custom game mode
            // ja : カスタムゲームモード適応時の処理を実行する
            player customgamemodechecker( );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : Execute processing when applying custom game mode
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

        // en : Define weapon parameters
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
            // en: Set ammo capacity and remaining bullets to 0
            // ja: 装弾数・残弾数を0にする
            self setweaponammostock(    l_pistole , 0 );
            self setweaponammoclip(     l_pistole , 0 , "left" );
            self setweaponammoclip(     l_pistole , 0 , "right" );
            self setweaponammoclip(     l_pistole , 0 );
        }

        wait 0.1;

        l_camoid            = "random";
        l_attachmentid      = "random";
        l_usebp             = scripts\engine\utility::cointoss( );
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

        // en : Camper check for custom game mode 'quickscopelobby'
        // ja : カスタムゲームモード "quickscopelobby" のキャンパーチェック
        self thread onquickscopelobbycampercheck( );

        // en : Longscope check for custom game mode 'quickscopelobby'
        // ja : カスタムゲームモード "quickscopelobby" のガン見チェック
        self thread onquickscopelobbylongscopecheck( );
    }
}



//++++++++++++++++++++++++++++++
// en : Camper check for custom game mode 'quickscopelobby'
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
// en : Longscope check for custom game mode 'quickscopelobby'
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



//++++++++++++++++++++++++++++++
// en : switch the enable/disable state of the function "autogivecohost"
// ja : 機能 "autogivecohost" の有効/無効を切り替える
//++++++++++++++++++++++++++++++
onfautogivecohost( )
{
    // en : create or destroy a "autogivecohost" variable
    // ja : "autogivecohost" 変数の作成か破棄を行う
    self switchonflevelfunction(
        /* optname */   "autogivecohost" ,
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
}



//++++++++++++++++++++++++++++++
// en : delete the last object created with the function "createentityobject"
// ja : 機能 "createentityobject" で作成したオブジェクトの内、最後のオブジェクトを削除する
//++++++++++++++++++++++++++++++
execdeletelastobject( )
{
    l_optname1 = "deletelastobject";
    l_optname2 = "_objectcount";

    if ( isdefined( level.lvlstat[l_optname1 + l_optname2] ) )
    {
        if ( 0 < level.lvlstat[l_optname1 + l_optname2].size )
        {
            if ( isdefined( level.lvlstat[l_optname1 + l_optname2][( level.lvlstat[l_optname1 + l_optname2].size - 1 )] ) )
            {
                level.lvlstat[l_optname1 + l_optname2][( level.lvlstat[l_optname1 + l_optname2].size - 1 )] deleteentity( );
            }
            level.lvlstat[l_optname1 + l_optname2][( level.lvlstat[l_optname1 + l_optname2].size - 1 )] = undefined;
            
            // en: display the text "[notification] delete object: object name" in the center of the screen
            // ja: 画面中央に「[通知] オブジェクト削除 : オブジェクト名」という文章を表示する
            self showcentermessage( self.curlang , "notice" , l_optname1 , undefined , ( level.lvlstat[l_optname1 + l_optname2].size - 1 ) , undefined );
            
            level.lvlstat[l_optname1 + l_optname2] = scripts\engine\utility::array_remove( level.lvlstat[l_optname1 + l_optname2] , level.lvlstat[l_optname1 + l_optname2][( level.lvlstat[l_optname1 + l_optname2].size - 1 )] );
        }
    }
}



//++++++++++++++++++++++++++++++
// en : toggle the paused state of the timer
// ja : タイマーの一時停止状態を切り替える
//++++++++++++++++++++++++++++++
onfpausetimer( )
{
    // en : change the pausing state of the lobby timer according to the existence state of the "pausetimer" variable.
    // ja : "pausetimer" 変数の存在状態に合わせて、 ロビーのタイマーの一時停止状態 を変更する
    self switchonflevelfunction(
        /* optname */   "pausetimer" ,
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
    wait 0.05;
    if ( isdefined( level.lvlstat["pausetimer"] ) )  { level scripts\mp\gamelogic::pausetimer( ); }
    else                                                { level scripts\mp\gamelogic::resumetimer( ); }
}



//++++++++++++++++++++++++++++++
// en : restart game lobby
// ja : ゲームロビーを再起動する
//++++++++++++++++++++++++++++++
execfastrestrat( )
{
    level thread scripts\mp\gamelogic::restart( );
}



//++++++++++++++++++++++++++++++
// en : exit the game lobby
// ja : ゲームロビーを終了する
//++++++++++++++++++++++++++++++
execendgame( )
{
    level thread scripts\mp\gamelogic::forceend( );
}















































































































































// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : Mod Menu Construction
// ja : Mod Menu 構築
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //




//++++++++++++++++++++++++++++++
// en : adds the specified mod menu layer
// ja : 指定したモッドメニューレイヤーを追加する
//++++++++++++++++++++++++++++++
addmenulayer( textid , auth , layer , update , jumppage )
{
    if ( !isdefined( level.modmenudata[layer] ) )
        level.modmenudata[layer]                                                        = spawnstruct( );
    if ( !isdefined( level.modmenudata[layer].item ) )
        level.modmenudata[layer].item                                                   = [];
    if ( !isdefined( level.modmenudata[layer].item[level.modmenudata[layer].item.size] ) )
        level.modmenudata[layer].item[level.modmenudata[layer].item.size]               = spawnstruct( );

    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].textid    = textid;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].update    = update;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].auth      = auth;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].jumppage  = jumppage;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].callfunc  = ::modmenuopensubmenu;
}



//++++++++++++++++++++++++++++++
// en : add item to specified mod menu layer
// ja : 指定したモッドメニューレイヤーに項目を追加する
//++++++++++++++++++++++++++++++
addmenuitem( textid , subparam , area , layer , update , func , auth )
{
    if ( !isdefined( level.modmenudata[layer] ) )
        level.modmenudata[layer]                                                        = spawnstruct( );
    if ( !isdefined( level.modmenudata[layer].item ) )
        level.modmenudata[layer].item                                                   = [];
    if ( !isdefined( level.modmenudata[layer].item[level.modmenudata[layer].item.size] ) )
        level.modmenudata[layer].item[level.modmenudata[layer].item.size]               = spawnstruct( );
    
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].textid    = textid;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].update    = update;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].area      = area;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].subparam  = subparam;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].callfunc  = func;
    level.modmenudata[layer].item[( level.modmenudata[layer].item.size - 1 )].auth      = auth;
}



//++++++++++++++++++++++++++++++
// en : adding list data to the menu layer
// ja : リストデータをメニューレイヤーに追加する
//++++++++++++++++++++++++++++++
addlistmenu( listname , layername , verify , parent , layertype , sublayuer , updatetype , func )
{
    if ( isdefined( level.lvlstat[listname] ) && ( 0 < level.lvlstat[listname].size ) )
    {
        addmenulayer( layername , verify  , parent , layertype , sublayuer );
        for ( i = 0; i < level.lvlstat[listname].size; i++ )
            addmenuitem( level.lvlstat[listname][i] , undefined , undefined , sublayuer , updatetype , func );
    }
}



//++++++++++++++++++++++++++++++
// en : build a mod menu
// ja : モッドメニューを構築する
//++++++++++++++++++++++++++++++
modmenuconstruction( )
{
    level.modmenudata   = [];
    
    lv_verified            = 1;
    lv_vip                 = 2;
    lv_admin               = 3;
    lv_cohost              = 4;
    lv_host                = 5;


    ar_self                = 0;
    ar_level               = 1;
    ar_dvar                = 2;
    ar_perk                = 3;
    ar_player              = 4;
    ar_devide              = 5;
    ar_content             = 6;
    ar_lvcontent           = 7;
    ar_devidevol           = 8;
    ar_devidelev           = 9;
    ar_submenu             = 10;


    mod_enabled            = 1;
    mod_notonf             = 2;
    mod_reflesh            = 3;
    mod_fastreflesh        = 4;


    l_num                   = 0;
    ly_root                 = l_num; l_num++;
    ly_mainmods             = l_num; l_num = level.moddef.ly_languages;
    ly_languages            = l_num; l_num++;
    ly_design               = l_num; l_num++;
    ly_credit               = l_num; l_num++;
    ly_messages             = l_num; l_num++;
    ly_combatassist         = l_num; l_num++;
    ly_perks                = l_num; l_num++;
    ly_visions              = l_num; l_num++;
    ly_funny                = l_num; l_num++;
    ly_models               = l_num; l_num++;
    ly_skins                = l_num; l_num++;
    ly_weapons              = l_num; l_num++;
    ly_customweapons        = l_num; l_num++;
    ly_bullets              = l_num; l_num++;
    ly_popular              = l_num; l_num++;
    ly_account              = l_num; l_num++;
    ly_killstreaks          = l_num; l_num++;
    ly_customkillstreaks    = l_num; l_num++;
    ly_powered              = l_num; l_num++;
    ly_aimbots              = l_num; l_num++;
    ly_vehicles             = l_num; l_num++;
    ly_spawns               = l_num; l_num++;
    ly_gamesettings         = l_num; l_num++;
    ly_allplayers           = l_num; l_num = 40;

    ly_package_models       = l_num; l_num++;
    ly_flag_models          = l_num; l_num++;
    ly_dogtag_models        = l_num; l_num++;
    ly_vehicle_models       = l_num; l_num++;
    ly_prop_models          = l_num; l_num++;
    ly_animal_models        = l_num; l_num++;
    ly_zombie_models        = l_num; l_num++;
    ly_debug_models         = l_num; l_num++;
    ly_map_models           = l_num; l_num = 60;

    ly_wp_ar                = l_num; l_num++;
    ly_wp_smg               = l_num; l_num++;
    ly_wp_lmg               = l_num; l_num++;
    ly_wp_mr                = l_num; l_num++;
    ly_wp_sr                = l_num; l_num++;
    ly_wp_ps                = l_num; l_num++;
    ly_wp_sg                = l_num; l_num++;
    ly_wp_ep                = l_num; l_num++;
    ly_wp_sp                = l_num; l_num++;
    ly_wp_me                = l_num; l_num++;
    ly_wp_zm                = l_num; l_num = 80;

    ly_perk_1               = l_num; l_num++;
    ly_perk_2               = l_num; l_num++;
    ly_perk_3               = l_num; l_num = 110;

    ly_forge                = l_num; l_num++;
    ly_package_forge        = l_num; l_num++;
    ly_flag_forge           = l_num; l_num++;
    ly_dogtag_forge         = l_num; l_num++;
    ly_vehicle_forge        = l_num; l_num++;
    ly_prop_forge           = l_num; l_num++;
    ly_animal_forge         = l_num; l_num++;
    ly_zombie_forge         = l_num; l_num++;
    ly_debug_forge          = l_num; l_num++;
    ly_map_forge            = l_num; l_num = 130;

    ly_turret               = l_num; l_num++;
    ly_mexicanwave          = l_num; l_num++;
    ly_attraction           = l_num; l_num++;
    ly_tornado              = l_num; l_num++;
    ly_spindance            = l_num; l_num++;
    ly_teleportflag         = l_num; l_num = 140;

    ly_acecombat            = l_num; l_num++;
    ly_defvehicles          = l_num;

    ly_playersref           = level.moddef.ly_playersref;
    ly_playersmod           = level.moddef.ly_playersmod;


    addmenulayer(    "mainmodsmenu"                                                                                                                     , lv_verified   , ly_root               , ar_submenu        , ly_mainmods );
        addmenuitem( "test_func"                                    , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::exectestfunc              , lv_verified );
        addmenuitem( "test_loop_func"                               , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onftestloopfunc           , lv_verified );
        addmenuitem( "norecoil"                                     , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfnorecoil               , lv_verified );
        addmenuitem( "thirdperson"                                  , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfthirdperson            , lv_verified );
        addmenuitem( "outofmappossible"                             , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfoutofmappossible       , lv_verified );
        addmenuitem( "setmodel"                                     , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfsetmodel               , lv_verified );
        addmenuitem( "changemodel"                                  , "_objectid"                                                                       , ar_devide     , ly_mainmods           , mod_enabled       , ::switchchangemodel         , lv_verified );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfinfinityammo           , lv_vip );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfbindnoclip             , lv_vip );
        addmenuitem( "invisible"                                    , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfinvisible              , lv_vip );
        addmenuitem( "moddedbullets"                                , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfmoddedbullets          , lv_vip );
        addmenuitem( "bullettype"                                   , "moddedbullets"                                                                   , ar_content    , ly_mainmods           , mod_enabled       , ::switchbulletstype         , lv_vip );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfgodmode                , lv_admin );
        addmenuitem( "aimbot"                                       , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfaimbot                 , lv_admin  );
        addmenuitem( "atv"                                          , undefined                                                                         , undefined     , ly_mainmods           , mod_notonf        , ::execspawnvehicle          , lv_admin );
        addmenuitem( "little_bird"                                  , undefined                                                                         , undefined     , ly_mainmods           , mod_notonf        , ::execspawnvehicle          , lv_admin );
        addmenuitem( "advancedforgemode"                            , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfadvancedforgemode      , lv_cohost );
        
    addmenulayer(    "languagesmenu"                                                                                                                    , lv_verified   , ly_root               , ar_submenu        , ly_languages );
        addmenuitem( "lang_en"                                      , undefined                                                                         , undefined     , ly_languages          , mod_notonf        , ::changelanguage );
        addmenuitem( "lang_ja"                                      , undefined                                                                         , undefined     , ly_languages          , mod_notonf        , ::changelanguage );
        addmenuitem( "lang_cn"                                      , undefined                                                                         , undefined     , ly_languages          , mod_notonf        , ::changelanguage );
        addmenuitem( "lang_ru"                                      , undefined                                                                         , undefined     , ly_languages          , mod_notonf        , ::changelanguage );
        addmenuitem( "lang_de"                                      , undefined                                                                         , undefined     , ly_languages          , mod_notonf        , ::changelanguage );
    addmenulayer(    "creditsmenu"                                                                                                                      , lv_verified   , ly_root               , ar_submenu        , ly_credit );
        addmenuitem( "[{atvi}]"                                     , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{iw}]"                                       , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{rvn}] [{3arc}] [{shg}]"                     , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "OlympusSolutions"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "HiNAtyu unauthorized reselling"               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "Owner Zay is a useless code kiddie"           , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "Olympus devs can't understand GSC C++ at all" , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "They'll have to buy the DLL from me again when the next MW19 update drops"    , undefined                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "Idiots who can't read English GSC C++ even though they're foreign"    , undefined                                                 , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_hinatyu"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_hinatyu_1"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_hinatyu_2"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_hinatyu_3"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_hinatyu_4"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "multitranssystem"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "horizontalscrollhmenu"                        , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "customtextmenu"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "visionsmenu"                                  , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "superslide"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "outofmappossible"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "modelanimationsystem"                         , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "giverandomweapon"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "blueprintweapon"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "walkingac130"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "realcarepackagegun"                           , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "railgun"                                      , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "fullcustombullets"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "esp"                                          , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "killstreaksmenu"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "vanguardairstrike"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "pokemonball"                                  , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "acecombat"                                    , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "spawnvehicles"                                , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "advancedforgemode"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "spindancer"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "teleportflags"                                , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "giantrobot"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "spinrobot"                                    , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{dw}] [{hms}]"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_sku"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_sku_1"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_sku_2"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_sku_3"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_sku_4"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_m"                                     , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_m_1"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_jydenx"                                , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_jydenx_1"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_jydenx_2"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_brutal"                                , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_brutal_1"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_kam"                                   , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_kam_1"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_ate47"                                 , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_ate47_2"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_extincts"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_extincts_1"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_extincts_2"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "stacker"                                      , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_zeropoint"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_zeropoint_1"                           , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_thejoker7880"                          , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_thejoker7880_1"                        , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_dynamic"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_dynamic_1"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_onedeepzay"                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_onedeepzay_1"                          , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_bossam"                                , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "credit_oldmods"                               , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{bnox}] [{vv}]"                              , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{tfb}] [{king}]"                             , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( "[{bliz}]"                                     , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
        addmenuitem( " "                                            , undefined                                                                         , undefined     , ly_credit             , mod_notonf        , ::emptyfunction );
    addmenulayer(    "combatassistmenu"                                                                                                                 , lv_verified   , ly_root               , ar_submenu        , ly_combatassist );
        addmenuitem( "norecoil"                                     , undefined                                                                         , ar_self       , ly_combatassist       , mod_enabled       , ::onfnorecoil );
        addmenuitem( "thirdperson"                                  , undefined                                                                         , ar_self       , ly_combatassist       , mod_enabled       , ::onfthirdperson );
        addmenuitem( "freezeplayer"                                 , undefined                                                                         , ar_self       , ly_combatassist       , mod_enabled       , ::onffreezeplayer );
        addmenuitem( "suicide"                                      , undefined                                                                         , ar_self       , ly_combatassist       , mod_enabled       , ::execsuicide );
//    addmenulayer(    "perksmenu"                                                                                                                        , lv_verified   , ly_root               , ar_submenu        , ly_perks );
//        addmenuitem( "clearallperks"                                , undefined                                                                         , undefined     , ly_perks              , mod_notonf        , ::execclearallperks );
//        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_perks              , mod_notonf        , ::emptyfunction );
//    addmenulayer(    "perk1"                                                                                                                            , lv_verified   , ly_perks              , ar_submenu        , ly_perk_1 );
//        addmenuitem( "perk_doubletime"                              , "specialty_hustle"                                                                , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_eod"                                     , "specialty_eod"                                                                   , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_overkill"                                , "specialty_munitions_2"                                                           , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_scavenger"                               , "specialty_scavenger_plus"                                                        , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_coldblood"                               , "specialty_covert_ops"                                                            , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_quickfix"                                , "specialty_quick_fix"                                                             , ar_perk       , ly_perk_1             , mod_enabled       , ::execgiveperk );
//    addmenulayer(    "perk2"                                                                                                                            , lv_verified   , ly_perks              , ar_submenu        , ly_perk_2 );
//        addmenuitem( "perk_restock"                                 , "specialty_restock"                                                               , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_hardline"                                , "specialty_hardline"                                                              , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_highalert"                               , "specialty_surveillance"                                                          , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_ghost"                                   , "specialty_guerrilla"                                                             , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_killchain"                               , "specialty_heavy_metal"                                                           , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_pointman"                                , "specialty_strategist"                                                            , ar_perk       , ly_perk_2             , mod_enabled       , ::execgiveperk );
//    addmenulayer(    "perk3"                                                                                                                            , lv_verified   , ly_perks              , ar_submenu        , ly_perk_3 );
//        addmenuitem( "perk_tuneup"                                  , "specialty_tune_up"                                                               , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_amp"                                     , "specialty_warhead"                                                               , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_shrapnel"                                , "specialty_extra_shrapnel"                                                        , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_battleharden"                            , "specialty_tac_resist"                                                            , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_spotter"                                 , "specialty_tactical_recon"                                                        , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
//        addmenuitem( "perk_tracker"                                 , "specialty_huntmaster"                                                            , ar_perk       , ly_perk_3             , mod_enabled       , ::execgiveperk );
    addmenulayer(    "visionsmenu"                                                                                                                      , lv_verified   , ly_root               , ar_submenu        , ly_visions );
        addmenuitem( "default"                                      , "default"                                                                         , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "tac_ops_slamzoom"                             , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "chopper_color"                                , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "flir_0_black_to_white"                        , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "flir_1_white_to_black"                        , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "flir_2_color_gradient"                        , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "flir_3_color_gradient"                        , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "cruise_color"                                 , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "cruise_predator_slamzoom"                     , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "drone_color_dark"                             , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "drone_color"                                  , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "proto_toma_strike_mp"                         , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "ac130_color"                                  , "ks"                                                                              , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "ac130_thermal_mp"                             , "thermal"                                                                         , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "ac130_enhanced_mp"                            , "thermal"                                                                         , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "recon_drone_flash"                            , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "wp_flare"                                     , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "respawn_camera"                               , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "br_nuke_global_flash"                         , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "br_nuke_global_aftermath"                     , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "black_bw"                                     , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "nuke_global_aftermath"                        , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "nuke_deathblur"                               , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "end_game"                                     , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "respawn_camera_night"                         , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
        addmenuitem( "flir_0_black_to_white_heavy_damage"           , "naked"                                                                           , undefined     , ly_visions            , mod_notonf        , ::execsetvision );
   addmenulayer(    "funnymenu"                                                                                                                        , lv_verified   , ly_root               , ar_submenu        , ly_funny );
       addmenuitem( "outofmappossible"                             , undefined                                                                         , ar_self       , ly_funny              , mod_enabled       , ::onfoutofmappossible );
       addmenuitem( "ninjamode"                                    , undefined                                                                         , ar_self       , ly_funny              , mod_enabled       , ::onfninjamode );
       addmenuitem( "superslide"                                   , undefined                                                                         , ar_self       , ly_funny              , mod_enabled       , ::onfsuperslide );
       //addmenuitem( "saveloadlocation"                             , undefined                                                                         , ar_self       , ly_funny              , mod_enabled       , ::onfsaveloadlocation );
       //addmenuitem( "saveloadlocationdescription1"                 , undefined                                                                         , undefined     , ly_funny              , mod_notonf        , ::emptyfunction );
       //addmenuitem( "saveloadlocationdescription2"                 , undefined                                                                         , undefined     , ly_funny              , mod_notonf        , ::emptyfunction );
   addmenulayer(    "modelsmenu"                                                                                                                       , lv_verified   , ly_root               , ar_submenu        , ly_models );
       addmenuitem( "setmodel"                                     , undefined                                                                         , ar_self       , ly_models             , mod_enabled       , ::onfsetmodel );
       addmenuitem( "changemodel"                                  , "_objectid"                                                                       , ar_devide     , ly_models             , mod_enabled       , ::switchchangemodel );
       addmenuitem( "synccenterbody"                               , "setmodel"                                                                        , ar_self       , ly_models             , mod_enabled       , ::onfsetmodelsynccenterbody );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_models             , mod_notonf        , ::emptyfunction );
       addlistmenu( "modellistpackages"                            , "packagemodels"                                                                   , lv_verified   , ly_models             , ar_submenu        , ly_package_models     , mod_notonf    , ::execchangemodel );
       addlistmenu( "modellistflags"                               , "flagmodels"                                                                      , lv_verified   , ly_models             , ar_submenu        , ly_flag_models        , mod_notonf    , ::execchangemodel );
       addlistmenu( "modellistdogtags"                             , "dogtagmodels"                                                                    , lv_verified   , ly_models             , ar_submenu        , ly_dogtag_models      , mod_notonf    , ::execchangemodel );
       addlistmenu( "modellistvehicles"                            , "vehiclesmodels"                                                                  , lv_verified   , ly_models             , ar_submenu        , ly_vehicle_models     , mod_notonf    , ::execchangemodel );
       addlistmenu( "modellistprops"                               , "propmodels"                                                                      , lv_verified   , ly_models             , ar_submenu        , ly_prop_models        , mod_notonf    , ::execchangemodel );
       //addlistmenu( "modellistanimal"                             , "propanimals"                                                                    , lv_verified   , ly_models             , ar_submenu        , ly_animal_models      , mod_notonf    , ::execchangemodel );
       //addlistmenu( "modellistzombie"                             , "propzombies"                                                                    , lv_verified   , ly_models             , ar_submenu        , ly_zombie_models      , mod_notonf    , ::execchangemodel );
       //addlistmenu( "modellistdebug"                              , "propdebugs"                                                                     , lv_verified   , ly_models             , ar_submenu        , ly_debug_models       , mod_notonf    , ::execchangemodel );
       addlistmenu( "modellistmaps"                                , "mapmodels"                                                                       , lv_verified   , ly_models             , ar_submenu        , ly_map_models         , mod_notonf    , ::execchangemodel );
   addmenulayer(    "weaponsmenu"                                                                                                                      , lv_verified   , ly_root               , ar_submenu        , ly_weapons );
       addmenuitem( "randomcamo"                                   , undefined                                                                         , ar_self       , ly_weapons            , mod_enabled       , ::onfrandomcamo );
       addmenuitem( "randomattachment"                             , undefined                                                                         , ar_self       , ly_weapons            , mod_enabled       , ::onfrandomattachment );
       addmenuitem( "blueprintweapon"                              , undefined                                                                         , ar_self       , ly_weapons            , mod_enabled       , ::onfblueprintweapon );
       addmenuitem( "dualweapon"                                   , undefined                                                                         , ar_self       , ly_weapons            , mod_enabled       , ::onfdualweapon );
       addmenuitem( "giverandomweapon"                             , undefined                                                                         , undefined     , ly_weapons            , mod_notonf        , ::execgiverandomweapon );
       addmenuitem( "giverandomcurbpweapon"                        , undefined                                                                         , ar_self       , ly_weapons            , mod_notonf        , ::execgivebpweaponfromcurwp );
       //addmenuitem( "giverandomt9bpweapon"                          , undefined                                                                      , ar_self       , ly_weapons            , mod_notonf        , ::execgivebpweaponfromt9wp );
       //addmenuitem( "giverandoms4bpweapon"                          , undefined                                                                      , ar_self       , ly_weapons            , mod_notonf        , ::execgivebpweaponfroms4wp );
       addmenuitem( "dropweapon"                                   , undefined                                                                         , undefined     , ly_weapons            , mod_notonf        , ::execdropweapon );
       addmenuitem( "takedweapon"                                  , undefined                                                                         , undefined     , ly_weapons            , mod_notonf        , ::exectakedweapon );
       addmenuitem( "takedallweapons"                              , undefined                                                                         , undefined     , ly_weapons            , mod_notonf        , ::exectakedallweapons );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_weapons            , mod_notonf        , ::emptyfunction );
   addmenulayer(    "assaultrifles"                                                                                                                    , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_ar );
       addmenuitem( "ak-47"                                        , "iw8_ar_akilo47_mp"                                                               , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "oden"                                         , "iw8_ar_asierra12_mp"                                                             , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "fr 5.56"                                      , "iw8_ar_falpha_mp"                                                                , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "cr 56 amax"                                   , "iw8_ar_galima_mp"                                                                , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "kilo 141"                                     , "iw8_ar_kilo433_mp"                                                               , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "m13"                                          , "iw8_ar_mcharlie_mp"                                                              , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "m4a1"                                         , "iw8_ar_mike4_mp"                                                                 , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "fal"                                          , "iw8_ar_falima_mp"                                                                , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "fn scar 17"                                   , "iw8_ar_scharlie_mp"                                                              , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "grau 5.56"                                    , "iw8_ar_sierra552_mp"                                                             , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "ram 7"                                        , "iw8_ar_tango21_mp"                                                               , undefined     , ly_wp_ar              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "submachineguns"                                                                                                                   , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_smg );
       addmenuitem( "aug"                                          , "iw8_sm_augolf_mp"                                                                , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "pp bizon 19"                                  , "iw8_sm_beta_mp"                                                                  , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "iso"                                          , "iw8_sm_charlie9_mp"                                                              , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "mp5"                                          , "iw8_sm_mpapa5_mp"                                                                , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "p90"                                          , "iw8_sm_papa90_mp"                                                                , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "striker 45"                                   , "iw8_sm_smgolf45_mp"                                                              , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "uzi"                                          , "iw8_sm_uzulu_mp"                                                                 , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "mp7"                                          , "iw8_sm_mpapa7_mp"                                                                , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "fennec"                                       , "iw8_sm_victor_mp"                                                                , undefined     , ly_wp_smg             , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "lightmachineguns"                                                                                                                 , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_lmg );
       addmenuitem( "iw8_lm_dblmg_mp"                              , "iw8_lm_dblmg_mp"                                                                 , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "m91"                                          , "iw8_lm_kilo121_mp"                                                               , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "sa-87"                                        , "iw8_lm_lima86_mp"                                                                , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "mg-34"                                        , "iw8_lm_mgolf34_mp"                                                               , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "bruen m9k"                                    , "iw8_lm_mkilo3_mp"                                                                , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
       addmenuitem( "pkm"                                          , "iw8_lm_pkilo_mp"                                                                 , undefined     , ly_wp_lmg             , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "marksmanrifles"                                                                                                                   , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_mr );
       addmenuitem( "crossbow"                                     , "iw8_sn_crossbow_mp"                                                              , undefined     , ly_wp_mr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "ebr-14"                                       , "iw8_sn_golf28_mp"                                                                , undefined     , ly_wp_mr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "kar 98"                                       , "iw8_sn_kilo98_mp"                                                                , undefined     , ly_wp_mr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "mk2-carbine"                                  , "iw8_sn_sbeta_mp"                                                                 , undefined     , ly_wp_mr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "sks"                                          , "iw8_sn_sksierra_mp"                                                              , undefined     , ly_wp_mr              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "sniperrifles"                                                                                                                     , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_sr );
       addmenuitem( "ax-50"                                        , "iw8_sn_alpha50_mp"                                                               , undefined     , ly_wp_sr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "dragunov"                                     , "iw8_sn_delta_mp"                                                                 , undefined     , ly_wp_sr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "hdr"                                          , "iw8_sn_hdromeo_mp"                                                               , undefined     , ly_wp_sr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "iw8_sn_mike14_mp"                             , "iw8_sn_mike14_mp"                                                                , undefined     , ly_wp_sr              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "iw8_sn_xmike109_mp"                           , "iw8_sn_xmike109_mp"                                                              , undefined     , ly_wp_sr              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "pistol"                                                                                                                           , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_ps );
       addmenuitem( ".357"                                         , "iw8_pi_cpapa_mp"                                                                 , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( ".50 gs"                                       , "iw8_pi_decho_mp"                                                                 , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "x16"                                          , "iw8_pi_golf21_mp"                                                                , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "1911"                                         , "iw8_pi_mike1911_mp"                                                              , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "renetti"                                      , "iw8_pi_mike9_mp"                                                                 , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "m19"                                          , "iw8_pi_papa320_mp"                                                               , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "iw8_minigunksjugg_mp"                         , "iw8_minigunksjugg_mp"                                                            , undefined     , ly_wp_ps              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "shotguns"                                                                                                                         , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_sg );
       addmenuitem( "725"                                          , "iw8_sh_charlie725_mp"                                                            , undefined     , ly_wp_sg              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "r9-0"                                         , "iw8_sh_dpapa12_mp"                                                               , undefined     , ly_wp_sg              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "vlk rogue"                                    , "iw8_sh_mike26_mp"                                                                , undefined     , ly_wp_sg              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "origin 12"                                    , "iw8_sh_oscar12_mp"                                                               , undefined     , ly_wp_sg              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "model 680"                                    , "iw8_sh_romeo870_mp"                                                              , undefined     , ly_wp_sg              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "explosives"                                                                                                                       , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_ep );
       addmenuitem( "pila"                                         , "iw8_la_gromeo_mp"                                                                , undefined     , ly_wp_ep              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "jokr"                                         , "iw8_la_juliet_mp"                                                                , undefined     , ly_wp_ep              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "strela-p"                                     , "iw8_la_kgolf_mp"                                                                 , undefined     , ly_wp_ep              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "mgl-32"                                       , "iw8_la_mike32_mp"                                                                , undefined     , ly_wp_ep              , mod_notonf        , ::execgiveweapon );
       addmenuitem( "rpg-7"                                        , "iw8_la_rpapa7_mp"                                                                , undefined     , ly_wp_ep              , mod_notonf        , ::execgiveweapon );
//    //addmenulayer(    "special"                                                                                                                          , lv_verified   , ly_weapons            , ar_submenu        , ly_wp_sp );
//    //    addmenuitem( "гроза"                                        , "iw8_ar_t9fasthandling_mp"                                                        , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "fara 83"                                      , "iw8_ar_t9slowhandling_mp"                                                        , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "vargo 52"                                     , "iw8_ar_t9soviet_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );    
//    //    addmenuitem( "xm4 хмыч"                                     , "iw8_ar_t9standard_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "калаш баля"                                   , "iw8_ar_t9damage_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ffar-1"                                       , "iw8_ar_t9fastfire_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "qbz"                                          , "iw8_ar_t9mobility_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m16"                                          , "iw8_ar_t9longburst_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "сarv.2"                                       , "iw8_ar_t9fastburst_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "с58"                                          , "iw8_ar_t9slowfire_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "em2"                                          , "iw8_ar_t9british_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "grav"                                         , "iw8_ar_t9season6_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m60"                                          , "iw8_lm_t9slowfire_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "stoner"                                       , "iw8_lm_t9accurate_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "rpd"                                          , "iw8_lm_t9light_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mg 82"                                        , "iw8_lm_t9fastfire_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ugr"                                          , "iw8_sm_t9flechette_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ots 9"                                        , "iw8_sm_t9cqb_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ппш41"                                        , "iw8_sm_t9spray_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "milano uzi"                                   , "iw8_sm_t9handling_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ксюха"                                        , "iw8_sm_t9heavy_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "bullfrog"                                     , "iw8_sm_t9capacity_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "lapa"                                         , "iw8_sm_t9season6_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mp5 cw"                                       , "iw8_sm_t9standard_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mac-10"                                       , "iw8_sm_t9fastfire_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "nail gun"                                     , "iw8_sm_t9nailgun_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ksp 45"                                       , "iw8_sm_t9burst_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "lc-10"                                        , "iw8_sm_t9accurate_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "swiss k31"                                    , "iw8_sn_t9accurate_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "dmr 14"                                       , "iw8_sn_t9precisionsemi_mp"                                                       , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "type 63"                                      , "iw8_sn_t9damagesemi_mp"                                                          , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m82"                                          , "iw8_sn_t9powersemi_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "pelington"                                    , "iw8_sn_t9quickscope_mp"                                                          , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "tundra"                                       , "iw8_sn_t9standard_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "zrg 20мм в разрабе"                           , "iw8_sn_t9cannon_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "crossbow"                                     , "iw8_sn_t9crossbow_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "hauer"                                        , "iw8_sh_t9pump_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "gallo"                                        , "iw8_sh_t9semiauto_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "streetsweeper"                                , "iw8_sh_t9fullauto_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( ".410 ironhide"                                , "iw8_sh_t9leveraction_mp"                                                         , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "diamatti"                                     , "iw8_pi_t9burst_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "amp63"                                        , "iw8_pi_t9fullauto_mp"                                                            , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "cw scythe"                                    , "iw8_me_t9scythe_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "sledgehammer"                                 , "iw8_me_t9sledgehammer_mp"                                                        , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "wakizashi"                                    , "iw8_me_t9wakizashi_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "combat knife"                                 , "iw8_me_t9loadout_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "machete"                                      , "iw8_me_t9machete_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "etool"                                        , "iw8_me_t9etool_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "bat"                                          , "iw8_me_t9bat_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mace"                                         , "iw8_me_t9mace_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "cane"                                         , "iw8_me_t9cane_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "sai"                                          , "iw8_me_t9sai_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "axe"                                          , "iw8_me_t9battleaxe_mp"                                                           , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ссср ёпта"                                    , "iw8_me_t9coldwar_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ballistickknife"                              , "iw8_me_t9ballisticknife_mp"                                                      , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "stg44"                                        , "s4_ar_stango44_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "f2000 (bp50)"                                 , "s4_ar_fnovember2000_mp"                                                          , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ass44"                                        , "s4_ar_asierra44_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "bar"                                          , "s4_ar_balpha_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "итрарарарарар"                                , "s4_ar_bromeopg_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "nz-41"                                        , "s4_ar_chotel41_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "automaton"                                    , "s4_ar_fecho_mp"                                                                  , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "volkstrumgewert"                              , "s4_ar_voscar_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "bren"                                         , "s4_mg_bromeo37_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "dp27"                                         , "s4_mg_dpapa27_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mg42"                                         , "s4_mg_mgolf42_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "type 11"                                      , "s4_mg_tyankee11_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "никитос avt"                                  , "s4_ar_promeo45_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "cooper"                                       , "s4_ar_hyankee44_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "whitley (from portal 2)"                      , "s4_mg_malpha7_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ugm-8"                                        , "s4_mg_aalpha52_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "lienna 57"                                    , "s4_mg_sindia510_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "kg m40"                                       , "s4_ar_kgolf40_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "em1"                                          , "s4_ar_emike1_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ппш вговняный"                                , "s4_sm_ppapa41_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "mp40"                                         , "s4_sm_mpapa40_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "stan"                                         , "s4_sm_stango5_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "owen"                                         , "s4_sm_owhiskey_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "h4 blixen"                                    , "s4_sm_guniform45_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m1928 (thompson)"                             , "s4_sm_thotel_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "welgun"                                       , "s4_sm_wecho43_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "armagerra 43"                                 , "s4_sm_aromeo43_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "marco 5"                                      , "s4_sm_fromeo57_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ra 225"                                       , "s4_sm_salpha26_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "kar98k vg"                                    , "s4_mr_kalpha98_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "винтовка мосина"                              , "s4_mr_moscar_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "type 99"                                      , "s4_mr_aromeo99_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "gorenko anti-developer rifle"                 , "s4_mr_ptango41_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "g43"                                          , "s4_mr_gecho43_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m1 garand"                                    , "s4_mr_m1golf_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "svt-40"                                       , "s4_mr_svictor40_mp"                                                              , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "m1916"                                        , "s4_mr_malpha1916_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "einhorn revolving"                            , "s4_sh_becho_mp"                                                                  , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "gracey auto"                                  , "s4_sh_bromeo5_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "double barrel"                                , "s4_sh_lindia98_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "combat shotgun"                               , "s4_sh_mike97_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "klauser"                                      , "s4_pi_luniform08_mp"                                                             , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "machine pistol"                               , "s4_pi_malpha96_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "1911"                                         , "s4_pi_mike1911_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ratt"                                         , "s4_pi_ttango33_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "combat shield"                                , "s4_me_rindigo_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "fs fighting knife"                            , "s4_me_knife_mp"                                                                  , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "top break (revolver)"                         , "s4_pi_wecho_mp"                                                                  , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "katana"                                       , "s4_me_katana_mp"                                                                 , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "sawtooth"                                     , "s4_me_leiomano_mp"                                                               , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "ice axe"                                      , "s4_me_icepick_mp"                                                                , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
//    //    addmenuitem( "skull crusher"                                , "s4_me_axe_mp"                                                                    , undefined     , ly_wp_sp              , mod_notonf        , ::execgiveweapon );
   addmenulayer(    "customweaponsmenu"                                                                                                                , lv_vip        , ly_root               , ar_submenu        , ly_customweapons );
       //addmenuitem( "teleportgun"                                  , undefined                                                                         , ar_self       , ly_customweapons      , mod_enabled       , ::onfteleportgun );
       //addmenuitem( "tracelength"                                  , "teleportgun"                                                                     , ar_content    , ly_customweapons      , mod_enabled       , ::switchteleportgunmovesize );
       addmenuitem( "rocketride"                                   , undefined                                                                         , ar_self       , ly_customweapons      , mod_enabled       , ::onfrocketride );
       //addmenuitem( "walkingac130"                                 , undefined                                                                         , ar_self       , ly_customweapons      , mod_enabled       , ::onfwalkingac130 );
       addmenuitem( "realcarepackagegun"                           , undefined                                                                         , ar_self       , ly_customweapons      , mod_enabled       , ::onfrealcarepackagegun );
   addmenulayer(    "bulletsmenu"                                                                                                                      , lv_vip        , ly_root               , ar_submenu        , ly_bullets );
       addmenuitem( "moddedbullets"                                , undefined                                                                         , ar_self       , ly_bullets            , mod_enabled       , ::onfmoddedbullets );
       addmenuitem( "bullettype"                                   , "moddedbullets"                                                                   , ar_content    , ly_bullets            , mod_enabled       , ::switchbulletstype );
       addmenuitem( "moddedbulletsfiretrigger"                     , "moddedbullets"                                                                   , ar_self       , ly_bullets            , mod_enabled       , ::onfmoddedbulletsfiretrigger );
       //addmenuitem( "moddedbulletsnum5"                            , "moddedbullets"                                                                   , ar_self       , ly_bullets            , mod_enabled       , ::onfmoddedbulletsnum5 );
   addmenulayer(    "popularmenu"                                                                                                                      , lv_vip        , ly_root               , ar_submenu        , ly_popular );
       addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_self       , ly_popular            , mod_enabled       , ::onfinfinityammo );
       addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_self       , ly_popular            , mod_enabled       , ::onfbindnoclip );
       addmenuitem( "bindnoclipdiscription"                        , undefined                                                                         , undefined     , ly_popular            , mod_notonf        , ::emptyfunction );
       addmenuitem( "changemovementspeed"                          , "movementspeed"                                                                   , ar_content    , ly_popular            , mod_enabled       , ::switchmovementspeed );
       addmenuitem( "invisible"                                    , undefined                                                                         , ar_self       , ly_popular            , mod_enabled       , ::onfinvisible );
  addmenulayer(    "killstreaksmenu"                                                                                                                  , lv_vip        , ly_root               , ar_submenu        , ly_killstreaks );
      addmenuitem( "ks_personalradar"                             , "radar_drone_overwatch"                                                           , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_shieldturret"                              , "manual_turret"                                                                   , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_counteruav"                                , "counter_uav"                                                                     , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_uav"                                       , "uav"                                                                             , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_carepackage"                               , "airdrop"                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_clusterstrike"                             , "toma_strike"                                                                     , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_cruisemissile"                             , "cruise_predator"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_airstrike"                                 , "precision_airstrike"                                                             , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_infantryfightingvehicle"                   , "bradley"                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_sentrygun"                                 , "sentry_gun"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_wheelson"                                  , "pac_sentry"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_emergencyreliefsupplies"                   , "airdrop_multiple"                                                                , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_vtol"                                      , "hover_jet"                                                                       , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_whitephosphorusbullet"                     , "whine_phosphorus"                                                                , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_heligunner"                                , "chopper_gunner"                                                                  , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_supportheli"                               , "chopper_support"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_gunship"                                   , "gunship"                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_advanceduav"                               , "directional_uav"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_juggernaut"                                , "juggernaut"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "ks_nuke"                                      , "nuke"                                                                            , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "drone_hive"                                   , "drone_hive"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "heli_pilot"                                   , "heli_pilot"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "airdrop_sentry_minigun"                       , "airdrop_sentry_minigun"                                                          , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "helicopter"                                   , "helicopter"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "fuel_airstrike"                               , "fuel_airstrike"                                                                  , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "multi_airstrike"                              , "multi_airstrike"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "assault_drone"                                , "assault_drone"                                                                   , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "circle_peek"                                  , "circle_peek"                                                                     , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "city_killer"                                  , "city_killer"                                                                     , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "explosive_bow"                                , "explosive_bow"                                                                   , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "greenbay_strike"                              , "greenbay_strike"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "plague_box"                                   , "plague_box"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "rcxd_rad"                                     , "rcxd_rad"                                                                        , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "harp"                                         , "harp"                                                                            , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "supply_sweep"                                 , "supply_sweep"                                                                    , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "dronedrop"                                    , "dronedrop"                                                                       , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "emp_drone"                                    , "emp_drone"                                                                       , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "emp_drone_targeted"                           , "emp_drone_targeted"                                                              , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "helper_drone"                                 , "helper_drone"                                                                    , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "super_deadsilence"                            , "super_deadsilence"                                                               , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "super_stoppingpower"                          , "super_stoppingpower"                                                             , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      addmenuitem( "weapon_drop"                                  , "weapon_drop"                                                                     , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "emp"                                          , "emp"                                                                             , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "death_switch"                                 , "death_switch"                                                                    , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "radar_drone_recon"                            , "radar_drone_recon"                                                               , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "radar_drone_escort"                           , "radar_drone_escort"                                                              , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "radar_drone_overwatch"                        , "radar_drone_overwatch"                                                           , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "scrambler_drone_escort"                       , "scrambler_drone_escort"                                                          , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "scrambler_drone_guard"                        , "scrambler_drone_guard"                                                           , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "manual_turret"                                , "manual_turret"                                                                   , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "nuke_select_location"                         , "nuke_select_location"                                                            , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "remote_mg_turret"                             , "remote_mg_turret"                                                                , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "remote_uav"                                   , "remote_uav"                                                                      , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
      //addmenuitem( "airdrop_assault"                              , "airdrop_assault"                                                                 , undefined     , ly_killstreaks        , mod_notonf        , ::execgivekillstreak );
   addmenulayer(    "customkillstreaksmenu"                                                                                                            , lv_vip        , ly_root               , ar_submenu        , ly_customkillstreaks );
       addmenuitem( "kamikazebomber"                               , undefined                                                                         , ar_self       , ly_customkillstreaks  , mod_enabled       , ::onfkamikazebomber );
       addmenuitem( "changekamikazebombermodel"                    , "kamikazebomber"                                                                  , ar_content    , ly_customkillstreaks  , mod_enabled       , ::switchkamikazebombermodel );
       addmenuitem( "changekamikazebomberspinning"                 , "kamikazebomber"                                                                  , ar_self       , ly_customkillstreaks  , mod_enabled       , ::switchkamikazebomberspin );
       addmenuitem( "changekamikazebomberrandom"                   , "kamikazebomber"                                                                  , ar_self       , ly_customkillstreaks  , mod_enabled       , ::switchkamikazebomberrandom );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_customkillstreaks  , mod_notonf        , ::emptyfunction );
       addmenuitem( "vanguardairstrike"                            , undefined                                                                         , ar_self       , ly_customkillstreaks  , mod_enabled       , ::onfvanguardairstrike );
   addmenulayer(    "poweredmenu"                                                                                                                      , lv_admin      , ly_root               , ar_submenu        , ly_powered );
       addmenuitem( "godmode"                                      , undefined                                                                         , ar_self       , ly_powered            , mod_enabled       , ::onfgodmode );
   addmenulayer(    "aimbotsmenu"                                                                                                                      , lv_admin      , ly_root               , ar_submenu        , ly_aimbots );
       addmenuitem( "aimbot"                                       , undefined                                                                         , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbot );
       addmenuitem( "attacktoforcekill"                            , "aimbot"                                                                          , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbotattacktoforcekill );
       addmenuitem( "targettag"                                    , "aimbot"                                                                          , ar_content    , ly_aimbots            , mod_enabled       , ::switchaimbottargettag );
       addmenuitem( "aimingrequired"                               , "aimbot"                                                                          , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbotaimingrequired );
       addmenuitem( "aimtracking"                                  , "aimbot"                                                                          , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbotaimtracking );
       addmenuitem( "aimstealth"                                   , "aimbot"                                                                          , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbotaimstealth );
       addmenuitem( "autokill"                                     , "aimbot"                                                                          , ar_self       , ly_aimbots            , mod_enabled       , ::onfaimbotautokill );
   addmenulayer(    "vehiclesmenu"                                                                                                                     , lv_admin      , ly_root               , ar_submenu        , ly_vehicles );
   addmenulayer(    "spawnvehicles"                                                                                                                    , lv_admin      , ly_vehicles           , ar_submenu        , ly_defvehicles );
       addmenuitem( "atv"                                          , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "little_bird"                                  , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::emptyfunction );
       addmenuitem( "apc_russian"                                  , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "cop_car"                                      , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "technical"                                    , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "large_transport"                              , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "light_tank"                                   , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "cargo_truck"                                  , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "hoopty"                                       , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "hoopty_truck"                                 , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "jeep"                                         , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "medium_transport"                             , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "pickup_truck"                                 , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "tac_rover"                                    , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "van"                                          , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "big_bird"                                     , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "cargo_truck_mg"                               , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "little_bird_mg"                               , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "loot_chopper"                                 , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "motorcycle"                                   , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "veh_a10fd"                                    , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "veh_bt"                                       , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "veh_indigo"                                   , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "open_jeep_carpoc"                             , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawnvehicle );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_defvehicles        , mod_notonf        , ::emptyfunction );
       addmenuitem( "veh_cruise_predator_mp"                       , [ "rcplane"               , "wmd_vm_missile_cruise_warhead" ]                     , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "rcplane_physics_mp"                           , [ "rcplane"               , "veh8_ind_air_bombing_drone" ]                        , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "vindia_physics_mp"                            , [ "apc_russian"           , "veh8_mil_lnd_vindia_a1_physics_mp" ]                 , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "atango_physics_mp"                            , [ "atv"                   , "veh8_mil_lnd_atango_physics_mp" ]                    , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "mkilo_physics_mp"                             , [ "cargo_truck"           , "veh8_mil_lnd_mkilo23_physics_mp" ]                   , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "skilo_police_physics_mp"                      , [ "cop_car"               , "veh8_civ_lnd_skilo_rus_police_physics_mp" ]          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "pindia_physics_mp"                            , [ "hoopty"                , "veh8_mil_lnd_pindia_1seat_red_physics_mp" ]          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "zuniform_physics_mp"                          , [ "hoopty_truck"          , "veh8_civ_lnd_zuniform_physics" ]                     , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "decho_physics_mp"                             , [ "jeep"                  , "veh8_civ_lnd_decho_vm_dirty_blue_physics_mp" ]       , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "decho_physics_nitrous_mp"                     , [ "jeep"                  , "veh8_civ_lnd_decho_vm_dirty_blue_physics_mp" ]       , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "umike_physics_mp"                             , [ "large_transport"       , "veh8_mil_lnd_umike_infil_physics_mp" ]               , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "veh_bradley_mp"                               , [ "light_tank"            , "veh8_mil_lnd_coscar_west" ]                          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "lbravo_physics_mp"                            , [ "little_bird"           , "veh8_mil_air_lbravo_personnel_mp_flyable" ]          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "asierra_physics_mp"                           , [ "medium_transport"      , "veh8_mil_lnd_asierra_physics_mp" ]                   , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "techo_physics_mp"                             , [ "pickup_truck"          , "veh8_civ_lnd_techo_physics_mp" ]                     , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "tromeo_physics_mp"                            , [ "tac_rover"             , "veh8_mil_lnd_tromeo_physics_mp" ]                    , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "hindia_physics_mp"                            , [ "technical"             , "veh8_civ_lnd_hindia_physics_mp" ]                    , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "palfa_physics_mp"                             , [ "van"                   , "veh8_civ_lnd_palfa_windows_east_physics_tan_mp" ]    , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "bt_mp"                                        , [ "veh_bt"                , "veh_s4_mil_air_bomber_wz" ]                          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "mkilo_physics_mg"                             , [ "cargo_truck_mg"        , "veh8_mil_lnd_mkilo23_gunner" ]                       , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "cargo_truck_susp"                             , [ "cargo_truck_susp"      , "veh_s4_mil_lnd_truck_opapa40_wz" ]                   , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "cargo_truck_susp_aa"                          , [ "cargo_truck_susp_aa"   , "veh_s4_mil_lnd_truck_opapa40_flatbed_wz" ]           , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "mkilo_physics_mg_convoy"                      , [ "convoy_truck"          , "veh_s4_mil_lnd_truck_opapa40_armored_wz" ]           , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "a10_warthog_fd"                               , [ "veh_a10fd"             , "veh_s4_mil_air_dalpha_wz" ]                          , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "indigo_mp"                                    , [ "veh_indigo"            , "veh_s4_mil_air_aindigo_wz" ]                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "motorcycle_physics_mp"                        , [ "motorcycle"            , "veh_t9_mil_lnd_motorcycle_wz" ]                      , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "open_jeep_physics_mp"                         , [ "open_jeep"             , "veh_s4_mil_lnd_m151" ]                               , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "open_jeep_physics_carpoc_mp"                  , [ "open_jeep_carpoc"      , "veh_s4_mil_ratrace_suv_wz" ]                         , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
       addmenuitem( "veh_rcxd_mp"                                  , [ "veh_rcxd"              , "lm_veh_t9_drone_rcxd" ]                              , undefined     , ly_defvehicles        , mod_notonf        , ::execspawntrackingvehicle );
   addmenulayer(    "spawnsmenu"                                                                                                                       , lv_cohost     , ly_root               , ar_submenu        , ly_spawns );
   addmenulayer(    "advancedforgemode"                                                                                                                , lv_cohost     , ly_spawns             , ar_submenu        , ly_forge );
       addmenuitem( "advancedforgemode"                            , undefined                                                                         , ar_self       , ly_forge              , mod_enabled       , ::onfadvancedforgemode );
       addmenuitem( "combineobject"                                , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::execforgemodecombineobject );
       addmenuitem( "spinchange"                                   , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::switchforgemodespinningmode );
       addmenuitem( "linkobject"                                   , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::switchforgemodelinkself );
       addmenuitem( "rotatexaxis"                                  , "advancedforgemode"                                                               , ar_self       , ly_forge              , mod_enabled       , ::onfforgemoderotatexaxis );
       addmenuitem( "firedcreate"                                  , "advancedforgemode"                                                               , ar_self       , ly_forge              , mod_enabled       , ::onfforgemodefiredcreate );
       addmenuitem( "autolinkonspawn"                              , "advancedforgemode"                                                               , ar_self       , ly_forge              , mod_enabled       , ::onfforgemodeautolinkonspawn );
       addmenuitem( "ignorecollision"                              , "advancedforgemode"                                                               , ar_self       , ly_forge              , mod_enabled       , ::onfforgemodeignorecollision );
       addmenuitem( "changespawnedtime"                            , "advancedforgemode"                                                               , ar_content    , ly_forge              , mod_enabled       , ::switchforgemodespawnedtime );
       addmenuitem( "spawnlength"                                  , "advancedforgemode"                                                               , ar_content    , ly_forge              , mod_enabled       , ::switchforgemodemovesize );
       addmenuitem( "deletelastobject"                             , "_objectcount"                                                                    , ar_devidevol  , ly_forge              , mod_fastreflesh   , ::execforgemodedeletelastobject );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "changespawnedmodel"                           , "advancedforgemode"                                                               , ar_content    , ly_forge              , mod_enabled       , ::switchforgemodemodel );
       addlistmenu( "modellistpackages"                            , "packagemodels"                                                                   , lv_cohost     , ly_forge              , ar_submenu        , ly_package_forge      , mod_notonf    , ::execchangeforgemodemodel );
       addlistmenu( "modellistflags"                               , "flagmodels"                                                                      , lv_cohost     , ly_forge              , ar_submenu        , ly_flag_forge         , mod_notonf    , ::execchangeforgemodemodel );
       addlistmenu( "modellistdogtags"                             , "dogtagmodels"                                                                    , lv_cohost     , ly_forge              , ar_submenu        , ly_dogtag_forge       , mod_notonf    , ::execchangeforgemodemodel );
       addlistmenu( "modellistvehicles"                            , "vehiclesmodels"                                                                  , lv_cohost     , ly_forge              , ar_submenu        , ly_vehicle_forge      , mod_notonf    , ::execchangeforgemodemodel );
       addlistmenu( "modellistprops"                               , "propmodels"                                                                      , lv_cohost     , ly_forge              , ar_submenu        , ly_prop_forge         , mod_notonf    , ::execchangeforgemodemodel );
       //addlistmenu( "modellistanimal"                              , "propanimals"                                                                   , lv_cohost     , ly_forge              , ar_submenu        , ly_animal_forge       , mod_notonf    , ::execchangeforgemodemodel );
       //addlistmenu( "modellistzombie"                              , "propzombies"                                                                   , lv_cohost     , ly_forge              , ar_submenu        , ly_zombie_forge       , mod_notonf    , ::execchangeforgemodemodel );
       //addlistmenu( "modellistdebug"                               , "propdebugs"                                                                      , lv_cohost     , ly_forge              , ar_submenu        , ly_debug_forge        , mod_notonf    , ::execchangeforgemodemodel );
       addlistmenu( "modellistmaps"                                , "mapmodels"                                                                       , lv_cohost     , ly_forge              , ar_submenu        , ly_map_forge          , mod_notonf    , ::execchangeforgemodemodel );
       addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription1"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription2"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription3"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription4"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription5"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription6"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription7"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription8"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription9"                        , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription10"                       , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription11"                       , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription12"                       , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription13"                       , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
       addmenuitem( "forgemodedescription14"                       , undefined                                                                         , undefined     , ly_forge              , mod_notonf        , ::emptyfunction );
    addmenulayer(    "mexicanwave"                                                                                                                      , lv_cohost     , ly_spawns             , ar_submenu        , ly_mexicanwave );
        addmenuitem( "mexicanwave"                                  , undefined                                                                         , ar_level      , ly_mexicanwave        , mod_enabled       , ::execmexicanwave );
        addmenuitem( "changemodel"                                  , "_" + "mexicanwave"                                                               , ar_devide     , ly_mexicanwave        , mod_enabled       , ::switchmexicanwavemodel );
        addmenuitem( "deleteobject"                                 , undefined                                                                         , undefined     , ly_mexicanwave        , mod_notonf        , ::execdeletemexicanwave );
    //addmenulayer(    "attractions"                                                                                                                      , lv_cohost     , ly_spawns             , ar_submenu        , ly_attraction );
    //    addmenuitem( "twister"                                      , undefined                                                                         , ar_level      , ly_attraction         , mod_enabled       , ::onftwister );
//    addmenuitem(     "---"                                          , undefined                                                                         , undefined     , ly_spawns             , mod_notonf        , ::emptyfunction );
//        addmenuitem( "discodancer"                                  , undefined                                                                         , ar_level      , ly_spawns             , mod_enabled       , ::execdiscodancer );
//        addmenuitem( "deleteobject"                                 , undefined                                                                         , undefined     , ly_spawns             , mod_notonf        , ::execdeletediscodancer );
    addmenulayer(    "playersmenu"                                                                                                                      , lv_cohost     , ly_root               , ar_submenu        , ly_playersref );
        addmenuitem( "setunverified"                                , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::removeauthunverified );
        addmenuitem( "setverified"                                  , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthverified );
        addmenuitem( "setvip"                                       , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthvip );
        addmenuitem( "setadmin"                                     , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthadmin );
        addmenuitem( "setcohost"                                    , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthcohost );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::emptyfunction );
        addmenuitem( "teleporttome"                                 , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::execteleporttomesingle );
        addmenuitem( "teleporttohim"                                , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::execteleporttohimsingle );
        addmenuitem( "kick"                                         , undefined                                                                         , ar_player     , ly_playersmod         , mod_notonf        , ::execkickforplayer );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::emptyfunction );
        addmenuitem( "outofmappossible"                             , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfoutofmappossibleforplayer );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfgodmodeforplayer );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfinfinityammoforplayer );
        addmenuitem( "moddedbullets"                                , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfmoddedbulletsforplayer );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfbindnoclipforplayer );
        addmenuitem( "rocketride"                                   , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfrocketrideforplayer );
        addmenuitem( "setmodel"                                     , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfsetmodelforplayer );
        addmenuitem( "thirdperson"                                  , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfthirdpersonforplayer );
    addmenulayer(    "allplayersmenu"                                                                                                                   , lv_host       , ly_root               , ar_submenu        , ly_allplayers );
        addmenuitem( "setunverified"                                , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::removeauthunverifiedforallplayers );
        addmenuitem( "setverified"                                  , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthverifiedforallplayers );
        addmenuitem( "setvip"                                       , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthvipforallplayers );
        addmenuitem( "setadmin"                                     , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthadminforallplayers );
        addmenuitem( "setcohost"                                    , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthcohostforallplayers );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::emptyfunction );
        addmenuitem( "lang_en"                                      , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::changelanguageenforallplayers );
        addmenuitem( "lang_ja"                                      , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::changelanguagejaforallplayers );
        addmenuitem( "teleporttome"                                 , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::execteleporttomeforallplayers );
        addmenuitem( "freezeplayer"                                 , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onffreezeplayerforallplayers );
        addmenuitem( "kick"                                         , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::execkickforallplayers );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::emptyfunction );
        addmenuitem( "outofmappossible"                             , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfoutofmappossibleforallplayers );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfgodmodeforallplayers );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfinfinityammoforallplayers );
        addmenuitem( "moddedbullets"                                , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfmoddedbulletsforallplayers );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfbindnoclipforallplayers );
        addmenuitem( "rocketride"                                   , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfrocketrideforallplayers );
        addmenuitem( "setmodel"                                     , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfsetmodelforallplayers );
        addmenuitem( "thirdperson"                                  , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfthirdpersonforallplayers );
//   addmenulayer(    "messagesmenu"                                                                                                                     , lv_host       , ly_root               , ar_submenu        , ly_messages );
//       addmenuitem( "doheart"                                      , undefined                                                                         , ar_level      , ly_messages           , mod_enabled       , ::onfdoheart );
   addmenulayer(    "gamesettingsmenu"                                                                                                                 , lv_host       , ly_root               , ar_submenu        , ly_gamesettings );
       addmenuitem( "quickscopelobby"                              , undefined                                                                         , ar_level      , ly_gamesettings       , mod_enabled       , ::onfquickscopelobby );
       addmenuitem( "autogivecohost"                               , undefined                                                                         , ar_level      , ly_gamesettings       , mod_enabled       , ::onfautogivecohost );
       addmenuitem( "deletelastobject"                             , "_objectcount"                                                                    , ar_devidelev  , ly_gamesettings       , mod_fastreflesh   , ::execdeletelastobject );
       addmenuitem( "fastrestrat"                                  , undefined                                                                         , undefined     , ly_gamesettings       , mod_notonf        , ::execfastrestrat );
       addmenuitem( "pausetimer"                                   , undefined                                                                         , ar_level      , ly_gamesettings       , mod_enabled       , ::onfpausetimer );
       addmenuitem( "endgame"                                      , undefined                                                                         , undefined     , ly_gamesettings       , mod_notonf        , ::execendgame );
       //addmenuitem( "nofalldamage"                                 , "scr_descender_speed"/*"ntpnrqtknp"*/                                             , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchnofalldamage ); // sv_cheats
       //addmenuitem( "scr_fallDamageMinHeight"                      , "scr_fallDamageMinHeight"/*"ntpnrqtknp"*/                                         , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchnofalldamage2 ); // sv_cheats
       //addmenuitem( "bg_fallDamageMinHeight"                       , "bg_fallDamageMinHeight"/*"ntpnrqtknp"*/                                          , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchnofalldamage3 ); // sv_cheats
       //addmenuitem( "scr_subMap_fallDamageMinHeight"               , "scr_subMap_fallDamageMinHeight"/*"ntpnrqtknp"*/                                  , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchnofalldamage4 ); // sv_cheats
       //addmenuitem( "changejumpheight"                            , "mokqnllmkn"/* "mokqnllmkn" */                                                   , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchjumpheight ); // jump_height
       //\addmenuitem( "changespeedscale"                            , "nsrpqnlsnk" /* "nsrpqnlsnk"  */                                                , ar_dvar       , ly_gamesettings       , mod_enabled       , ::switchspeedscale ); // g_speed
       // addmenuitem( "addbot"                                      , undefined                                                                       , undefined     , ly_gamesettings       , mod_notonf        , ::emptyfunction );
       // addmenuitem( "kickbot"                                     , undefined                                                                       , undefined     , ly_gamesettings       , mod_notonf        , ::emptyfunction );
       //addmenuitem( "---"                                         , undefined                                                                        , undefined     , ly_gamesettings       , mod_notonf        , ::emptyfunction );
       //addmenuitem( "michaelmyers"                                , undefined                                                                        , ar_level      , ly_gamesettings       , mod_enabled       , ::testsetlevel );
    
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : List
// ja : リスト
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //



//++++++++++++++++++++++++++++++
// en : build model list
// ja : モデルリストを構築する
//++++++++++++++++++++++++++++++
modellistconstruction( onlymap )
{
    if ( !isdefined( onlymap ) )
    {
        l_name                                                  = "modellistpackages";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_field_upgrade_01";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_large_stackable_01";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_large_stackable_01_jugg";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_large_stackable_01_dummy";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "com_plasticcase_beige_big_iw6";
        if ( scripts\mp\utility\game::getgametype( ) != "br" )
        {
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "military_carepackage_01_enemy";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "military_carepackage_01_friendly";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "military_carepackage_01_juggernaut";
        }
        

        l_name                                                  = "modellistvehicles";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_alfa10";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_alfa10_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec8_small";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec8_small_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_lbravo";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_lbravo_mp";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_lbravo_east_mp";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_lbravo_personnel_mp_flyable";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_palfa_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_ind_air_bombing_drone";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec9_small";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec9_small_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_auniform";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_auniform_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_small";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_atango_physics_mp";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_whotel";
        if ( scripts\mp\utility\game::getgametype( ) != "br" )
        {
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_palfa";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_ahotel64_ks_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_ahotel64_ks_east_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_suniform25";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_suniform25_west";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_halfa_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_halfa_east_mp";
        }
        else
        {
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_stango_static";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_mindia8_plunder_x";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_mkilo23_skud_static2";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_vindia_a1_west_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_vindia_a1_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_mkilo23_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_civ_lnd_skilo_rus_police_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_civ_lnd_zuniform_physics";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_civ_lnd_decho_vm_dirty_blue_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_umike_infil_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_coscar_east";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_coscar_west";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_asierra_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_civ_lnd_techo_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_tromeo_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_civ_lnd_hindia_physics_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "x1_u2_plane";
        }


        l_name                                                  = "modellistflags";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "prop_flag_neutral";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ctf_game_flag_east";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_neutral";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_west";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_east";


        l_name                                                  = "modellistdogtags";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_blue";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_green";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_purple";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_orange";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_gold";
        

        l_name                                                  = "modellistprops";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "wmd_vm_missile_cruise_warhead";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_deployable_cover";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_flarestick";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks_carrier";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "viewhands_base_iw8";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_c4";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_emp";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_malfa_big";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mw_test_soldier";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mw_dist_soldier";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mw_scale_soldier";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "axis_guide_createfx_rot";
        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "axis_guide_createfx";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "uk_electrical_box_medium_02_animated";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_crate_marker_mp";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_cruise_predator_mp";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_halfa_turret";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_whotel_turret";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "body_opforce_london_terrorist_1_2";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "head_male_bc_03";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_nuke_mp";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "art_stadium_ball";
		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_carepackage_02_rupture";
        if ( scripts\mp\utility\game::getgametype( ) != "br" )
        {
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "offhand_wm_grenade_smoke";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_lnd_carepackage_parachute";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "pilot_viewmodel_arms";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "wmd_vm_missile_cruise";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "ks_ac130_mp";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "cop_marker_scriptable";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "weapon_mg_bravo50_balcony";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "dz_flare_scriptable";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_cuniform";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "veh8_mil_air_cuniform_east";
        }
        else
        {
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "box_wooden_grenade_01";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "lm_domination_point_01";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "military_skyhook_backpack";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "scr_smoke_grenade";
            level.lvlstat[l_name][level.lvlstat[l_name].size]   = "military_skyhook_far";
        }
        
//        l_name                                                  = "modellistanimal";
//        level.lvlstat[l_name]                                   = [];
//        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistpackages"] );
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec8_small";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec8_small_east";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_lbravo";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_ind_air_bombing_drone";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec9_small";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mquebec9_small_east";
//        level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_whotel";
//        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistflags"] );
//        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistdogtags"] );
//        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistprops"] );
//        
//        l_name                                                  = "modellistdebug";
//        level.lvlstat[l_name]                                   = [];
//
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mortar_target";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "equipment_mortar_shell_improvised_01_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "viewhands_base_iw8";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "viewhands_base_iw8";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_c4";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "shardball_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_c4";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "prop_flag_neutral";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_minefield_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mw_dist_soldier";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "super_scramble_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_fullbody_heavy";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_body_infected_a";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_carepackage_parachute";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_grenade_smoke";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_carepackage_parachute_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks_carrier";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_target_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_target_br_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_br_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_fuelstrike_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_fuelstrike_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_marker_br_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_apache_turret_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_apache_turret_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_apache_turret_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "pilot_viewmodel_arms";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "wmd_vm_missile_cruise";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_target_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_mp_mesh";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_radar_drone_escort_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_radar_drone_recon_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_vm_mg_sentry_turret_invis_base";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_vm_mg_sentry_turret_invis_base";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_vm_mg_sentry_turret_invis_base_vehicle";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_toma_strike_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_toma_strike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_toma_strike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_toma_strike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_white_phosphorus_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_white_phosphorus_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_vindia_a1_turret_west_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_vindia_a1_turret_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_coscar_east_turret";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_coscar_west_turret";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_coscar_east_turret_gun";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_coscar_west_turret_gun";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_bromeo_parachute";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks_carrier";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_coscar_west_turret_gun";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "player_death_fx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "viewhands_base_iw8";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "equip_snapshot_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_flarestick";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_deployable_cover";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "trophy_system_mp_explode";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_field_upgrade_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_death_switch_mp";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_grenade_smoke";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_crate_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_whotel_crate";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_whotel";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_pac_sentry_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_toma_strike_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_life_pack";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_col_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_fr_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_en_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_dam_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_dam_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_dam_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_shinguard_wm";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "cop_marker_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "prop_suitcase_bomb";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_wm_sn_crossbow_bolt_fire_static_dst";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_wm_sn_xmike109_projectile";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_wm_ascender_ch3";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_ach_gp_bomb_600lb_01_gameplay";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh_s4_mil_ratrace_suv_turret_wz";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "trophy_system_mp_explode";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_skyhook_far_mp_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_buy_station_crate_wood_01_ww2";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_briefcase_gas_closed";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_briefcase_gas_nodraw";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_greenbay_impact";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_rock_boulder_02_kenosha_s3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_offhand_vm_stim_zmb_loot";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_target_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_ac130_target_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "temp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_skyhook_depballoon_backpack";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dom_flag_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dom_flag_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_neutral";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ctf_game_flag_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_christmas_tree_large_set_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_zombie_a_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "loot_helmet";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_mercenary_buy_station_rig_skeleton";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_animated";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_animated";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_rigid";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_military_old_recon_station";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "comms_tower_indicator";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh_s4_mil_air_dalpha_wz_turret_attach";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_domination_point_01_mover_nocol";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_domination_point_01_mover";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_military_old_recon_station";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "soa_tower_bomb";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_marker_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_br_bodycount";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_skyhook_backpack";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_delivery_rope";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_delivery_bag";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "c_s4_rus_redshirt_02";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "wz_usa_bomber_b17_phase05";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "wz_usa_bomber_b17_destroyed_rig";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "usa_bomber_b17_hero_wing_combined_02";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_br_lep";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_military_old_recon_station";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lep_sfx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lep_sfx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_intel_br_mendota";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_mkilo23_turret_payload_nomesh";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_supportbox_armor_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_br_payload_checkpoint";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "uk_tool_box_small_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "payload_bld_barrier_constructed_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "uk_tool_box_small_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_briefcase_bomb";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_hq_crate_02_payload";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_wm_mg_mobile_turret";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_br_payload_checkpoint";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_raven_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_skyhook_backpack";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_delivery_rope";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_delivery_bag";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "risk_dom_plate";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_ahotel64_turret_wm_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_ahotel64_turret_wm_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "rebirth_fx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_bromeo_parachute";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_ks_carrier";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_br_x2";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_vfx_ambushes_spawn";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_military_old_recon_station";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_ca_ger_bomber_117_group_ultralow";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_target_mp_x2";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airstrike_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_loot_crate_01_br_geigerstash_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_gulag_cuffs";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "p9_ver_soldier_gear";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ctl_parachute_player";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_animated";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x5";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x5";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_interior_infil_netting";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_interior_infil_cabin_door";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x5";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_mp_eastern_bale_3_1";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x10";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_infil_flight";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_acharlie130_magma_animated";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_infil_int_bags_back_left_up";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_infil_int_bags_back_right_up";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_infil_int_bags_back_right_low";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_infil_ropes";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x5";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_br_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x5";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "generic_prop_x10";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_open_back_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_interior_vm_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_infil_flight";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_vm_infil";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_infil_flight_articulated";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_skilo_interior_infil_cabin_door";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_loot_crate_lep_quest";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_ahotel64_turret_wm_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_ahotel64_turret_wm_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_veh8_mil_lnd_br_train_assault_decal_0"+"x2_vfx_turret_loco_pop";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_vfx_turret_pop";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_reveal_assault_car_turrets_destroyed_decal";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "communication_antenna_mobile_rig";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_air_mindia8_plunder_x";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_rapelling_rope_01_fiber_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_delivery_bag";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_fafir_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_fafir_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "scr_smoke_grenade";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_rapelling_rope_01_fiber_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_mercenary_extraction_delivery_bag";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "rebirth_fx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "equip_flare_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_plunder_extraction_vault";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_civ_lnd_palfa_ambulance_ukraine";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "medical_defibrillator_wall_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_usmc_ar_scriptmover";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "p9_ang_satellite_recovery_unit_full";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "p9_ang_satellite_recovery_unit_full_02";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "p9_wz_sat_link_objective_satellite_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_loot_crate_scavenger_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_loot_crate_01_br_scavenger_01_adler";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_loot_crate_01_br_scavenger_01_soa_tower";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_military_skyhook_extraction_01_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_military_skyhook_extraction_01_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_skyhook_extraction_base_01_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "misc_vm_ascender_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lm_military_skyhook_extraction_01_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "br_skyhook_extraction_base_01_ch3";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "t9_vnm_door_bunker_metal_01_rig";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lep_sfx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lep_sfx";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "us_military_tnt_bundle_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x2_smoke_marker";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "x1_military_loot_crate_br_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "cop_marker_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_crate_large_stackable_01_jugg";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "weapon_mg_bravo50_balcony";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_grenade_smoke";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "cop_marker_scriptable";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_stadium_scoreboard_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_stadium_scoreboard_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_emp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "prop_suitcase_bomb";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "cop_marker_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ks_airdrop_crate_br";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_human_skull_02";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dz_flare_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_contest";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_friend";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_enemy";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "fullbody_zombie_a";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_contest";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_friend";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "mp_parkour_hardpoint_floor_01_enemy";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "lethal_smoke_grenade_wm";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dogtags_iw7_foe";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dogtags_iw7_foe";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ctf_game_flag_base";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_emp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "offhand_wm_emp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_human_skull_02";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_human_skull_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_orange";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_blue";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dom_flag_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_west";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_east";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dom_flag_neutral";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "ee_decor_gravestone_01_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "grind_flag_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_bromeo_allies_mp_to";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "veh8_mil_lnd_bromeo_turret_allies_mp";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_orange";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "military_dogtags_iw8_blue";
//
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vfx_ri_dom";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "care_package_iw7_dummy";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "dom_flag_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "cop_marker_scriptable";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "vm_arms_zombie_a";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "c_s4_vm_fra_novak_01";
//		level.lvlstat[l_name][level.lvlstat[l_name].size]       = "enemy_lw_base_zombie";

        
        l_name                                                  = "modellistall";
        level.lvlstat[l_name]                                   = [];
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistpackages"] );
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistflags"] );
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistdogtags"] );
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistprops"] );
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistvehicles"] );
        level.lvlstat[l_name]                                   = scripts\engine\utility::array_combine( level.lvlstat[l_name] , level.lvlstat["modellistmaps"] );
    }
    else
    {
        l_defentities = getentarray( "script_model" , "classname" );
        l_brushentities = getentarray( "script_brushmodel" , "classname" );
        level.lvlstat["modellistmaps"] = [];

        if ( isdefined( l_defentities ) && ( 0 < l_defentities.size ) )
        {
            for ( i = 0; i < l_defentities.size; i++ )
            {
                if ( scripts\engine\utility::array_contains( level.lvlstat["modellistmaps"] , l_defentities[i].model ) ) { continue; }
                level.lvlstat["modellistmaps"] = scripts\engine\utility::array_add( level.lvlstat["modellistmaps"] , l_defentities[i].model );
            }
        }
        if ( isdefined( l_brushentities ) && ( 0 < l_brushentities.size ) )
        {
            for ( i = 0; i < l_brushentities.size; i++ )
            {
                if ( scripts\engine\utility::array_contains( level.lvlstat["modellistmaps"] , l_brushentities[i].model ) ) { continue; }
                level.lvlstat["modellistmaps"] = scripts\engine\utility::array_add( level.lvlstat["modellistmaps"] , l_brushentities[i].model );
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
// en : create a weapon list
// ja : 武器リストを作成する
//++++++++++++++++++++++++++++++
constructionweaponslist( )
{
    level.lvlstat["wplist_ar"]          = [];
    level.lvlstat["wplist_smg"]         = [];
    level.lvlstat["wplist_lmg"]         = [];
    level.lvlstat["wplist_mr"]          = [];
    level.lvlstat["wplist_sr"]          = [];
    level.lvlstat["wplist_ps"]          = [];
    level.lvlstat["wplist_sg"]          = [];
    level.lvlstat["wplist_exp"]         = [];

    level.lvlstat["wplist_stdgr"]       = [];
    level.lvlstat["wplist_allgr"]       = [];
    level.lvlstat["wplist_ks"]          = [];
    level.lvlstat["wplist_allwp"]       = [];
    level.lvlstat["wplist_allms"]       = [];
    level.lvlstat["wplist_allbt"]       = [];
    level.lvlstat["wplist_t9wp"]        = [];
    level.lvlstat["wplist_s4wp"]        = [];

    // level.lvlstat["wplist_gr"]          = [];
    // level.lvlstat["wplist_cqb"]         = [];
    // level.lvlstat["wplist_tac"]         = [];
    // level.lvlstat["wplist_lnc"]         = [];
    // level.lvlstat["wplist_kf"]          = [];
    // level.lvlstat["wplist_sp"]          = [];
    // level.lvlstat["wplist_normalwp"]    = [];
    // level.lvlstat["wplist_stdmsl"]      = [];
    // level.lvlstat["wplist_spmsl"]       = [];


//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_akilo47_mp"  ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_asierra12_mp";
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_falpha_mp"   ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_galima_mp"   ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_kilo433_mp"  ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_mcharlie_mp" ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_mike4_mp"    ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_falima_mp"   ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_scharlie_mp" ;
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_sierra552_mp";
//    level.lvlstat["wplist_ar"][level.lvlstat["wplist_ar"].size]         = "iw8_ar_tango21_mp"  ;
//
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_augolf_mp"  ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_beta_mp"    ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_charlie9_mp";
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_mpapa5_mp"  ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_papa90_mp"  ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_smgolf45_mp";
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_uzulu_mp"   ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_mpapa7_mp"  ;
//    level.lvlstat["wplist_smg"][level.lvlstat["wplist_smg"].size]       = "iw8_sm_victor_mp"  ;
//
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_dblmg_mp"  ;
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_kilo121_mp";
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_lima86_mp" ;
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_mgolf34_mp";
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_mkilo3_mp" ;
//    level.lvlstat["wplist_lmg"][level.lvlstat["wplist_lmg"].size]       = "iw8_lm_pkilo_mp"  ;
//
//    level.lvlstat["wplist_mr"][level.lvlstat["wplist_mr"].size]         = "iw8_sn_crossbow_mp";
//    level.lvlstat["wplist_mr"][level.lvlstat["wplist_mr"].size]         = "iw8_sn_golf28_mp"  ;
//    level.lvlstat["wplist_mr"][level.lvlstat["wplist_mr"].size]         = "iw8_sn_kilo98_mp"  ;
//    level.lvlstat["wplist_mr"][level.lvlstat["wplist_mr"].size]         = "iw8_sn_sbeta_mp"   ;
//    level.lvlstat["wplist_mr"][level.lvlstat["wplist_mr"].size]         = "iw8_sn_sksierra_mp";
//
//    level.lvlstat["wplist_sr"][level.lvlstat["wplist_sr"].size]         = "iw8_sn_alpha50_mp" ;
//    level.lvlstat["wplist_sr"][level.lvlstat["wplist_sr"].size]         = "iw8_sn_delta_mp"   ;
//    level.lvlstat["wplist_sr"][level.lvlstat["wplist_sr"].size]         = "iw8_sn_hdromeo_mp" ;
//    level.lvlstat["wplist_sr"][level.lvlstat["wplist_sr"].size]         = "iw8_sn_mike14_mp"  ;
//    level.lvlstat["wplist_sr"][level.lvlstat["wplist_sr"].size]         = "iw8_sn_xmike109_mp";
//
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_cpapa_mp"     ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_decho_mp"     ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_golf21_mp"    ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_mike1911_mp"  ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_mike9_mp"     ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_pi_papa320_mp"   ;
//    level.lvlstat["wplist_ps"][level.lvlstat["wplist_ps"].size]         = "iw8_minigunksjugg_mp";
//
//    level.lvlstat["wplist_sg"][level.lvlstat["wplist_sg"].size]         = "iw8_sh_charlie725_mp";
//    level.lvlstat["wplist_sg"][level.lvlstat["wplist_sg"].size]         = "iw8_sh_dpapa12_mp"   ;
//    level.lvlstat["wplist_sg"][level.lvlstat["wplist_sg"].size]         = "iw8_sh_mike26_mp"    ;
//    level.lvlstat["wplist_sg"][level.lvlstat["wplist_sg"].size]         = "iw8_sh_oscar12_mp"   ;
//    level.lvlstat["wplist_sg"][level.lvlstat["wplist_sg"].size]         = "iw8_sh_romeo870_mp"  ;

    level.lvlstat["wplist_exp"][level.lvlstat["wplist_exp"].size]       = "iw8_la_gromeo_mp";
    level.lvlstat["wplist_exp"][level.lvlstat["wplist_exp"].size]       = "iw8_la_juliet_mp";
    level.lvlstat["wplist_exp"][level.lvlstat["wplist_exp"].size]       = "iw8_la_kgolf_mp" ;
    level.lvlstat["wplist_exp"][level.lvlstat["wplist_exp"].size]       = "iw8_la_mike32_mp";
    level.lvlstat["wplist_exp"][level.lvlstat["wplist_exp"].size]       = "iw8_la_rpapa7_mp";
    
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_ar"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_smg"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_lmg"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_mr"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_sr"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_ps"] );
//    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_sg"] );
    level.lvlstat["wplist_allwp"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allwp"] , level.lvlstat["wplist_exp"] );

//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "frag_grenade_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "semtex_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "flash_grenade_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "concussion_grenade_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "smoke_grenade_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "snapshot_grenade_mp";
//    level.lvlstat["wplist_stdgr"][level.lvlstat["wplist_stdgr"].size]   = "toma_proj_mp";
//
//    level.lvlstat["wplist_allgr"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allgr"] , level.lvlstat["wplist_stdgr"] );
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "c4_empty_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "claymore_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "at_mine_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "thermite_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "emp_bomb_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "deploy_airdrop_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "deploy_airdrop_mp_sticky";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "little_bird_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "dragonsbreath_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "thermite_bolt_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "thermite_bolt_radius_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "semtex_bolt_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "semtex_bolt_splash_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "ks_remote_device_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "ks_remote_gunship_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "iw8_green_beam_mp";
//    level.lvlstat["wplist_allgr"][level.lvlstat["wplist_allgr"].size]   = "nuke_mp";

    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "apache_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "hover_jet_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "emp_drone_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "ac130_25mm_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "ac130_40mm_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "ac130_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "ac130_105mm_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "white_phosphorus_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "cruise_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "bradley_tow_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "bradley_tow_proj_ks_mp";

/*
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "pop_rocket_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "pop_rocket_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "tur_bradley_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "lighttank_tur_ks_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "tur_gun_lighttank_ks_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "iw8_turret_50cal_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "drone_hive_projectile_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "jackal_cannon_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "sentry_shock_missile_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "power_exploding_drone_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "fuelstrike_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "stinger_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "jackal_turret_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "hover_jet_turret_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "apache_turret_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "hind_missile_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "hind_bomb_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "cobra_20mm_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "death_switch_proj_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "sentry_shock_grenade_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "sam_projectile_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "uplinkball_tracking_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "iw7_uplinkball_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "iw7_tdefball_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "tur_gun_faridah_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "snowball_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "pball_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "tur_gun_lighttank_mp";
    level.lvlstat["wplist_ks"][level.lvlstat["wplist_ks"].size]         = "remotemissile_projectile_mp";
    */
    
    level.lvlstat["wplist_allms"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allms"] , level.lvlstat["wplist_exp"] );
    level.lvlstat["wplist_allms"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allms"] , level.lvlstat["wplist_ks"] );

    level.lvlstat["wplist_allbt"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allbt"] , level.lvlstat["wplist_allms"] );
    //level.lvlstat["wplist_allbt"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allbt"] , level.lvlstat["wplist_sg"] );
    //level.lvlstat["wplist_allbt"]                                       = scripts\engine\utility::array_combine( level.lvlstat["wplist_allbt"] , level.lvlstat["wplist_sr"] );

//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9fasthandling_mp"  ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9slowhandling_mp"  ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9soviet_mp"        ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9standard_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9damage_mp"        ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9fastfire_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9flechette_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9mobility_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9longburst_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_lm_t9slowfire_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_lm_t9accurate_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9fastburst_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9slowfire_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9british_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_ar_t9season6_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_lm_t9light_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_lm_t9fastfire_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9cqb_mp"           ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9spray_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9handling_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9heavy_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9capacity_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9season6_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9standard_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9fastfire_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9nailgun_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9burst_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sm_t9accurate_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9accurate_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9precisionsemi_mp" ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9damagesemi_mp"    ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9powersemi_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9quickscope_mp"    ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9standard_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9cannon_mp"        ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sn_t9crossbow_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sh_t9pump_mp"          ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sh_t9semiauto_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sh_t9fullauto_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_sh_t9leveraction_mp"   ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_pi_t9burst_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9scythe_mp"        ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_pi_t9fullauto_mp"      ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9sledgehammer_mp"  ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9wakizashi_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9loadout_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9machete_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9etool_mp"         ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9bat_mp"           ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9mace_mp"          ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9cane_mp"          ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9sai_mp"           ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9battleaxe_mp"     ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9coldwar_mp"       ;
//    level.lvlstat["wplist_t9wp"][level.lvlstat["wplist_t9wp"].size]     = "iw8_me_t9ballisticknife_mp";
//    
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_stango44_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_fnovember2000_mp";       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_asierra44_mp"    ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_balpha_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_bromeopg_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_chotel41_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_fecho_mp"        ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_voscar_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_bromeo37_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_dpapa27_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_mgolf42_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_tyankee11_mp"    ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_promeo45_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_hyankee44_mp"    ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_malpha7_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_aalpha52_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mg_sindia510_mp"    ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_kgolf40_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_ar_emike1_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_ppapa41_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_mpapa40_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_stango5_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_owhiskey_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_guniform45_mp"   ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_thotel_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_wecho43_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_aromeo43_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_fromeo57_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sm_salpha26_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_kalpha98_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_moscar_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_aromeo99_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_ptango41_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_gecho43_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_m1golf_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_svictor40_mp"    ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_mr_malpha1916_mp"   ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sh_becho_mp"        ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sh_bromeo5_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sh_lindia98_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_sh_mike97_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_pi_luniform08_mp"   ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_pi_malpha96_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_pi_mike1911_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_pi_ttango33_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_rindigo_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_knife_mp"        ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_pi_wecho_mp"        ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_katana_mp"       ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_leiomano_mp"     ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_icepick_mp"      ;       
//    level.lvlstat["wplist_s4wp"][level.lvlstat["wplist_s4wp"].size]     = "s4_me_axe_mp"          ;       
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
        

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// button
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //


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

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// welcome
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

        case "projectname":
            return getlangdata( selflang ,
                "^3P^7roject ^5H^7iN^1A^7tyu" ,
                "^3プ^7ロジェクト ^5ひ^7な^1ち^7ゅ" ,
                "^5H^7iN^1A^7tyu ^7計畫" ,
                "^7проект ^5огонь^1На^7Чуу" ,
                "^3P^7rojekt ^5H^7iN^1A^7tyu" );


        case "welcometo":
            return getlangdata( selflang ,
                "^3Welcome to " ,
                "^3ようこそ、" ,
                "^3欢迎，" ,
                "^3добро пожаловать," ,
                "^3Willkommen bei" );


        case "welcometo_ver2":
            return getlangdata( selflang ,
                "Welcome to " ,
                "ようこそ、" ,
                "欢迎，" ,
                "добро пожаловать," ,
                "Willkommen bei" );

            
        case "moddedlobby":
            return getlangdata( selflang ,
                " ^3modded lobby." ,
                " ^3の改造部屋へ。" ,
                " ^3前往改造后的房间。" ,
                " ^3В отремонтированную комнату." ,
                " ^3modifizierte Lobby." );

            
        case "moddedlobby_ver2":
            return getlangdata( selflang ,
                " modded lobby." ,
                " の改造部屋へ。" ,
                " 前往改造后的房间。" ,
                " В отремонтированную комнату." ,
                " modifizierte Lobby." );
                
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

            
        case "yourmenustatus":
            return getlangdata( selflang ,
                "^3" + self.name + " status : " ,
                "^3" + self.name + "の権限階級 : " ,
                "^3" + self.name + " 地位 : " ,
                "^3" + self.name + " положение дел : " ,
                "^3" + self.name + " status : " );

            
        case "modmenuopendescription":
            return getlangdata( selflang ,
                "^3Open mod menu to press^1 "            + getmttext( selflang , "buttonads" ) + " + " + getmttext( selflang , "buttonmelee" ) + "^3." ,
                "^3モッドメニューは^1 "                   + getmttext( selflang , "buttonads" ) + " + " + getmttext( selflang , "buttonmelee" ) + " ^3で開けます。" ,
                "^3按^1 "                                + getmttext( selflang , "buttonads" ) + " + " + getmttext( selflang , "buttonmelee" ) + " ^3可以打开模组菜单。" ,
                "^3Меню мода можно открыть, нажав^1 "    + getmttext( selflang , "buttonads" ) + " + " + getmttext( selflang , "buttonmelee" ) + "." ,
                "^3Öffne das Mod-Menü, um zu drücken^1 " + getmttext( selflang , "buttonads" ) + " + " + getmttext( selflang , "buttonmelee" ) + "^3." );

        case "modmenucontroldescription":
            if ( usegamepad == true )
            {
                return getlangdata( selflang ,
                    "^3Scroll"       + getmttext( selflang , "buttonaction3" ) + getmttext( selflang , "buttonaction2" ) + "^3|Decide" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3|Back" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3スクロール"   + getmttext( selflang , "buttonaction3" ) + getmttext( selflang , "buttonaction2" ) + "^3｜決定"   + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜戻る" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3滚动"         + getmttext( selflang , "buttonaction3" ) + getmttext( selflang , "buttonaction2" ) + "^3｜决定"   + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜后退" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3Прокрутка"    + getmttext( selflang , "buttonaction3" ) + getmttext( selflang , "buttonaction2" ) + "^3｜Решать" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜Назад" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3Scrollen"    + getmttext( selflang , "buttonaction3" ) + getmttext( selflang , "buttonaction2" ) + "3｜Entscheiden" + getmttext( selflang , "buttonads" ) getmttext( selflang , "buttonuse" ) + "^3｜Zurück" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) );
            }
            else
            {
                return getlangdata( selflang ,
                    "^3Scroll"       + getmttext( selflang , "buttontactical" ) + getmttext( selflang , "buttonuse" ) + "^3|Decide" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3|Back" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3スクロール"   + getmttext( selflang , "buttontactical" ) + getmttext( selflang , "buttonuse" ) + "^3｜決定"   + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜戻る" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3滚动"         + getmttext( selflang , "buttontactical" ) + getmttext( selflang , "buttonuse" ) + "^3｜决定"   + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜后退" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3Прокрутка"    + getmttext( selflang , "buttontactical" ) + getmttext( selflang , "buttonuse" ) + "^3｜Решать" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜Назад" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) ,
                    "^3Scrollen"    + getmttext( selflang , "buttontactical" ) + getmttext( selflang , "buttonuse" ) + "^3｜Entscheiden" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonuse" ) + "^3｜Zurück" + getmttext( selflang , "buttonads" ) + getmttext( selflang , "buttonmelee" ) );
            }

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// verification
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

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

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// root menus
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

        case "creditsmenu":
            return getlangdata( selflang ,
                "Credits" ,
                "スタッフロール" ,
                "制作人员" ,
                "Кредиты" ,
                "Credits" );

        case "mainmodsmenu":
            return getlangdata( selflang ,
                "Main mods menu" ,
                "主要なモッドメニュー" ,
                "主模组菜单" ,
                "Главное меню модов" ,
                "Hauptmenü der Mods" );

        case "languagesmenu":
            return getlangdata( selflang ,
                "Languages menu" ,
                "言語メニュー" ,
                "语言菜单" ,
                "языковое меню" ,
                "Sprachenmenü" );

        case "combatassistmenu":
            return getlangdata( selflang ,
                "Combat assist menu" ,
                "戦闘補助メニュー" ,
                "战斗辅助菜单" ,
                "Меню боевой помощи" ,
                "Kampfassistenzmenü" );

//        case "perksmenu":
//            return getlangdata( selflang ,
//                "Perks menu" ,
//                "パークメニュー" ,
//                "福利菜单" ,
//                "Меню привилегий" ,
//                "Vergünstigungsmenü" );

        case "visionsmenu":
            return getlangdata( selflang ,
                "Visions menu" ,
                "画質メニュー" ,
                "愿景菜单" ,
                "Меню видений" ,
                "Visions-Menü" );

        case "funnymenu":
            return getlangdata( selflang ,
                "Funny menu" ,
                "面白いメニュー" ,
                "有趣的菜单" ,
                "Забавное меню" ,
                "Lustiges Menü" );

        case "modelsmenu":
            return getlangdata( selflang ,
                "Models menu" ,
                "3Dモデルメニュー" ,
                "型号菜单" ,
                "Меню моделей" ,
                "Modelle-Menü" );

        case "weaponsmenu":
            return getlangdata( selflang ,
                "Weapons menu" ,
                "武器メニュー" ,
                "武器菜单" ,
                "Меню оружия" ,
                "Waffenmenü" );

        case "customweaponsmenu":
            return getlangdata( selflang ,
                "Custom weapons menu" ,
                "カスタム武器メニュー" ,
                "自定义武器菜单" ,
                "Меню пользовательского оружия" ,
                "Benutzerdefiniertes Waffenmenü" );

        case "bulletsmenu":
            return getlangdata( selflang ,
                "Bullets menu" ,
                "弾薬メニュー" ,
                "项目符号菜单" ,
                "маркированное меню" ,
                "Aufzählungsmenü" );

        case "popularmenu":
            return getlangdata( selflang ,
                "Popular menu" ,
                "汎用機能メニュー" ,
                "热门菜单" ,
                "Популярное меню" ,
                "Beliebtes Menü" );

        case "killstreaksmenu":
            return getlangdata( selflang ,
                "Killstreaks menu" ,
                "キルストリークメニュー" ,
                "连杀记录菜单" ,
                "Меню убийств" ,
                "Killstreaks-Menü" );

        case "customkillstreaksmenu":
            return getlangdata( selflang ,
                "Custom killstreaks menu" ,
                "カスタムキルストリークメニュー" ,
                "自定义连杀菜单" ,
                "Пользовательское меню серий убийств" ,
                "Benutzerdefiniertes Killstreaks-Menü" );

        case "poweredmenu":
            return getlangdata( selflang ,
                "Powered menu" ,
                "超強力メニュー" ,
                "强大的菜单" ,
                "Мощное меню" ,
                "Powered-Menü" );

        case "aimbotsmenu":
            return getlangdata( selflang ,
                "Aimbots menu" ,
                "オートエイムメニュー" ,
                "自动瞄准菜单" ,
                "Меню автоматического прицеливания" ,
                "Aimbots-Menü" );

        case "vehiclesmenu":
            return getlangdata( selflang ,
                "Vehicles menu" ,
                "乗り物メニュー" ,
                "车辆菜单" ,
                "Меню транспортных средств" ,
                "Fahrzeuge-Menü" );

        case "spawnsmenu":
            return getlangdata( selflang ,
                "Spawns menu" ,
                "生成メニュー" ,
                "生成菜单" ,
                "Меню появления" ,
                "Spawns-Menü" );

        case "gamesettingsmenu":
            return getlangdata( selflang ,
                "Game settings menu" ,
                "ゲーム設定メニュー" ,
                "游戏设置菜单" ,
                "Меню настроек игры" ,
                "Spieleinstellungsmenü" );

        case "playersmenu":
            return getlangdata( selflang ,
                "Players menu" ,
                "プレイヤーメニュー" ,
                "播放器菜单" ,
                "меню плеера" ,
                "Spielermenü" );

        case "allplayersmenu":
            return getlangdata( selflang ,
                "All players menu" ,
                "全プレイヤーメニュー" ,
                "所有玩家菜单" ,
                "Меню всех игроков" ,
                "Menü „Alle Spieler“" );


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// basic system word
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

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
                
        case "changelanguage":
            return getlangdata( selflang ,
                "Language change",
                "言語変更",
                "语言更改",
                "Смена языка",
                "Sprachwechsel" );

        case "setmenustatus":
            return getlangdata( selflang ,
                "Set status" ,
                "権限階級の設定" ,
                "设置状态" ,
                "Установить статус" ,
                "Status festlegen" );

        case "---": return "----------";
        
        case "lang_en": return "EN: English";
        case "lang_ja": return "JA: 日本語";
        case "lang_cn": return "CN: 简体中文";
        case "lang_ru": return "RU: Русский";
        case "lang_de": return "DE: Deutsch";


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



        case "usetoride":
            return getlangdata( selflang ,
                getmttext( selflang , "buttonuse" ) + " to ride / " + getmttext( selflang , "buttonlethal" ) + " to get off" ,
                getmttext( selflang , "buttonuse" ) + " で乗車 / " + getmttext( selflang , "buttonlethal" ) + " で降車 できます" ,
                getmttext( selflang , "buttonuse" ) + " 乘车/ " + getmttext( selflang , "buttonlethal" ) + " 下车" ,
                getmttext( selflang , "buttonuse" ) + " — ехать / " + getmttext( selflang , "buttonlethal" ) + " — выходить" ,
                getmttext( selflang , "buttonuse" ) + " reiten / " + getmttext( selflang , "buttonlethal" ) + " aussteigen" );


        case "ignorecollision":
            return getlangdata( selflang ,
                "Ignore collision" ,
                "コリジョン（衝突）の無視" ,
                "忽略碰撞" ,
                "Игнорировать столкновение" ,
                "Kollision ignorieren" );

        case "default":
            return getlangdata( selflang ,
                "Default" ,
                "デフォルト" ,
                "默认" ,
                "По умолчанию" ,
                "Standard" );

        case "value_x":
            return getlangdata( selflang ,
                "x" ,
                "倍" ,
                "倍" ,
                " раза" ,
                "x" );

        case "tracelength":
            return getlangdata( selflang ,
                "Bullet trace length" ,
                "発射先への移動量" ,
                "子弹轨迹长度" ,
                "Длина следа пули" ,
                "Länge der Kugelspur" );

        case "spawnlength":
            return getlangdata( selflang ,
                "Spawn trace length" ,
                "生成先の距離" ,
                "生成轨迹长度" ,
                "Длина трассировки спауна" ,
                "Länge der Spawnspur" );

        case "getobject":
            return getlangdata( selflang ,
                "Get object" ,
                "オブジェクト取得" ,
                "获取对象" ,
                "Получить объект" ,
                "Objekt abrufen" );

        case "deleteobject":
            return getlangdata( selflang ,
                "Delete object" ,
                "オブジェクト削除" ,
                "删除对象" ,
                "Создать объект" ,
                "Objekt löschen" );

        case "rotatexaxis":
            return getlangdata( selflang ,
                "Rotate object X axis" ,
                "オブジェクトX軸回転" ,
                "旋转对象 X 轴" ,
                "Поворот объекта по оси X" ,
                "Objekt X-Achse drehen" );

        case "changespawnedmodel":
            return getlangdata( selflang ,
                "Change spawned model" ,
                "作成オブジェクト種類変更" ,
                "更改生成模型" ,
                "Изменить порожденную модель" ,
                "Gespawntes Modell ändern" );

        case "deletelastobject":
            return getlangdata( selflang ,
                "Delete the last spawned object" ,
                "最後に生成したオブジェクトの削除" ,
                "删除最后生成的对象" ,
                "Удалить последний созданный объект" ,
                "Zuletzt gespawntes Objekt löschen" );


        case "autolinkonspawn":
            return getlangdata( selflang ,
                "Auto link on spawned" ,
                "生成時に自動同期" ,
                "生成时自动链接" ,
                "Автоматическая ссылка при появлении" ,
                "Automatische Verknüpfung bei Spawn" );
                

        case "combineobject":
            return getlangdata( selflang ,
                "Combine object" ,
                "オブジェクト結合" ,
                "组合对象" ,
                "Объединить объект" ,
                "Objekt kombinieren" );


        case "linkobject":
            return getlangdata( selflang ,
                "Link object" ,
                "オブジェクト同期" ,
                "链接对象" ,
                "Связать объект" ,
                "Objekt verknüpfen" );

        case "unlinkobject":
            return getlangdata( selflang ,
                "Unlink object" ,
                "オブジェクト同期解除" ,
                "取消链接对象" ,
                "Отсоединить объект" ,
                "Objektverknüpfung aufheben" );

        case "noobject":
            return getlangdata( selflang ,
                "No object" ,
                "オブジェクトがありません" ,
                "没有对象" ,
                "Нет объекта" ,
                "Kein Objekt" );

        case "movestop":
            return getlangdata( selflang ,
                "Move stop" ,
                "移動の停止" ,
                "移动停止" ,
                "Переместить остановку" ,
                "Bewegungsstopp" );

        case "moveup":
            return getlangdata( selflang ,
                "Move up" ,
                "上に移動" ,
                "上升" ,
                "Переместить вверх" ,
                "Nach oben bewegen" );

        case "movedown":
            return getlangdata( selflang ,
                "Move down" ,
                "下に移動" ,
                "下移" ,
                "Двигаться вниз" ,
                "Nach unten bewegen" );


        case "moveupdown":
            return getlangdata( selflang ,
                "Move up/down" ,
                "上下に移動" ,
                "上/下移动" ,
                "Двигаться вверх/вниз" ,
                "Nach oben/unten bewegen" );

        case "moveright":
            return getlangdata( selflang ,
                "Move right" ,
                "右に移動" ,
                "向右移" ,
                "Двигаться вправо" ,
                "Nach rechts bewegen" );

        case "moveleft":
            return getlangdata( selflang ,
                "Move left" ,
                "左に移動" ,
                "向左移动" ,
                "Двигай влево" ,
                "Nach links bewegen" );

        case "moverightleft":
            return getlangdata( selflang ,
                "Move right/left" ,
                "左右に移動" ,
                "向右/向左移动" ,
                "Двигаться вправо/влево" ,
                "Nach rechts/links bewegen" );

        case "moveforward":
            return getlangdata( selflang ,
                "Move forward" ,
                "前に移動" ,
                "前进" ,
                "Двигаться вперед" ,
                "Vorwärts bewegen" );

        case "moveback":
            return getlangdata( selflang ,
                "Move back" ,
                "後ろに移動" ,
                "向后移动" ,
                "Вернуться назад" ,
                "Zurück bewegen" );

        case "moveforwardback":
            return getlangdata( selflang ,
                "Move forward/back" ,
                "前後に移動" ,
                "向前/向后移动" ,
                "Двигаться вперед/назад" ,
                "Vorwärts/zurück bewegen" );

        case "spinyaw":
            return getlangdata( selflang ,
                "Spinning yaw" ,
                "ヨー回転" ,
                "旋转偏航" ,
                "Вращение рыскания" ,
                "Drehendes Gieren" );

        case "spinroll":
            return getlangdata( selflang ,
                "Spinning roll" ,
                "ロール回転" ,
                "纺纱辊" ,
                "Вращающийся рулон" ,
                "Drehendes Rollen" );

        case "spinpitch":
            return getlangdata( selflang ,
                "Spinning pitch" ,
                "ピッチ回転" ,
                "旋转节距" ,
                "Вращающееся поле" ,
                "Drehendes Nicken" );

        case "spinstop":
            return getlangdata( selflang ,
                "Spinning stop" ,
                "回転停止" ,
                "旋转停止" ,
                "Вращающаяся остановка" ,
                "Drehender Stopp" );

        case "movechange":
            return getlangdata( selflang ,
                "Movement change" ,
                "移動変更" ,
                "动作变化" ,
                "Изменение движения" ,
                "Bewegungsänderung" );

        case "randomsetting":
        case "changekamikazebomberrandom":
            return getlangdata( selflang ,
                "Random settings",
                "ランダム設定",
                "随机设置",
                "Случайные настройки",
                "Zufällige Einstellungen" );

        case "spinchange":
        case "changekamikazebomberspinning":
            return getlangdata( selflang ,
                "Spinning change" ,
                "回転変更" ,
                "纺纱变化" ,
                "Смена спиннинга" ,
                "Drehend ändern" );


        case "fromsetting":
            return getlangdata( selflang ,
                "from setting" ,
                "設定から" ,
                "从设置" ,
                "от установки" ,
                "von Einstellung" );


        case "frommemorized":
            return getlangdata( selflang ,
                "from memorized" ,
                "記憶データから" ,
                "从背下来的" ,
                "Из запомненных" ,
                "von gespeichert" );


        case "firedcreate":
            return getlangdata( selflang ,
                "Create object at launch destination" ,
                "発射先の座標にオブジェクト作成" ,
                "在启动目的地创建对象" ,
                "Создать объект в пункте назначения запуска" ,
                "Objekt am Startziel erstellen" );


        case "changespawnedtime":
            return getlangdata( selflang ,
                "Change object spawned interval" ,
                "オブジェクトの生成インターバル変更" ,
                "更改对象生成间隔" ,
                "Изменить интервал появления объекта" ,
                "Objekt-Erstellungsintervall ändern" );



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// creditsmenu
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

        case "credit_hinatyu":
            return "-----[ ^5H^7iN^1A^7tyu ]-----";

        case "credit_hinatyu_1":
            return " Mod menu developer ";

        case "credit_hinatyu_2":
            return " Fully custom menu-based system ";

        case "credit_hinatyu_3":
            return " Analysis of CoD GSCBIN "; 

        case "credit_hinatyu_4":
            return " Implementation of various utility functions ";


        case "horizontalscrollhmenu":
            return " Horizontal scroll menu ";

        case "customtextmenu":
            return " Custom text menu ";
                

        case "modelanimationsystem":
            return " 3D model animation system ";
                
                
        case "multitranssystem":
            return " Multilingual translation system ";

        case "credit_kam":
            return "-----[ ^5Kam (BOCW)^7 ]-----";

        case "credit_kam_1":
            return " Tips for horizontal scroll menu ";

        case "credit_m":
            return "-----[ ^6m^7 ]-----";


        case "credit_m_1":
            return " High-speed development client exclusively for IW8 ";

        case "credit_ate47":
            return "-----[ ^2ATE47^7 ]-----";


        case "credit_ate47_1":
            return " BOCW analysis ";


        case "credit_ate47_2":
            return " All axes advanced noclip ";

        case "credit_extincts":
            return "-----[ ^3Extincts^7 ]-----";

        case "credit_extincts_1": //GBP & cocaine
            return " Reference for IW8 2023 menu-based system ";

        case "credit_extincts_2":
            return getmttext( selflang , "attractions" );

        case "credit_jydenx":
            return "-----[ ^8jydenx^7 ]-----";

        case "credit_jydenx_1":
            return " Providing function information ";

        case "credit_jydenx_2":
            return " Tips on custom text ";

        case "credit_zeropoint":
            return "-----[ ^4zeropoint^7 ]-----";

        case "credit_zeropoint_1":
            return " Weapons & Perks ID ";

        case "credit_thejoker7880":
            return "-----[ ^5thejoker7880^7 ]-----";


        case "credit_thejoker7880_1":
            return " All hidden perks ID ";

        case "credit_dynamic":
            return "-----[ ^9Dynamic^7 ]-----";


        case "credit_dynamic_1":
            return getmttext( selflang , "rocketride" );

        case "credit_onedeepzay":
            return "-----[ ^1One Deep Zay^7 ]-----";


        case "credit_onedeepzay_1":
            return " Forge mode improvement tips ";

        case "credit_sku":
            return "-----[ ^2Sku-111^7 ]-----";


        case "credit_sku_1":
            return " Training on basic operations of IDA Pro ";

        case "credit_sku_2":
            return " IDA Pro Analysis Support ";

        case "credit_sku_3":
            return " Support for GSCBIN, GSC asset basic information ";

        case "credit_sku_4":
            return " Decrypting the GSC hash code of the retail version of MW19 ";

        case "credit_brutal":
            return "-----[ ^4Brutal^7 ]-----";


        case "credit_brutal_1":
            return " Tips on developing DLL injection ";

        case "credit_bossam":
            return "-----[ ^3Bossam (BO2)^7 ]-----";


        case "credit_oldmods":
            return " Porting of old CoD Mods ";

//        case "credit_hinatyu_1":
//            return getlangdata( selflang ,
//                "Mod menu developer" ,
//                "モッドメニューの開発" ,
//                "Mod 菜单开发者" ,
//                "Разработчик мод-меню" ,
//                "Mod-Menüentwickler" );
//
//        case "credit_hinatyu_2":
//            return getlangdata( selflang ,  
//                "Fully custom menu-based system" ,  
//                "完全独自メニューベースシステム" ,  
//                "完全自定义菜单基础系统" ,  
//                "Полностью пользовательская система на основе меню" ,  
//                "Vollständig benutzerdefiniertes menübasiertes System" );  
//
//        case "credit_hinatyu_3":
//            return getlangdata( selflang ,  
//                "Analysis of CoD GSCBIN" ,  
//                "CoD GSCBINの解析" ,  
//                "CoD GSCBIN的分析" ,  
//                "Анализ CoD GSCBIN" ,  
//                "Analyse von CoD GSCBIN" );  
//
//        case "credit_hinatyu_4":
//            return getlangdata( selflang ,  
//                "Implementation of various utility functions" ,  
//                "各種汎用関数の実装" ,  
//                "各种通用函数的实现" ,  
//                "Реализация различных универсальных функций" ,  
//                "Implementierung verschiedener Hilfsfunktionen" );
//
//
//        case "horizontalscrollhmenu":
//            return getlangdata( selflang ,  
//                "Horizontal scroll menu" ,  
//                "横スクロールメニュー" ,  
//                "横向滚动菜单" ,  
//                "Горизонтальное прокачиваемое меню" ,  
//                "Horizontal scroll Menü" );
//
//        case "customtextmenu":
//            return getlangdata( selflang ,  
//                "Custom text menu" ,  
//                "カスタムテキストメニュー" ,  
//                "自定义文本菜单" ,  
//                "Меню пользовательского текста" ,  
//                "Benutzerdefiniertes Textmenü" );
//                
//
//        case "modelanimationsystem":
//            return getlangdata( selflang ,  
//                "3D model animation system" ,  
//                "3Dモデルアニメーションシステム" ,  
//                "3D模型动画系统" ,  
//                "Система анимации 3D-моделей" ,  
//                "3D-Modell-Animationssystem" );
//                
//                
//        case "multitranssystem":
//            return getlangdata( selflang ,
//                "Multilingual translation system" ,
//                "多言語翻訳システム" ,
//                "多语言翻译系统" ,
//                "Многоязычная система перевода" ,
//                "Mehrsprachiges Übersetzungssystem" );
//
//        case "credit_wrekless":
//            return getlangdata( selflang ,
//                "WrekLess : Project leader & debug" ,
//                "WrekLess : プロジェクトリーダー & デバッグ" ,
//                "WrekLess : 项目负责人及调试" ,
//                "WrekLess : Руководитель проекта и отладчик" ,
//                "WrekLess : Projektleiter & Debug" );
//
//        case "credit_kam":
//            return "-----[ ^5Kam (BOCW)^7 ]-----";
//
//        case "credit_kam_1":
//            return getlangdata( selflang ,  
//                "Tips for horizontal scroll menu" ,  
//                "横スクロールメニューのヒント" ,  
//                "横向滚动菜单的提示" ,  
//                "Советы по горизонтальному прокачиваемому меню" ,  
//                "Tipps für das horizontale Scroll-Menü" );  
//
//        case "credit_m":
//            return "-----[ ^6m^7 ]-----";
//
//
//        case "credit_m_1":
//            return getlangdata( selflang ,  
//                "High-speed development client exclusively for IW8" ,  
//                "IW8専用高速開発クライアント" ,  
//                "IW8专用高速开发客户端" ,  
//                "Высокоскоростной клиент разработки исключительно для IW8" ,  
//                "Hochgeschwindigkeits-Entwicklungsklient ausschließlich für IW8" );  
//
//        case "credit_ate47":
//            return "-----[ ^2ATE47^7 ]-----";
//
//
//        case "credit_ate47_1":
//            return getlangdata( selflang ,
//                "BOCW analysis" ,
//                "BOCWのデータ解析" ,
//                "BOCW分析" ,
//                "BOCW-анализ" ,
//                "BOCW-Analyse" );
//
//
//        case "credit_ate47_2":
//            return getlangdata( selflang ,
//                "All axes advanced noclip" ,
//                "全軸高度空中飛行" ,
//                "所有轴高级 noclip" ,
//                "Расширенный noclip для всех осей" ,
//                "Alle Achsen erweitert, Noclip" );
//
//        case "credit_extincts":
//            return "-----[ ^3Extincts^7 ]-----";
//
//        case "credit_extincts_1": //GBP & cocaine
//            return getlangdata( selflang ,  
//                "Reference for IW8 2023 menu-based system" ,  
//                "IW8 2023 メニューベースの参考" ,  
//                "IW8 2023 菜单基础的参考" ,  
//                "Справка по меню-ориентированной системе IW8 2023" ,  
//                "Referenz für das menübasierte System von IW8 2023" );  
//
//        case "credit_extincts_2":
//            return getmttext( selflang , "attractions" );
//
//        case "credit_jydenx":
//            return "-----[ ^8jydenx^7 ]-----";
//
//        case "credit_jydenx_1":
//            return getlangdata( selflang ,
//                "Providing function information" ,
//                "関数情報の提供" ,
//                "提供功能信息" ,
//                "Предоставление функциональной информации" ,
//                "Funktionsinformationen bereitstellen" );
//
//        case "credit_jydenx_2":
//            return getlangdata( selflang ,  
//                "Tips on custom text" ,  
//                "カスタムテキストに関するヒント" ,  
//                "关于自定义文本的提示" ,  
//                "Советы по пользовательскому тексту" ,  
//                "Hinweise zum benutzerdefinierten Text" );  
//
//        case "credit_zeropoint":
//            return "-----[ ^4zeropoint^7 ]-----";
//
//        case "credit_zeropoint_1":
//            return getlangdata( selflang ,
//                "Weapons & Perks ID" ,
//                "武器 & パーク ID" ,
//                "武器和特权 ID" ,
//                "Идентификатор оружия и перков" ,
//                "Waffen- und Perks-ID" );
//
//        case "credit_thejoker7880":
//            return "-----[ ^5thejoker7880^7 ]-----";
//
//
//        case "credit_thejoker7880_1":
//            return getlangdata( selflang ,
//                "All hidden perks ID" ,
//                "全隠しパーク ID" ,
//                "所有隐藏福利 ID" ,
//                "Идентификатор всех скрытых льгот" ,
//                "Alle versteckten Perks-IDs" );
//
//        case "credit_dynamic":
//            return "-----[ ^9Dynamic^7 ]-----";
//
//
//        case "credit_dynamic_1":
//            return getmttext( selflang , "rocketride" );
//
//        case "credit_onedeepzay":
//            return "-----[ ^1One Deep Zay^7 ]-----";
//
//
//        case "credit_onedeepzay_1":
//            return getlangdata( selflang ,  
//                "Forge mode improvement tips" ,  
//                "Forge modeの改修ヒント" ,  
//                "Forge模式改进提示" ,  
//                "Советы по улучшению режима Forge" ,  
//                "Tipps zur Verbesserung des Forge-Modus" );
//
//        case "credit_sku":
//            return "-----[ ^2Sku-111^7 ]-----";
//
//
//        case "credit_sku_1":
//            return getlangdata( selflang ,  
//                "Training on basic operations of IDA Pro" ,  
//                "IDAProの基本操作の教育" ,  
//                "IDA Pro基本操作培训" ,  
//                "Обучение основным операциям в IDA Pro" ,  
//                "Schulung zu den Grundfunktionen von IDA Pro" ); 
//
//        case "credit_sku_2":
//            return getlangdata( selflang ,  
//                "IDA Pro Analysis Support" ,  
//                "IDAProの解析サポート" ,  
//                "IDA Pro 的分析支持" ,  
//                "Поддержка анализа в IDA Pro" ,  
//                "IDA Pro Analyseunterstützung" );
//
//        case "credit_sku_3":
//            return getlangdata( selflang ,  
//                "Support for GSCBIN, GSC asset basic information" ,  
//                "GSCBIN、GSCアセット基本情報のサポート" ,  
//                "GSCBIN、GSC资源基本信息的支持" ,  
//                "Поддержка GSCBIN, основной информации о ресурсах GSC" ,  
//                "Unterstützung für GSCBIN, GSC-Asset-Grundinformationen" );
//
//        case "credit_sku_4":
//            return getlangdata( selflang ,  
//                "Decrypting the GSC hash code of the retail version of MW19" ,  
//                "製品版MW19のGSCハッシュコード解読" ,  
//                "解密MW19正式版的GSC哈希代码" ,  
//                "Расшифровка GSC-хеш-кода релизной версии MW19" ,  
//                "Entschlüsselung des GSC-Hashcodes der Verkaufsversion von MW19" );  
//
//        case "credit_brutal":
//            return "-----[ ^4Brutal^7 ]-----";
//
//
//        case "credit_brutal_1":
//            return getlangdata( selflang ,  
//                "Tips on developing DLL injection" ,  
//                "dll Injectの開発に関するヒント" ,  
//                "关于开发DLL注入的提示" ,  
//                "Советы по разработке DLL-инъекций" ,  
//                "Tipps zur Entwicklung von DLL-Injektionen" );  
//
//        case "credit_bossam":
//            return "-----[ ^3Bossam (BO2)^7 ]-----";
//
//
//        case "credit_oldmods":
//            return getlangdata( selflang ,  
//                "Porting of old CoD Mods" ,  
//                "旧CoD Modsの移植" ,  
//                "旧CoD Mods的移植" ,  
//                "Перенос старых модов CoD" ,  
//                "Portierung alter CoD Mods" ); 

   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // designmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "changeopencloseanimation":
               return getlangdata( selflang ,
                   "Change menu opening/closing animation" ,
                   "メニューの開閉アニメーションの変更" ,
                   "更改菜单打开/关闭动画" ,
                   "Изменить анимацию открытия/закрытия меню" ,
                   "Animation zum Öffnen/Schließen des Menüs ändern" );
   
   
           case "switchbackgroundanimation":
               return getlangdata( selflang ,
                   "Color animation" ,
                   "色彩アニメーション" ,
                   "彩色动画" ,
                   "Цветная анимация" ,
                   "Farbige Animation" );
   
   
           case "changemenustyle":
               return getlangdata( selflang ,
                   "Vertical menu" ,
                   "縦型メニュー" ,
                   "垂直菜单" ,
                   "Вертикальное меню" ,
                   "Vertikales Menü" );
   
           case "switchtextnumberline":
               return getlangdata( selflang ,
                   "Hiding menu operation instructions" ,
                   "メニューの操作説明の非表示化" ,
                   "隐藏菜单操作说明" ,
                   "Скрытие инструкций по работе с меню" ,
                   "Bedienungsanweisungen des Menüs ausblenden" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // combatassistmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //

   
           case "norecoil":
               return getlangdata( selflang ,
                   "No recoil" ,
                   "無反動" ,
                   "无后坐力" ,
                   "Без отдачи" ,
                   "Kein Rückstoß" );
   
           case "suicide":
               return getlangdata( selflang ,
                   "Suicide" ,
                   "自殺" ,
                   "自杀" ,
                   "Самоубийство" ,
                   "Selbstmord" );
   
           case "thirdperson":
               return getlangdata( selflang ,
                   "3rd person" ,
                   "3人称視点" ,
                   "第三人称视角" ,
                   "перспектива от третьего лица" ,
                   "3. Person" );
   
           case "freezeplayer":
               return getlangdata( selflang ,
                   "Freeze movement" ,
                   "移動のフリーズ" ,
                   "冻结运动" ,
                   "Заморозить движение" ,
                   "Bewegung einfrieren" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // perksmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
//           case "giveperk":
//               return getlangdata( selflang ,
//                   "Give perk" ,
//                   "パークの取得" ,
//                   "给予额外津贴" ,
//                   "Дать перк" ,
//                   "Vorteil geben" );
//   
//           case "clearperk":
//               return getlangdata( selflang ,
//                   "Clear perk" ,
//                   "パークの消去" ,
//                   "明确的福利" ,
//                   "Очистить перк" ,
//                   "Vorteil löschen" );
//   
//           case "clearallperks":
//               return getlangdata( selflang ,
//                   "Clear all perks" ,
//                   "全パークの消去" ,
//                   "清除所有福利" ,
//                   "Отменить все льготы" ,
//                   "Alle Vorzüge löschen" );
//   
//           case "perk":
//               return getlangdata( selflang ,
//                   "Perk" ,
//                   "パーク" ,
//                   "福利" ,
//                   "Перк" ,
//                   "Vorteil" );
//   
//           case "perk1": return getmttext( selflang , "perk" ) + " 1";
//           case "perk2": return getmttext( selflang , "perk" ) + " 2";
//           case "perk3": return getmttext( selflang , "perk" ) + " 3";
//   
//           case "perk_doubletime":
//               return getlangdata( selflang ,
//                   "Double time" ,
//                   "ダブルタイム" ,
//                   "双倍时间" ,
//                   "Двойное время" ,
//                   "Doppelte Zeit" );
//   
//   
//           case "perk_eod":
//               return getlangdata( selflang ,
//                   "E.O.D." ,
//                   "E.O.D." ,
//                   "排爆" ,
//                   "Э.О.Д." ,
//                   "E.O.D." );
//   
//   
//           case "perk_overkill":
//               return getlangdata( selflang ,
//                   "Over kill" ,
//                   "オーバーキル" ,
//                   "矫枉过正" ,
//                   "Излишнее убийство" ,
//                   "Übermäßiges Töten" );
//   
//   
//           case "perk_scavenger":
//               return getlangdata( selflang ,
//                   "Scavenger" ,
//                   "スカベンジャー" ,
//                   "清道夫" ,
//                   "Мусорщик" ,
//                   "Plünderer" );
//   
//   
//           case "perk_coldblood":
//               return getlangdata( selflang ,
//                   "Cold blood" ,
//                   "コールドブラッド" ,
//                   "冷血" ,
//                   "Хладнокровие" ,
//                   "Kaltblütig" );
//   
//   
//           case "perk_quickfix":
//               return getlangdata( selflang ,
//                   "Quick fix" ,
//                   "クイックフィックス" ,
//                   "快速解决" ,
//                   "Быстрая починка" ,
//                   "Schnelle Lösung" );
//   
//   
//           case "perk_restock":
//               return getlangdata( selflang ,
//                   "Restock" ,
//                   "リストック" ,
//                   "补货" ,
//                   "Пополнение запасов" ,
//                   "Auffüllen" );
//   
//   
//           case "perk_hardline":
//               return getlangdata( selflang ,
//                   "Hard line" ,
//                   "ハードライン" ,
//                   "硬线" ,
//                   "Жесткая линия" ,
//                   "Harte Linie" );
//   
//   
//           case "perk_highalert":
//               return getlangdata( selflang ,
//                   "High alert" ,
//                   "ハイアラート" ,
//                   "高度戒备" ,
//                   "Высокий уровень тревоги" ,
//                   "Höchste Alarmstufe" );
//   
//   
//           case "perk_ghost":
//               return getlangdata( selflang ,
//                   "Ghost" ,
//                   "ゴースト" ,
//                   "鬼" ,
//                   "Призрак" ,
//                   "Geist" );
//   
//   
//           case "perk_killchain":
//               return getlangdata( selflang ,
//                   "Kill chain" ,
//                   "キルチェイン" ,
//                   "杀伤链" ,
//                   "цепочка убийств" ,
//                   "Killkette" );
//   
//   
//           case "perk_pointman":
//               return getlangdata( selflang ,
//                   "Point man" ,
//                   "ポイントマン" ,
//                   "点人" ,
//                   "Лидер" ,
//                   "Spitzenmann" );
//   
//   
//           case "perk_tuneup":
//               return getlangdata( selflang ,
//                   "Tune up" ,
//                   "チューンアップ" ,
//                   "调高" ,
//                   "Настроиться" ,
//                   "Optimieren" );
//   
//   
//           case "perk_amp":
//               return getlangdata( selflang ,
//                   "Amp" ,
//                   "アンプ" ,
//                   "放大器" ,
//                   "Усилитель" ,
//                   "Verstärker" );
//   
//   
//           case "perk_shrapnel":
//               return getlangdata( selflang ,
//                   "Shrapnel" ,
//                   "シュラプネル" ,
//                   "弹片" ,
//                   "шрапнель" ,
//                   "Schrapnell" );
//   
//   
//           case "perk_battleharden":
//               return getlangdata( selflang ,
//                   "Battle harden" ,
//                   "バトルハーデン" ,
//                   "战斗强化" ,
//                   "битва ожесточается" ,
//                   "Kampfhärte" );
//   
//   
//           case "perk_spotter":
//               return getlangdata( selflang ,
//                   "Spotter" ,
//                   "スポッター" ,
//                   "观察员" ,
//                   "Корректировщик" ,
//                   "Spotter" );
//   
//   
//           case "perk_tracker":
//               return getlangdata( selflang ,
//                   "Tracker" ,
//                   "トラッカー" ,
//                   "追踪器" ,
//                   "Трекер" ,
//                   "Tracker" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // visionsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "setvision":
               return getlangdata( selflang ,
                   "Set vision" ,
                   "画質の設定" ,
                   "设定愿景" ,
                   "Установить видение" ,
                   "Sicht festlegen" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // funnymenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "outofmappossible":
               return getlangdata( selflang ,
                   "Possible out of map" ,
                   "マップ外警告の無効化" ,
                   "可能超出地图范围" ,
                   "Возможно вне карты" ,
                   "Außerhalb der Karte möglich" );
   
           case "ninjamode":
               return getlangdata( selflang ,
                   "Ninja mode" ,
                   "忍者モード" ,
                   "忍者模式" ,
                   "Режим ниндзя" ,
                   "Ninja-Modus" );
   
           case "jetpack":
               return getlangdata( selflang ,
                   "Jet pack" ,
                   "ジェットパック" ,
                   "喷气背包" ,
                   "реактивный ранец" ,
                   "Jetpack" );
   
           case "superslide":
               return getlangdata( selflang ,
                   "Super slide" ,
                   "超スライディング" ,
                   "超滑" ,
                   "Супер скольжение" ,
                   "Superslide" );
   
//           case "saveloadlocation":
//               return getlangdata( selflang ,
//                   "Save & load location" ,
//                   "座標のセーブ & ロード" ,
//                   "保存和加载位置" ,
//                   "Сохранить и загрузить местоположение" ,
//                   "Standort speichern und laden" );
//   
//           case "saveloadlocationdescription1": return getmttext( selflang , "buttontactical" ) + " ^3+ " + getmttext( selflang , "buttonjump" ) + " ^3" + getmttext( selflang , "savelocation" );
//           case "saveloadlocationdescription2": return getmttext( selflang , "buttontactical" ) + " ^3+ " + getmttext( selflang , "buttonstance" ) + " ^3" + getmttext( selflang , "loadlocation" );
   
           case "savelocation":
               return getlangdata( selflang ,
                   "Saved location" ,
                   "座標の保存" ,
                   "已保存位置" ,
                   "Сохраненное местоположение" ,
                   "Gespeicherter Ort" );
   
   
           case "loadlocation":
               return getlangdata( selflang ,
                   "Loaded location" ,
                   "座標の読み込み" ,
                   "装载位置" ,
                   "Место загрузки" ,
                   "Geladener Ort" );
   
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // modelsmenu , mexicanwave , advancedforgemode
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "setmodel":
               return getlangdata( selflang ,
                   "Set model" ,
                   "モデルの設定" ,
                   "设定型号" ,
                   "Установить модель" ,
                   "Modell festlegen" );
   
           case "synccenterbody":
               return getlangdata( selflang ,
                   "Sync position to center" ,
                   "中心に位置の同期" ,
                   "将位置同步到中心" ,
                   "Синхронизировать положение с центром" ,
                   "Position mit Mitte synchronisieren" );
   
           case "changemodel":
           case "mexicanwave_modelid":
           case "changekamikazebombermodel":
               return getlangdata( selflang ,
                   "Change model" ,
                   "モデル変更" ,
                   "改变型号" ,
                   "Изменить модель" ,
                   "Modell ändern" );
   
           case "packagemodels":
               return getlangdata( selflang ,
                   "Package models" ,
                   "パッケージモデル" ,
                   "封装型号" ,
                   "Модели упаковки" ,
                   "Paketmodelle" );
   
           case "flagmodels":
               return getlangdata( selflang ,
                   "Flag models" ,
                   "旗モデル" ,
                   "标记型号" ,
                   "Модели флагов" ,
                   "Flaggenmodelle" );
   
           case "dogtagmodels":
               return getlangdata( selflang ,
                   "Dogtag models" ,
                   "ドッグタッグモデル" ,
                   "狗牌模型" ,
                   "Модели жетонов" ,
                   "Dogtag-Modelle" );
   
           case "vehiclesmodels":
               return getlangdata( selflang ,
                   "Vehicle models" ,
                   "乗り物モデル" ,
                   "车型" ,
                   "Модели автомобилей" ,
                   "Fahrzeugmodelle" );
   
           case "propmodels":
               return getlangdata( selflang ,
                   "Prop models" ,
                   "小物モデル" ,
                   "道具模型" ,
                   "Модели реквизита" ,
                   "Requisitenmodelle" );
   
           case "mapmodels":
               return getlangdata( selflang ,
                   "On map models" ,
                   "マップ限定モデル" ,
                   "在地图模型上" ,
                   "На моделях карт" ,
                   "Modelle auf der Karte" );
   
           case "propanimals":
               return getlangdata( selflang ,
                   "Animal models" ,
                   "動物モデル" ,
                   "动物模型" ,
                   "Модели животных" ,
                   "Tiermodelle" );
   
           case "propzombies":
               return getlangdata( selflang ,
                   "Zombies models" ,
                   "ゾンビモデル" ,
                   "僵尸模型" ,
                   "Модели зомби" ,
                   "Zombiemodelle" );
   
           case "propdebugs":
               return getlangdata( selflang ,
                   "Debug models" ,
                   "デバッグモデル" ,
                   "调试模型" ,
                   "Отладка моделей" ,
                   "Debug-Modelle" ); 
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // weaponsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "randomcamo":
               return getlangdata( selflang ,
                   "Random camouflage" ,
                   "ランダム迷彩" ,
                   "随机伪装" ,
                   "случайный камуфляж" ,
                   "Zufällige Tarnung" );
   
           case "randomattachment":
               return getlangdata( selflang ,
                   "Random attachment" ,
                   "ランダムアタッチメント" ,
                   "随机附件" ,
                   "Случайное вложение" ,
                   "Zufälliger Aufsatz" );
   
   
           case "blueprintweapon":
               return getlangdata( selflang ,
                   "Blueprint weapon" ,
                   "設計図武器" ,
                   "蓝图武器" ,
                   "Чертеж оружия" ,
                   "Blaupause der Waffe" );
   
           case "giverandomcurbpweapon":
               return getlangdata( selflang ,
                   "Give random blueprint from current weapon" ,
                   "今の武器からランダム設計図の生成" ,
                   "提供当前武器的随机蓝图" ,
                   "Дать случайный чертеж текущего оружия" ,
                   "Zufällige Blaupause der aktuellen Waffe geben" );
   
   
           case "giverandomt9bpweapon":
               return getlangdata( selflang ,
                   "Give random blueprint from CW weapon" ,
                   "CWの武器からランダム設計図の生成" ,
                   "提供 CW 武器的随机蓝图" ,
                   "Дайте случайный чертеж оружия CW" ,
                   "Zufällige Blaupause der CW-Waffe geben" );
   
   
           case "giverandoms4bpweapon":
               return getlangdata( selflang ,
                   "Give random blueprint from VG weapon" ,
                   "VGの武器からランダム設計図の生成" ,
                   "提供 VG 武器的随机蓝图" ,
                   "Дайте случайный чертеж оружия VG" ,
                   "Zufällige Blaupause der VG-Waffe geben" );
   
           case "dualweapon":
               return getlangdata( selflang ,
                   "Set akimbo" ,
                   "デュアル武器の設定" ,
                   "设置双附件" ,
                   "Установить двойное вложение" ,
                   "In die Seite gesetzt" );
   
           case "giverandomweapon":
               return getlangdata( selflang ,
                   "Give random weapon" ,
                   "ランダム武器の取得" ,
                   "给予随机武器" ,
                   "Дайте случайное оружие" ,
                   "Zufällige Waffe geben" );
   
           case "dropweapon":
               return getlangdata( selflang ,
                   "Drop weapons" ,
                   "武器のドロップ" ,
                   "掉落武器" ,
                   "Бросить оружие" ,
                   "Waffen fallen lassen" );
   
           case "takedweapon":
               return getlangdata( selflang ,
                   "Taked weapon" ,
                   "武器の剥奪" ,
                   "拿起武器" ,
                   "Взятое оружие" ,
                   "Waffe genommen" );
   
           case "takedallweapons":
               return getlangdata( selflang ,
                   "Taked all weapons" ,
                   "全武器の剥奪" ,
                   "拿走了所有武器" ,
                   "Взяли все оружие" ,
                   "Alle Waffen genommen" );
   
           case "assaultrifles":
                return "Assault Rifles";
   
           case "submachineguns":
                return "Submachine Guns";
   
           case "lightmachineguns":
                return "Light Machine Guns";
   
           case "marksmanrifles":
                return "Marksman Rifles";
   
           case "sniperrifles":
                return "Sniper Rifles";
   
           case "pistol":
                return "Pistol";
   
           case "shotguns":
                return "Shotguns";
   
           case "explosives":
                return "Explosives";
   
           case "special":
                return "Special";
   
//           case "assaultrifles":
//               return getlangdata( selflang ,
//                   "Assault Rifles" ,
//                   "アサルトライフル" ,
//                   "突击步枪" ,
//                   "Штурмовые винтовки" ,
//                   "Sturmgewehre" );
//   
//           case "submachineguns":
//               return getlangdata( selflang ,
//                   "Submachine Guns" ,
//                   "サブマシンガン" ,
//                   "冲锋枪" ,
//                   "Пистолеты-пулеметы" ,
//                   "Maschinenpistolen" );
//   
//           case "lightmachineguns":
//               return getlangdata( selflang ,
//                   "Light Machine Guns" ,
//                   "軽機関銃" ,
//                   "轻机枪" ,
//                   "Легкие пулеметы" ,
//                   "Leichte Maschinengewehre" );
//   
//           case "marksmanrifles":
//               return getlangdata( selflang ,
//                   "Marksman Rifles" ,
//                   "マークスマンライフル" ,
//                   "神射手步枪" ,
//                   "Стрелковые винтовки" ,
//                   "Scharfschützengewehre" );
//   
//           case "sniperrifles":
//               return getlangdata( selflang ,
//                   "Sniper Rifles" ,
//                   "狙撃銃" ,
//                   "狙击步枪" ,
//                   "Снайперские винтовки" ,
//                   "Präzisionsgewehre" );
//   
//           case "pistol":
//               return getlangdata( selflang ,
//                   "Pistol" ,
//                   "拳銃" ,
//                   "手枪" ,
//                   "Пистолет" ,
//                   "Pistole" );
//   
//           case "shotguns":
//               return getlangdata( selflang ,
//                   "Shotguns" ,
//                   "散弾銃" ,
//                   "霰弹枪" ,
//                   "Ружья" ,
//                   "Schrotflinten" );
//   
//           case "explosives":
//               return getlangdata( selflang ,
//                   "Explosives" ,
//                   "爆発物" ,
//                   "炸药" ,
//                   "взрывчатые вещества" ,
//                   "Sprengstoff" );
//   
//           case "special":
//               return getlangdata( selflang ,
//                   "Special" ,
//                   "スペシャル" ,
//                   "特别的" ,
//                   "Особенный" ,
//                   "Spezial" );
   
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // customweaponsmenu , attractions
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
//           case "teleportgun":
//               return getlangdata( selflang ,
//                   "Teleport gun" ,
//                   "テレポート銃" ,
//                   "传送枪" ,
//                   "Телепортирующая пушка" ,
//                   "Waffe teleportieren" );
   
           case "rocketride":
               return getlangdata( selflang ,
                   "Rocket ride" ,
                   "ミサイル乗り" ,
                   "乘坐火箭" ,
                   "Поездка на ракете" ,
                   "Raketenfahrt" );
   
//           case "walkingac130":
//               return getlangdata( selflang ,
//                   "Walking AC-130" ,
//                   "歩行式AC-130" ,
//                   "行走AC-130" ,
//                   "Прогулочный АС-130" ,
//                   "Gehender AC-130" );
   
           case "realcarepackagegun":
               return getlangdata( selflang ,
                   "Real carepackage gun" ,
                   "本物のケアパッケージ銃" ,
                   "真正的护理包枪" ,
                   "Настоящий пистолет для ухода" ,
                   "Echte Carepack-Waffe" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // bulletsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "moddedbullets":
               return getlangdata( selflang ,
                   "Modded bullets" ,
                   "改造弾" ,
                   "修改后的子弹" ,
                   "Модифицированная пуля" ,
                   "Modifizierte Kugeln" );
   
           case "bullettype":
               return getlangdata( selflang ,
                   "Change bullets type" ,
                   "改造弾の種類変更" ,
                   "修改子弹类型变化" ,
                   "Изменено изменение типа пули" ,
                   "Kugeltyp ändern" );
   
           case "moddedbulletsfiretrigger":
               return getlangdata( selflang ,
                   "Use bullet fire trigger on WaitTill" ,
                   "改造弾の発射トリガーにイベント待機処理の使用" ,
                   "在 WaitTill 上使用子弹射击触发器" ,
                   "Используйте триггер стрельбы пулей в режиме ожидания" ,
                   "Kugelfeuerauslöser bei WaitTill verwenden" );
   
           case "moddedbulletsnum5":
               return getlangdata( selflang ,
                   "Number of bullets fired is 5" ,
                   "弾同時発射数が5発" ,
                   "发射子弹数量为 5 发" ,
                   "Количество выпущенных пуль - 5." ,
                   "Anzahl der abgefeuerten Kugeln ist 5" );
                   
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // popularmenu , acecombat
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "infinityammo":
               return getlangdata( selflang ,
                   "Infinity ammo" ,
                   "弾無限" ,
                   "无限子弹" ,
                   "Бесконечные пули" ,
                   "Unendlich Munition" );
   
   
           case "bindnoclip":
               return getlangdata( selflang ,
                   "Bind noclip to "        + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonmelee" ) ,
                   "空中飛行 は "           + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonmelee" ) + " で実行" ,
                   "将 noclip 绑定到 "      + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonmelee" ) ,
                   "Привязать noclip к "    + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonmelee" ) ,
                   "Binden Sie noclip an "  + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonmelee" ) );
   
   
           case "bindnoclipdiscription":
               return getlangdata( selflang ,
                   "^3Noclip to "  + getmttext( selflang , "buttontactical" ) + " ^3move + "       + getmttext( selflang , "buttonsprint" ) + " ^3| " + getmttext( selflang , "buttontactical" )   + " ^3acceleration" ,
                   "^3空中飛行 は " + getmttext( selflang , "buttontactical" ) + " ^3で移動 + "     + getmttext( selflang , "buttonsprint" ) + " ^3| " + getmttext( selflang , "buttontactical" )    + " ^3で加速" ,
                   "^3Noclip 到 "  + getmttext( selflang , "buttontactical" ) + " ^3移动 + "       + getmttext( selflang , "buttonsprint" ) + " ^3| " + getmttext( selflang , "buttontactical" )    + " ^3加速" ,
                   "^3Noclip для " + getmttext( selflang , "buttontactical" ) + " ^3движения + "   + getmttext( selflang , "buttonsprint" ) + " ^3| " + getmttext( selflang , "buttontactical" )   + " ^3ускорения" ,
                   "^3Noclip zu "  + getmttext( selflang , "buttontactical" ) + " ^3bewegen + "    + getmttext( selflang , "buttonsprint" ) + " ^3| " + getmttext( selflang , "buttontactical" )   + " ^3Beschleunigung" );
   
           case "changemovementspeed":
               return getlangdata( selflang ,
                   "Change movement speed" ,
                   "移動速度の変更" ,
                   "改变移动速度" ,
                   "Изменить скорость движения" ,
                   "Bewegungsgeschwindigkeit ändern" );
   
           case "invisible":
               return getlangdata( selflang ,
                   "Invisible" ,
                   "透明人間" ,
                   "透明度" ,
                   "Прозрачность" ,
                   "Unsichtbar" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // killstreaksmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "givekillstreak":
               return getlangdata( selflang ,
                   "Give killstreak" ,
                   "キルストリークの取得" ,
                   "给予连杀" ,
                   "Дайте серию убийств" ,
                   "Killstreak geben" );
   
   
//           case "ks_personalradar":
//               return getlangdata( selflang ,
//                   "Personal radar" ,
//                   "パーソナルレーダー" ,
//                   "个人雷达" ,
//                   "Персональный радар" ,
//                   "Persönliches Radar" );
//   
//   
//           case "ks_shieldturret":
//               return getlangdata( selflang ,
//                   "Shield turret" ,
//                   "シールドターレット" ,
//                   "盾牌炮塔" ,
//                   "Щитовая турель" ,
//                   "Schildturm" );
//   
//   
//           case "ks_counteruav":
//               return getlangdata( selflang ,
//                   "Counter UAV" ,
//                   "カウンターUAV" ,
//                   "反无人机" ,
//                   "Противодействие БПЛА" ,
//                   "Gegen-UAV" );
//   
//   
//           case "ks_uav":
//               return getlangdata( selflang ,
//                   "UAV" ,
//                   "UAV" ,
//                   "无人机" ,
//                   "БПЛА" ,
//                   "UAV" );
//   
//   
//           case "ks_carepackage":
//               return getlangdata( selflang ,
//                   "Care package" ,
//                   "ケアパッケージ" ,
//                   "护理套餐" ,
//                   "Пакет услуг по уходу" ,
//                   "Pflegepaket" );
//   
//   
//           case "ks_clusterstrike":
//               return getlangdata( selflang ,
//                   "Cluster strike" ,
//                   "クラスターストライク" ,
//                   "集群打击" ,
//                   "Кластерный удар" ,
//                   "Streuangriff" );
//   
//   
//           case "ks_cruisemissile":
//               return getlangdata( selflang ,
//                   "Cruise missile" ,
//                   "巡行ミサイル" ,
//                   "巡航导弹" ,
//                   "Крылатая ракета" ,
//                   "Marschflugkörper" );
//   
//   
//           case "ks_airstrike":
//               return getlangdata( selflang ,
//                   "Precision airstrike" ,
//                   "エアーストライク" ,
//                   "精确空袭" ,
//                   "Точный авиаудар" ,
//                   "Präzisionsluftangriff" );
//   
//   
//           case "ks_infantryfightingvehicle":
//               return getlangdata( selflang ,
//                   "Infantry assault vehicle" ,
//                   "歩兵戦闘車" ,
//                   "步兵突击车" ,
//                   "Штурмовая машина пехоты" ,
//                   "Infanterie-Angriffsfahrzeug" );
//   
//   
//           case "ks_sentrygun":
//               return getlangdata( selflang ,
//                   "Sentry turret" ,
//                   "セントリーガン" ,
//                   "哨兵炮塔" ,
//                   "Сторожевая турель" ,
//                   "Wachturm" );
//   
//   
//           case "ks_wheelson":
//               return getlangdata( selflang ,
//                   "Wheelson" ,
//                   "ウィールソン" ,
//                   "惠尔森" ,
//                   "Уилсон" ,
//                   "Wheelson" );
//   
//   
//           case "ks_emergencyreliefsupplies":
//               return getlangdata( selflang ,
//                   "Emergency airdrop" ,
//                   "緊急救援物資" ,
//                   "紧急空投" ,
//                   "Экстренный сброс с воздуха" ,
//                   "Notfallabwurf" );
//   
//   
//           case "ks_vtol":
//               return getlangdata( selflang ,
//                   "VTOL jet" ,
//                   "V.T.O.L" ,
//                   "垂直起降喷气机" ,
//                   "СВВП Джет" ,
//                   "VTOL-Jet" );
//   
//   
//           case "ks_whitephosphorusbullet":
//               return getlangdata( selflang ,
//                   "White phosphorus" ,
//                   "白リン弾" ,
//                   "白磷" ,
//                   "Белый фосфор" ,
//                   "Weißer Phosphor" );
//   
//   
//           case "ks_heligunner":
//               return getlangdata( selflang ,
//                   "Chopper gunner" ,
//                   "ヘリガンナー" ,
//                   "直升机炮手" ,
//                   "Наводчик вертолета" ,
//                   "Helikopterschütze" );
//   
//   
//           case "ks_supportheli":
//               return getlangdata( selflang ,
//                   "Support helo" ,
//                   "サポートヘリ" ,
//                   "支持直升机" ,
//                   "Поддержите привет" ,
//                   "Unterstützungshelikopter" );
//   
//   
//           case "ks_gunship":
//               return getlangdata( selflang ,
//                   "Gunship" ,
//                   "ガンシップ" ,
//                   "武装直升机" ,
//                   "Боевой корабль" ,
//                   "Kampfhubschrauber" );
//   
//   
//           case "ks_advanceduav":
//               return getlangdata( selflang ,
//                   "Advanced UAV" ,
//                   "アドバンスUAV" ,
//                   "先进无人机" ,
//                   "Усовершенствованный БПЛА" ,
//                   "Fortschrittliches UAV" );
//   
//   
//           case "ks_juggernaut":
//               return getlangdata( selflang ,
//                   "Juggernaut" ,
//                   "ジャガーノート" ,
//                   "主宰" ,
//                   "Джаггернаут" ,
//                   "Juggernaut" );
//   
//   
//           case "ks_nuke":
//               return getlangdata( selflang ,
//                   "Tactical nuke" ,
//                   "戦術核" ,
//                   "战术核武器" ,
//                   "Тактическое ядерное оружие" ,
//                   "Taktische Atombombe" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // customkillstreaksmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "kamikazebomber":
               return getlangdata( selflang ,
                   "Kamikaze bomber" ,
                   "神風ボンバー" ,
                   "神风特攻队炸弹" ,
                   "бомба-камикадзе" ,
                   "Kamikaze-Bomber" );
   
           case "vanguardairstrike":
               return getlangdata( selflang ,
                   "Vanguard carpet bomblet" ,
                   "Vanguard式絨毯爆撃" ,
                   "先锋队地毯式轰炸" ,
                   "Авангардные ковровые бомбардировки" ,
                   "Vanguard-Teppichbomblet" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // poweredmenu , acecombat
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "godmode":
               return getlangdata( selflang ,
                   "Godmode" ,
                   "無敵" ,
                   "无敌的" ,
                   "непобедимый" ,
                   "Gottmodus" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // aimbotsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "aimbot":
               return getlangdata( selflang ,
                   "Aimbot" ,
                   "オートエイム" ,
                   "瞄准机器人" ,
                   "Аимбот" ,
                   "Aimbot" );
   
   
           case "attacktoforcekill":
               return getlangdata( selflang ,
                   "Forced kill when attacking" ,
                   "攻撃時に強制キル" ,
                   "攻击时强行击杀" ,
                   "Принудительное убийство при атаке" ,
                   "Erzwungener Kill beim Angriff" );
   
   
           case "targettag":
               return getlangdata( selflang ,
                   "Target area" ,
                   "対象部位" ,
                   "目标区域" ,
                   "Целевая область" ,
                   "Zielbereich" );
   
   
           case "aimingrequired":
               return getlangdata( selflang ,
                   "Aiming required" ,
                   "エイミング必須" ,
                   "需要瞄准" ,
                   "Требуется прицеливание" ,
                   "Zielen erforderlich" );
   
   
           case "aimtracking":
               return getlangdata( selflang ,
                   "Aim tracking" ,
                   "エイム追跡" ,
                   "目标追踪" ,
                   "Отслеживание цели" ,
                   "Zielverfolgung" );
   
   
           case "aimstealth":
               return getlangdata( selflang ,
                   "Stealth aiming" ,
                   "隠密性のエイム" ,
                   "隐形瞄准" ,
                   "Скрытное прицеливание" ,
                   "Geheimes Zielen" );
   
   
           case "autokill":
               return getlangdata( selflang ,
                   "Auto kill" ,
                   "自動キル" ,
                   "自动杀死" ,
                   "Авто убийство" ,
                   "Automatischer Kill" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // spawnvehicles
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "spawnvehicles":
               return getlangdata( selflang ,
                   "Spawn vehicle" ,
                   "乗り物の生成" ,
                   "生成车辆" ,
                   "Создать автомобиль" ,
                   "Spawn-Fahrzeug" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // advancedforgemode
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "advancedforgemode":
               return getlangdata( selflang ,
                   "Advanced forge mode" ,
                   "高度なオブジェクト作成" ,
                   "高级锻造模式" ,
                   "Расширенный режим кузницы" ,
                   "Erweiterter Schmiedemodus" );
   
           case "forgemodedescription1":   return " " + getmttext( selflang , "buttonads" )      + " + " + getmttext( selflang , "buttonuse" )         + " " + getmttext( selflang , "getobject" );
           case "forgemodedescription2":   return " " + getmttext( selflang , "buttonads" )      + " + " + getmttext( selflang , "buttonlethal" )      + " " + getmttext( selflang , "deleteobject" );
           case "forgemodedescription3":
               if ( usegamepad == true ) { return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttontactical" )    + " " + getmttext( selflang , "createobject" ) + " " + getmttext( selflang , "fromsetting" ); }
               else                      { return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttontactical" )    + " " + getmttext( selflang , "createobject" ) + " " + getmttext( selflang , "fromsetting" ); }
   
           case "forgemodedescription4":   return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttonmelee" )       + " " + getmttext( selflang , "createobject" ) + " " + getmttext( selflang , "frommemorized" );
           case "forgemodedescription5":   return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttonlethal" )      + " " + getmttext( selflang , "changespawnedmodel" );
           case "forgemodedescription6":   return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttonjump" )        + " " + getmttext( selflang , "rotatexaxis" );
           case "forgemodedescription7":   return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttonattack" )      + " " + getmttext( selflang , "changespawnedtime" );
           case "forgemodedescription8":   return " " + getmttext( selflang , "buttonuse" )      + " + " + getmttext( selflang , "buttonstance" )      + " " + getmttext( selflang , "firedcreate" );
           case "forgemodedescription9":   return " " + getmttext( selflang , "buttonmelee" )    + " + " + getmttext( selflang , "buttonjump" )        + " " + getmttext( selflang , "deletelastobject" );
           case "forgemodedescription10":  return " " + getmttext( selflang , "buttonmelee" )    + " + " + getmttext( selflang , "buttonstance" )      + " " + getmttext( selflang , "autolinkonspawn" );
           case "forgemodedescription11":  return " " + getmttext( selflang , "buttonmelee" )    + " + " + getmttext( selflang , "buttonlethal" )      + " " + getmttext( selflang , "tracelength" );
           case "forgemodedescription12":  return " " + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonjump" )        + " " + getmttext( selflang , "combineobject" );
           case "forgemodedescription13":  return " " + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonstance" )      + " " + getmttext( selflang , "spinchange" );
           case "forgemodedescription14":  return " " + getmttext( selflang , "buttontactical" ) + " + " + getmttext( selflang , "buttonlethal" )      + " " + getmttext( selflang , "movechange" );
   
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // spawnsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
   
           case "mexicanwave":
               return getlangdata( selflang ,
                   "Mexican wave" ,
                   "メキシカン・ウェーブ" ,
                   "墨西哥浪潮" ,
                   "Мексиканская волна" ,
                   "Mexikanische Welle" );
   
        case "discodancer":
            return getlangdata( selflang ,  
                "Disco Dancer" ,  
                "ディスコダンサー" ,  
                "迪斯科舞者" ,  
                "Диско-танцор" ,  
                "Disco-Tänzer" );

   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // attractions
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "attractions":
               return getlangdata( selflang ,
                   "Attractions" ,
                   "アトラクション" ,
                   "景点" ,
                   "аттракцион" ,
                   "Attraktionen" );
   
   
   
           //case "twister":
           //    return getlangdata( selflang ,
           //        "Twister" ,
           //        "ツイスター" ,
           //        "龙卷风" ,
           //        "Твистер" ,
           //        "Twister" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // playersmenu , allplayersmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "removeauth":
               return getlangdata( selflang ,
                   "Remove auth : " ,
                   "権限剥奪 : " ,
                   "剥夺权力：" ,
                   "Лишение полномочий : " ,
                   "Authentifizierung entfernen : " );
   
           case "giveauth":
               return getlangdata( selflang ,
                   "Give auth : " ,
                   "権限付与 : " ,
                   "授权 : " ,
                   "Авторизация : " ,
                   "Authentifizierung erteilen : " );
   
           case "setunverified":   return getmttext( selflang , "removeauth" ) + getmttext( selflang , "unverified" );
           case "setverified":     return getmttext( selflang , "giveauth" )   + getmttext( selflang , "verified" );
           case "setvip":          return getmttext( selflang , "giveauth" )   + getmttext( selflang , "vip" );
           case "setadmin":        return getmttext( selflang , "giveauth" )   + getmttext( selflang , "admin" );
           case "setcohost":       return getmttext( selflang , "giveauth" )   + getmttext( selflang , "cohost" );
   
           case "teleporttome":
               return getlangdata( selflang ,
                   "Teleport to me" ,
                   "自分の場所にテレポートさせる" ,
                   "传送到我身边" ,
                   "Телепортируйся ко мне" ,
                   "Zu mir teleportieren" );
   
           case "teleporttohim":
               return getlangdata( selflang ,
                   "Teleport to him" ,
                   "相手の場所にテレポート" ,
                   "传送到他身边" ,
                   "Телепортироваться к нему" ,
                   "Zu ihm teleportieren" );
   
           case "kick":
               return getlangdata( selflang ,
                   "Kick from the lobby" ,
                   "ロビーからキックする" ,
                   "从大厅踢出" ,
                   "Выйти из вестибюля" ,
                   "Kick aus der Lobby" );
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // messagesmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
           case "yourpromotionmessage2": return "[{iw}] ^3Discord ID ^7: ^2hinatapoko ^7[{atvi}] ^1YouTube ^7: ^5HiNAtyu Studio ^7[{iw}]";
   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // gamesettingsmenu
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   

                   
           case "autogivecohost":
               return getlangdata( selflang ,  
                   "Automatically grant Co-Host" ,  
                   "自動的にCo-Hostを与える" ,  
                   "自动授予Co-Host" ,  
                   "Автоматически назначать со-хоста" ,  
                   "Co-Host automatisch zuweisen" );

   
   
           case "fastrestrat":
               return getlangdata( selflang ,
                   "Fast restrat" ,
                   "瞬時に試合リスタート" ,
                   "快速重启" ,
                   "Быстрый перезапуск" ,
                   "Schnelle Wiederherstellung" );
   
   
           case "pausetimer":
               return getlangdata( selflang ,
                   "Pause timer" ,
                   "タイムリミットの一時停止" ,
                   "暂停定时器" ,
                   "Таймер паузы" ,
                   "Timer pausieren" );
   
           case "endgame":
               return getlangdata( selflang ,
                   "End game" ,
                   "ゲームロビーの終了" ,
                   "结束游戏" ,
                   "Конец игры" ,
                   "Spiel beenden" );
                   
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // michaelmyers
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
   
                   
           case "quickscopelobby":
               return getlangdata( selflang ,  
                   "Quick Scope Lobby" ,  
                   "スナイパー限定ロビー" ,  
                   "快瞄大厅" ,  
                   "Лобби для быстрого прицеливания" ,  
                   "Quick-Scope-Lobby" );
                   
           case "welcomequickscopelobby":
               return getlangdata( selflang ,
                   " ^6Quick Scope Lobby." ,  
                   " ^6のスナイパー限定ロビーへ。" ,  
                   " ^6快瞄大厅。" ,  
                   " ^6Лобби для быстрого прицеливания." ,  
                   " ^6Quick-Scope-Lobby." );
                   
           case "quickscopelobbydescription1":
               return getlangdata( selflang ,  
                   "Only sniper quick shots are allowed in this lobby" ,  
                   "このロビーではスナイパーのクイックショットのみが許可されます" ,  
                   "此大厅仅允许狙击枪快射" ,  
                   "В этом лобби разрешены только быстрые выстрелы из снайперской винтовки" ,  
                   "In dieser Lobby sind nur schnelle Schüsse mit dem Scharfschützengewehr erlaubt" ); 
                   
           case "quickscopelobbydescription2":
               return getlangdata( selflang ,  
                   "Camping is also impossible. Enjoy a pure sniper battle!" ,  
                   "芋プレイも不可能です、純粋なスナイパーバトルを楽しもう！" ,  
                   "蹲守也不可能。享受纯粹的狙击战！" ,  
                   "Кемперство также невозможно. Наслаждайтесь чистой снайперской битвой!" ,  
                   "Campen ist ebenfalls unmöglich. Genieße ein reines Scharfschützen-Duell!" );  
                   
           case "longscopedetected":
               return getlangdata( selflang ,  
                   "^1Long scope detected!" ,  
                   "^1ロングスコープを検出しました！" ,  
                   "^1检测到长镜瞄！" ,  
                   "^1Обнаружен длинный прицел!" ,  
                   "^1Langes Zielfernrohr erkannt!" );  
                   
           case "camperdetected":
               return getlangdata( selflang ,  
                   "^1Camper behavior detected!" ,  
                   "^1キャンパー行為を検出しました！" ,  
                   "^1检测到蹲守行为！" ,  
                   "^1Обнаружено кемперство!" ,  
                   "^1Camper-Verhalten erkannt!" ); 
                   
           case "violationpunished":
               return getlangdata( selflang ,  
                   "Violation punished." ,  
                   "違反行為を処罰しました。" ,  
                   "违规行为已处罚。" ,  
                   "Нарушение наказано." ,  
                   "Verstoß geahndet." );
   

   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // FREE area
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
   
           case "test_func":
               return getlangdata( selflang ,
                    "Test function",
                    "テスト機能",
                    "测试功能",
                    "Тестовая функция",
                    "Testfunktion" );

           case "test_loop_func":
               return getlangdata( selflang ,
                    "Test loop function",
                    "テストループ機能",
                    "测试循环功能",
                    "Функция тестового цикла",
                    "Test-Schleifenfunktion" );
   
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