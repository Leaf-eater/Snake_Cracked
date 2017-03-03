.class public Lcom/wepie/snake/activity/StartActivity;
.super Lcom/wepie/snake/activity/BaseActivity;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/activity/StartActivity$StartBroadcast;
    }
.end annotation


# instance fields
.field private loadingView:Lcom/wepie/snake/module/home/LoadingView;

.field startBroadcast:Lcom/wepie/snake/activity/StartActivity$StartBroadcast;

.field private startImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wepie/snake/activity/BaseActivity;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->showHideAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/activity/StartActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity;->startImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->showLoading()V

    return-void
.end method

.method static synthetic access$300(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->doJump()V

    return-void
.end method

.method private doJump()V
    .locals 6

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/wepie/snake/activity/StartActivity$4;

    invoke-direct {v2, p0}, Lcom/wepie/snake/activity/StartActivity$4;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/activity/StartActivity;->startImage:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/LoadingView;

    iput-object v0, p0, Lcom/wepie/snake/activity/StartActivity;->loadingView:Lcom/wepie/snake/module/home/LoadingView;

    .line 64
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->startShowAnim()V

    .line 65
    return-void
.end method

.method private registerStartBroadcast()V
    .locals 2

    .prologue
    .line 162
    new-instance v1, Lcom/wepie/snake/activity/StartActivity$StartBroadcast;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/StartActivity$StartBroadcast;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    iput-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->startBroadcast:Lcom/wepie/snake/activity/StartActivity$StartBroadcast;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "sid_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->startBroadcast:Lcom/wepie/snake/activity/StartActivity$StartBroadcast;

    invoke-virtual {p0, v1, v0}, Lcom/wepie/snake/activity/StartActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method private showHideAnim()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 97
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 99
    new-instance v1, Lcom/wepie/snake/activity/StartActivity$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/StartActivity$2;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 115
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->startImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    return-void
.end method

.method private showLoading()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->loadingView:Lcom/wepie/snake/module/home/LoadingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/LoadingView;->setVisibility(I)V

    .line 120
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 121
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 122
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->loadingView:Lcom/wepie/snake/module/home/LoadingView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/home/LoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->loadingView:Lcom/wepie/snake/module/home/LoadingView;

    new-instance v2, Lcom/wepie/snake/activity/StartActivity$3;

    invoke-direct {v2, p0}, Lcom/wepie/snake/activity/StartActivity$3;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/LoadingView;->doRefresh(Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;)V

    .line 130
    return-void
.end method

.method private startShowAnim()V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 71
    new-instance v1, Lcom/wepie/snake/activity/StartActivity$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/StartActivity$1;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    iget-object v1, p0, Lcom/wepie/snake/activity/StartActivity;->startImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    return-void
.end method


# virtual methods
.method public doKickOut()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "\u60a8\u5df2\u7ecf\u88ab\u6324\u4e0b\u7ebf"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/wepie/snake/activity/StartActivity$5;

    invoke-direct {v0, p0}, Lcom/wepie/snake/activity/StartActivity$5;-><init>(Lcom/wepie/snake/activity/StartActivity;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/LoginApi;->doVisitorLogin(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/wepie/snake/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v2, "999"

    const-string v3, "------>StartActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->registerStartBroadcast()V

    .line 40
    invoke-virtual {p0}, Lcom/wepie/snake/activity/StartActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/wepie/snake/activity/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, "mainIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "999"

    const-string v3, "----->StartActivity not root mainIntent return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/wepie/snake/activity/StartActivity;->finish()V

    .line 58
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 51
    :cond_0
    const v2, 0x7f04001d

    invoke-virtual {p0, v2}, Lcom/wepie/snake/activity/StartActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->init()V

    .line 54
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->clear()V

    .line 55
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/module/plugin/PluginManager;->updatePluginInfo()V

    .line 57
    invoke-static {}, Lcom/wepie/snake/module/home/HomeView;->firstShow()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity;->startBroadcast:Lcom/wepie/snake/activity/StartActivity$StartBroadcast;

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/StartActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onResume()V

    .line 136
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/wepie/snake/activity/StartActivity;->doJump()V

    .line 147
    return-void
.end method
