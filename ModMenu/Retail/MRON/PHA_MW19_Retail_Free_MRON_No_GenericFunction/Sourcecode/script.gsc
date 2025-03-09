//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Update date   : 2025/03/10
// YouTube       : https://www.youtube.com/channel/UCmxJAnVPtkStQVKrvAVMZSw
// Twitter       : https://twitter.com/H1NAtyu
// Discord       : hinatapoko
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 更新日 : 2025/03/10
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
    //level modellistconstruction( true );

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
        //self customgamemodechecker( );
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
        //level modellistconstruction( undefined );
        // en : build a mod menu
        // ja : モッドメニューを構築する
        level modmenuconstruction( );

        // en : create a weapon list
        // ja : 武器リストを作成する
        //level constructionweaponslist( );

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
//        if ( isdefined( self.optstat["setmodel"] ) )                            self thread execsetmodel(       "setmodel"      , 2 );
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
//        if ( isdefined( self.optstat["rocketride"] ) )         self.optstat["rocketride"] = undefined;
//        if ( isdefined( self.optstat["teleportgun"] ) )        self.optstat["teleportgun"] = undefined;
//        if ( isdefined( self.optstat["kamikazebomber"] ) )     self.optstat["kamikazebomber"] = undefined;
//        if ( isdefined( self.optstat["realcarepackagegun"] ) ) self.optstat["realcarepackagegun"] = undefined;
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
    self execrecoveryfunction( "infinityammo"           , ::execinfinityammo            , 0.05 );
    self execrecoveryfunction( "bindnoclip"             , ::execbindnoclip              , 0.05 );
    self execrecoveryfunction( "godmode"                , ::execgodmode                 , 1 );
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
// en : restart game lobby
// ja : ゲームロビーを再起動する
//++++++++++++++++++++++++++++++
execfastrestrat( )
{
    level thread scripts\mp\gamelogic::restart( );
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
        if ( ( self getkeycodepressed( "buttontactical" , "buttontactical" ) && self getkeycodepressed( "buttonmelee" , "buttonmelee" ) ) )
        {
            // en: if the object used for flight processing has not been created yet
            // ja: 飛行処理に使うオブジェクトがまだ生成されてない場合
            if ( !isdefined( self.optstat[optname + "linkobject"] ) )
            {
                // en: create a transparent object used for flight processing with your own coordinates and angle
                // ja: 飛行処理に使う透明なオブジェクトを、自分の座標、角度で作成する

                self.optstat[optname + "linkobject"] = spawn( self.origin , "script_origin" );
                self.optstat[optname + "linkobject"].angles = self.angles;
                
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
                self.optstat[optname + "linkobject"] delete( );
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
                    l_scale = ( l_vector[0] * 5000 , l_vector[1] * 5000 , l_vector[2] * 5000 );
                    self.optstat[optname + "linkobject"].origin = self.origin + l_scale;
                }
                // en: when the "tacticalthrow" button is not pressed
                // ja: "タクティカル投球" ボタンが押されていない間
                else
                {
                    l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
                    l_scale = ( l_vector[0] * 350 , l_vector[1] * 350 , l_vector[2] * 350 );
                    self.optstat[optname + "linkobject"].origin = self.origin + l_scale;
                }
            }
            // en: when neither button is pressed
            // ja: どちらのボタンも押されていない時
            else
            {
                l_vector = ( l_zscale * l_top ) + ( l_movement[0] * l_forward ) + ( l_movement[1] * ( l_left[0] , l_left[1] , 0 ) );
                l_scale = ( l_vector[0] * 30 , l_vector[1] * 30 , l_vector[2] * 30 );
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
            self.optstat[optname + "linkobject"] delete( );
            self.optstat[optname + "linkobject"] = undefined;
            self.optstat[optname].curvehicle = undefined;
        }
    }
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
    ly_credit               = l_num; l_num++;
    ly_submenu01            = l_num; l_num++;
    ly_submenu02            = l_num; l_num++;
    ly_submenu03            = l_num; l_num++;
    ly_submenu04            = l_num; l_num++;
    ly_submenu01            = l_num; l_num++;
    ly_gamesettings         = l_num; l_num++;
    ly_allplayers           = l_num; l_num = 40;


    ly_playersref           = level.moddef.ly_playersref;
    ly_playersmod           = level.moddef.ly_playersmod;


    addmenulayer(    "mainmodsmenu"                                                                                                                     , lv_verified   , ly_root               , ar_submenu        , ly_mainmods );
        addmenuitem( "test_func"                                    , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::exectestfunc              , lv_verified );
        addmenuitem( "testloopfunc"                                 , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onftestloopfunc           , lv_verified );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfinfinityammo           , lv_vip );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfbindnoclip             , lv_admin );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_self       , ly_mainmods           , mod_enabled       , ::onfgodmode                , lv_cohost );
        
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

    addmenulayer(    "Sub menu 01 (Verified)"                                                                                                           , lv_verified   , ly_root               , ar_submenu        , ly_submenu01 );
        addmenuitem( "test print (Verified)"                        , undefined                                                                         , undefined     , ly_submenu01          , mod_notonf        , ::exectestfunc );

    addmenulayer(    "Sub menu 02 (VIP)"                                                                                                                , lv_vip        , ly_root               , ar_submenu        , ly_submenu02 );
        addmenuitem( "test print (VIP)"                             , undefined                                                                         , undefined     , ly_submenu02          , mod_notonf        , ::exectestfunc );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_self       , ly_submenu02          , mod_enabled       , ::onfinfinityammo );

    addmenulayer(    "Sub menu 03 (Admin)"                                                                                                              , lv_admin      , ly_root               , ar_submenu        , ly_submenu03 );
        addmenuitem( "test print (Admin)"                           , undefined                                                                         , undefined     , ly_submenu03          , mod_notonf        , ::exectestfunc );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_self       , ly_submenu03          , mod_enabled       , ::onfbindnoclip );

    addmenulayer(    "Sub menu 04 (Co-host)"                                                                                                            , lv_cohost     , ly_root               , ar_submenu        , ly_submenu04 );
        addmenuitem( "test print (Co-host)"                         , undefined                                                                         , undefined     , ly_submenu04          , mod_notonf        , ::exectestfunc );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_self       , ly_submenu04          , mod_enabled       , ::onfgodmode );
        
    addmenulayer(    "playersmenu"                                                                                                                      , lv_cohost     , ly_root               , ar_submenu        , ly_playersref );
        addmenuitem( "setunverified"                                , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::removeauthunverified );
        addmenuitem( "setverified"                                  , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthverified );
        addmenuitem( "setvip"                                       , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthvip );
        addmenuitem( "setadmin"                                     , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthadmin );
        addmenuitem( "setcohost"                                    , undefined                                                                         , undefined     , ly_playersmod         , mod_reflesh       , ::giveauthcohost );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::emptyfunction );
        addmenuitem( "teleporttome"                                 , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::execteleporttomesingle );
        addmenuitem( "teleporttohim"                                , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::execteleporttohimsingle );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_playersmod         , mod_notonf        , ::emptyfunction );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfgodmodeforplayer );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfinfinityammoforplayer );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_player     , ly_playersmod         , mod_enabled       , ::onfbindnoclipforplayer );
    addmenulayer(    "allplayersmenu"                                                                                                                   , lv_host       , ly_root               , ar_submenu        , ly_allplayers );
        addmenuitem( "setunverified"                                , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::removeauthunverifiedforallplayers );
        addmenuitem( "setverified"                                  , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthverifiedforallplayers );
        addmenuitem( "setvip"                                       , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthvipforallplayers );
        addmenuitem( "setadmin"                                     , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthadminforallplayers );
        addmenuitem( "setcohost"                                    , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::giveauthcohostforallplayers );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::emptyfunction );
        addmenuitem( "teleporttome"                                 , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::execteleporttomeforallplayers );
        addmenuitem( "---"                                          , undefined                                                                         , undefined     , ly_allplayers         , mod_notonf        , ::emptyfunction );
        addmenuitem( "godmode"                                      , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfgodmodeforallplayers );
        addmenuitem( "infinityammo"                                 , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfinfinityammoforallplayers );
        addmenuitem( "bindnoclip"                                   , undefined                                                                         , ar_level      , ly_allplayers         , mod_enabled       , ::onfbindnoclipforallplayers );
//   addmenulayer(    "messagesmenu"                                                                                                                     , lv_host       , ly_root               , ar_submenu        , ly_messages );
//       addmenuitem( "doheart"                                      , undefined                                                                         , ar_level      , ly_messages           , mod_enabled       , ::onfdoheart );
   addmenulayer(    "gamesettingsmenu"                                                                                                                 , lv_host       , ly_root               , ar_submenu        , ly_gamesettings );
       addmenuitem( "fastrestrat"                                  , undefined                                                                         , undefined     , ly_gamesettings       , mod_notonf        , ::execfastrestrat );
    
}



// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //
// en : List
// ja : リスト
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ //




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
   


   
   
           case "fastrestrat":
               return getlangdata( selflang ,
                   "Fast restrat" ,
                   "瞬時に試合リスタート" ,
                   "快速重启" ,
                   "Быстрый перезапуск" ,
                   "Schnelle Wiederherstellung" );
   

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

           case "testloopfunc":
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