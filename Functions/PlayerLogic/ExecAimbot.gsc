//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//
// Project HiNAtyu
//><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><//

//=================================================================//
// [ English ]
// Creator       : HiNAtyu
// Created date  : 2025/01/26
// Latest update : 2025/01/26
// ---------------
// [ Japanese ]
// 制作者 : HiNAtyu
// 作成日 : 2025/01/26
// 更新日 : 2025/01/26
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





// EN : Attention!!: 
// EN: This function uses several general-purpose functions and public variables created for Project HiNAtyu.
// EN: If you try to compile this code into GSCBIN as is, errors and problems will occur due to insufficient functions or variables.
// EN: Please replace the general-purpose functions in question with regular functions, obtain PHA general-purpose functions, or replace them with your own functions.
// EN: Also, this function itself is executed in an infinite loop by the PHA generic function.
// EN: Since it will not work unless it is called in an infinite loop, it is recommended that you use this GSC by inserting loop processing on a sub-thread.
// EN : Target function:
// EN : - GetKeycodePressed( kbType , controllerType )
// EN : - level.MODDEF.MOD_INITIALIZE
// EN : - level.MODDEF.MOD_PROCESSING
// EN : - level.MODDEF.MOD_FINALIZE
// EN : - self.optStat[optName].modData["??"]

// JA : 注意！！：
// JA : この関数内には、Project HiNAtyu用に作成された汎用関数・パブリック変数がいくつか使われています。
// JA : このコードをそのままGSCBINにコンパイルしようとした場合、関数不足や変数不足によるエラー・不具合が発生します。
// JA : 該当の汎用関数などは通常関数へ置き換えるか、PHA汎用関数を取得するか、独自の関数へ置き換えてください。
// JA : またこの関数自体はPHA汎用関数によって無限ループで実行されている関数です。
// JA : 無限ループで呼ばれないと機能しないため、このGSCを使う場合はサブスレッド上でループ処理を入れて使うことを推奨します。
// JA : 対象関数：
// JA : - GetKeycodePressed( kbType , controllerType )
// JA : - level.MODDEF.MOD_INITIALIZE
// JA : - level.MODDEF.MOD_PROCESSING
// JA : - level.MODDEF.MOD_FINALIZE
// JA : - self.optStat[optName].modData["??"]



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Aimbot"
// JA : 機能 "Aimbot" の実行中の処理
//++++++++++++++++++++++++++++++
ExecAimbot( optName , procStage )
{
    // EN: Initialization process
    // JA: 初期化処理
    if ( procStage == level.MODDEF.MOD_INITIALIZE )
    {                         
        // EN: Enable all suboptions of feature "Aimbot" by default
        // JA: 機能 "Aimbot" のサブオプションをデフォルトで全て有効にする
        if ( !IsDefined( self.optStat[optName].modData["AttackToForceKill"] ) )   { self.optStat[optName].modData["AttackToForceKill"] = true; }
        // if ( !IsDefined( self.optStat[optName].modData["AimingRequired"] ) )      { self.optStat[optName].modData["AimingRequired"] = true; }
        if ( !IsDefined( self.optStat[optName].modData["AimTracking"] ) )         { self.optStat[optName].modData["AimTracking"] = true; }
        if ( !IsDefined( self.optStat[optName].modData["TargetTag"] ) )         { self.optStat[optName].modData["TargetTag"] = "j_head"; }

        self thread OnProcessAimbot( optName );
    }
    // EN: Running process
    // JA: 実行中処理
    else if ( procStage == level.MODDEF.MOD_PROCESSING )
    {
        // EN: If there is an aim request
        // JA: エイム要求がある場合
        if ( IsDefined( self.optStat[optName].modData["AimingRequired"] ) )
        {
            // EN: Do not proceed to the next process while the "Aim" button is not pressed.
            // JA: "エイム" ボタンが押されていない間は、次の処理に進まない
            if ( self GetKeycodePressed( "ButtonAds" , "ButtonAds" ) == false ) { return; }
        }

        // EN: Get information on all participating players
        // JA: 参加中の全プレイヤー情報を取得
        foreach ( player in level.players )
        {
            // EN: Exclude yourself from Aimbot
            // JA: 自分自身は Aimbot の対象外とする
            if ( player == self )                                                                               { continue; }
            // EN: If the other party is a host, it will not be targeted by Aimbot.
            // JA: 相手がホストの場合は Aimbot の対象外とする
            if ( player isHost( ) )                                                                             { continue; }
            if ( IsDefined( self.optStat[optName].target ) && ( self.optStat[optName].target == player ) )      { continue; }
            // EN: If the opponent is dead, it will not be targeted by Aimbot.
            // JA: 相手が死んでいる場合は Aimbot の対象外とする
            if ( !IsAlive( player ) )                                                                           { continue; }
            // EN: In team mode, if your team is the same as your opponent's, it will not be targeted by Aimbot.
            // JA: チーム形式のモードで、且つ相手と自分のチームが同じ場合は Aimbot の対象外とする
            if ( level.teamBased && ( self.pers["team"] == player.pers["team" ] ) )                             { continue; }
            // EN: If the opponent is using Godmode, it will not be targeted by Aimbot.
            // JA: 相手が Godmode を使用中の場合は Aimbot の対象外とする
            if ( IsDefined( player.optStat["Demigod"] ) ||
                IsDefined( player.optStat["Godmode"] ) ||
                IsDefined( player.optStat["NoHitMode"] ) )                                                      { continue; }

            l_SelfPart = self GetEye( );
            l_EnemyPart = player GetTagOrigin( self.optStat[optName].modData["TargetTag"] );

            // EN: If you are setting stealth aim
            // JA: ステルスエイムを設定中の場合
            if ( IsDefined( self.optStat[optName].modData["AimStealth"] ) )
            {
                // EN: If it is not possible to aim at the opponent's head coordinates from the current own head coordinates, it will not be targeted by Aimbot.
                // JA: 現在の自身の頭の座標から、相手の頭の座標を狙う事が可能でない場合は Aimbot の対象外とする
                if ( !scripts\engine\trace::_Bullet_Trace_Passed( l_SelfPart , l_EnemyPart , 0 , self ) )       { continue; }
                // EN: If there is no opponent within your current field of vision, they will not be targeted by Aimbot.
                // JA: 現在の自分の視界内に相手がいない場合 Aimbot の対象外とする
                l_SelfAngle = AnglesToForward( self GetPlayerAngles( ) );
                l_EnemyVector = VectorNormalize( l_EnemyPart - l_SelfPart );
                if ( VectorDot( l_SelfAngle , l_EnemyVector ) < 0.9 )                                           { continue; }
            }
            
            if ( IsDefined( self.optStat[optName].target ) && ( IsAlive( self.optStat[optName].target ) ) && ( Distance( self.origin , self.optStat[optName].target.origin ) <= Distance( self.origin , player.origin ) ) ) { continue; }

            self.optStat[optName].target = player;
            break;
        }
    }
    // EN: End processing
    // JA: 終了処理
    else if ( procStage == level.MODDEF.MOD_FINALIZE )
    {
        
    }
}



//++++++++++++++++++++++++++++++
// EN : Processing during execution of the function "Aimbot"
// JA : 機能 "Aimbot" の実行中の処理
//++++++++++++++++++++++++++++++
OnProcessAimbot( optName )
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

    while ( true )
    {
        wait 0.001;

        if ( !IsDefined( self.optStat[optName].target ) )                                                   { continue; }

        // EN: If there is an aim request
        // JA: エイム要求がある場合
        if ( IsDefined( self.optStat[optName].modData["AimingRequired"] ) )
        {
            // EN: Do not proceed to the next process while the "Aim" button is not pressed.
            // JA: "エイム" ボタンが押されていない間は、次の処理に進まない
            if ( self GetKeycodePressed( "ButtonAds" , "ButtonAds" ) == false )                             { continue; }
        }

        l_SelfPart = self GetEye( );
        l_EnemyPart = self.optStat[optName].target GetTagOrigin( self.optStat[optName].modData["TargetTag"] );

        // EN: If the opponent is dead, it will not be targeted by Aimbot.
        // JA: 相手が死んでいる場合は Aimbot の対象外とする
        if ( !IsAlive( self.optStat[optName].target ) )                                                     { self.optStat[optName].target = undefined; continue; }
        // EN: If the opponent is using Godmode, it will not be targeted by Aimbot.
        // JA: 相手が Godmode を使用中の場合は Aimbot の対象外とする
        if ( IsDefined( self.optStat[optName].target.optStat["Demigod"] ) ||
            IsDefined( self.optStat[optName].target.optStat["Godmode"] ) ||
            IsDefined( self.optStat[optName].target.optStat["NoHitMode"] ) )                                { self.optStat[optName].target = undefined; continue; }
        
        // EN: If you are setting stealth aim
        // JA: ステルスエイムを設定中の場合
        if ( IsDefined( self.optStat[optName].modData["AimStealth"] ) )
        {
            // EN: If it is not possible to aim at the opponent's head coordinates from the current own head coordinates, it will not be targeted by Aimbot.
            // JA: 現在の自身の頭の座標から、相手の頭の座標を狙う事が可能でない場合は Aimbot の対象外とする
                if ( !scripts\engine\trace::_Bullet_Trace_Passed( l_SelfPart , l_EnemyPart , 0 , self ) )   { continue; }
            // EN: If there is no opponent within your current field of vision, they will not be targeted by Aimbot.
            // JA: 現在の自分の視界内に相手がいない場合 Aimbot の対象外とする
            l_SelfAngle = AnglesToForward( self GetPlayerAngles( ) );
            l_EnemyVector = VectorNormalize( l_EnemyPart - l_SelfPart );
            if ( VectorDot( l_SelfAngle , l_EnemyVector ) < 0.9 )                                           { continue; }
        }
        
        // EN: If you are setting aim tracking
        // JA: エイム追跡を設定中の場合
        if ( IsDefined( self.optStat[optName].modData["AimTracking"] ) )
        {
            // EN: Always aim your angle at the coordinates of your opponent's head
            // JA: 自分の角度を常に相手の頭の座標に向ける
            self SetPlayerAngles( VectorToAngles( l_EnemyPart - l_SelfPart ) );
        }
        
        // EN: When forced to kill during an attack or to kill automatically
        // JA: 攻撃時に強制キルする場合、もしくは自動キルする場合
        if ( !IsDefined( self.optStat[optName].modData["AttackToForceKill"] ) && !IsDefined( self.optStat[optName].modData["AutoKill"] ) ) { continue; }
        
        // EN: If you do not kill automatically
        // JA: 自動キルしない場合
        if ( !IsDefined( self.optStat[optName].modData["AutoKill"] ) )
        {
            // EN: Do not proceed to the next process while the "Attack" button is not pressed.
            // JA: "攻撃" ボタンが押されていない間は、次の処理に進まない
            if ( self GetKeycodePressed( "ButtonAttack" , "ButtonAttack" ) == false )                       { continue; }
        }

        // EN: Inflict damage equal to the opponent's health with a headshot with the weapon you currently own.
        // JA: 相手に 今自分が所有している武器 で ヘッドショット で 相手の体力分ダメージを与える
        // player thread [[level.callbackPlayerDamage]]( self , self , player.health , 2 , "MOD_HEAD_SHOT" , self GetCurrentWeapon( ) , ( 0 , 0 , 0 ) , ( 0 , 0 , 0 ) , "torso_upper" , 0 );
        l_Mod = "MOD_HEAD_SHOT";
        if ( self.optStat[optName].modData["TargetTag"] != "j_head" ) { l_Mod = "MOD_RIFLE_BULLET"; }
        self.optStat[optName].target DoDamage( self.optStat[optName].target.health , self.optStat[optName].target.origin , self , self , l_Mod , GetCompleteWeaponName( self GetCurrentWeapon( ) ) );

        wait 0.05;
        self.optStat[optName].target = undefined;
    }
}