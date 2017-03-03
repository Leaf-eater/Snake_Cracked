.class public Lcom/wepie/snake/activity/GameActivity;
.super Lcom/wepie/snake/activity/BaseActivity;
.source "GameActivity.java"


# instance fields
.field private createResume:Z

.field gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

.field private lastClickBackTime:J

.field rouletteView:Lcom/wepie/snake/module/game/RouletteView;

.field speedUpBt:Landroid/widget/ImageView;

.field surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wepie/snake/activity/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/activity/GameActivity;->createResume:Z

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wepie/snake/activity/GameActivity;->lastClickBackTime:J

    return-void
.end method

.method public static gotoActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wepie/snake/activity/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->speedUpBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/activity/GameActivity$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/GameActivity$1;-><init>(Lcom/wepie/snake/activity/GameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    return-void
.end method

.method private setRouletteLeft()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v4, 0x42200000    # 40.0f

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/wepie/snake/module/game/RouletteView;->w:I

    sget v3, Lcom/wepie/snake/module/game/RouletteView;->h:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/RouletteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    sget v3, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    iput v3, v2, Lcom/wepie/snake/module/game/RouletteView;->leftMargin:I

    .line 86
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v1, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 91
    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 92
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->speedUpBt:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method private setRouletteRight()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v5, 0x42200000    # 40.0f

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/wepie/snake/module/game/RouletteView;->w:I

    sget v3, Lcom/wepie/snake/module/game/RouletteView;->h:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/game/RouletteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v3

    sget v4, Lcom/wepie/snake/module/game/RouletteView;->w:I

    sub-int/2addr v3, v4

    sget v4, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/wepie/snake/module/game/RouletteView;->leftMargin:I

    .line 69
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    invoke-static {v6}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    invoke-static {v6}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v1, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 74
    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->speedUpBt:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method


# virtual methods
.method public doReStartGame()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->doReStartGame()V

    .line 145
    return-void
.end method

.method public doReviveSelf()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->doReviveSelf()V

    .line 149
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/wepie/snake/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wepie/snake/module/plugin/PluginManager;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/wepie/snake/activity/GameActivity;->lastClickBackTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 156
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    const-string v3, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u6e38\u620f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 157
    iput-wide v0, p0, Lcom/wepie/snake/activity/GameActivity;->lastClickBackTime:J

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/wepie/snake/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/wepie/snake/activity/GameActivity;->setContentView(I)V

    .line 37
    const v1, 0x7f0d0061

    invoke-virtual {p0, v1}, Lcom/wepie/snake/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iput-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    .line 38
    const v1, 0x7f0d0062

    invoke-virtual {p0, v1}, Lcom/wepie/snake/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/GameInfoView;

    iput-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    .line 39
    const v1, 0x7f0d0063

    invoke-virtual {p0, v1}, Lcom/wepie/snake/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/RouletteView;

    iput-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    .line 40
    const v1, 0x7f0d0064

    invoke-virtual {p0, v1}, Lcom/wepie/snake/activity/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->speedUpBt:Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setRouletteView(Lcom/wepie/snake/module/game/RouletteView;)V

    .line 42
    iget-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    iget-object v2, p0, Lcom/wepie/snake/activity/GameActivity;->gameInfoView:Lcom/wepie/snake/module/game/GameInfoView;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->setGameInfoView(Lcom/wepie/snake/module/game/GameInfoView;)V

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->w:I

    sget v2, Lcom/wepie/snake/module/game/RouletteView;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    iget-object v1, p0, Lcom/wepie/snake/activity/GameActivity;->rouletteView:Lcom/wepie/snake/module/game/RouletteView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/game/RouletteView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lcom/wepie/snake/activity/GameActivity;->setEvent()V

    .line 50
    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/wepie/snake/module/game/GameTypeUtil;->saveRemainTime(I)V

    .line 51
    iput-boolean v3, p0, Lcom/wepie/snake/activity/GameActivity;->createResume:Z

    .line 52
    const-string v1, "999"

    const-string v2, "------->GameActivity onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v1

    const-string v2, "is_operate_left"

    invoke-virtual {v1, v2, v3}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/wepie/snake/activity/GameActivity;->setRouletteLeft()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/activity/GameActivity;->setRouletteRight()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->closeTimer()V

    .line 138
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->saveRemainTime()V

    .line 139
    invoke-static {}, Lcom/wepie/snake/module/util/VoiceUtil;->getInstance()Lcom/wepie/snake/module/util/VoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/util/VoiceUtil;->pauseBgVoic()V

    .line 140
    invoke-static {}, Lcom/wepie/snake/helper/dialog/DialogUtil;->hideView()V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onResume()V

    .line 122
    const-string v0, "999"

    const-string v1, "------->GameActivity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/wepie/snake/activity/GameActivity;->createResume:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/activity/GameActivity;->createResume:Z

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->isGameOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/wepie/snake/module/util/VoiceUtil;->getInstance()Lcom/wepie/snake/module/util/VoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/util/VoiceUtil;->playBgVoice()V

    .line 132
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->checkRestartTimer()V

    goto :goto_0
.end method
