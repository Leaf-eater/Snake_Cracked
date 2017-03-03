.class public Lcom/wepie/snake/activity/HomeActivity;
.super Lcom/wepie/snake/activity/BaseActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;
    }
.end annotation


# instance fields
.field private avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;

.field private container:Lcom/wepie/snake/base/HomeContainerView;

.field private containerLay:Landroid/widget/RelativeLayout;

.field private homeView:Lcom/wepie/snake/module/home/HomeView;

.field private lastNetConnected:Z

.field netWorkBroadcast:Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;

.field private nicknameModifyView:Lcom/wepie/snake/module/home/NicknameModifyView;

.field progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

.field private qqLogin:Lcom/wepie/snake/module/login/QQLogin;

.field private userInfoView:Lcom/wepie/snake/module/home/user/UserInfoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wepie/snake/activity/BaseActivity;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z

    .line 56
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/activity/HomeActivity;)Lcom/wepie/snake/module/home/AvatarModifyView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/wepie/snake/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/wepie/snake/activity/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wepie/snake/activity/HomeActivity;->doWXAuthoSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wepie/snake/activity/HomeActivity;Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;
    .param p1, "x1"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wepie/snake/activity/HomeActivity;->doLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/wepie/snake/activity/HomeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wepie/snake/activity/HomeActivity;->bindUser(Z)V

    return-void
.end method

.method private bindUser(Z)V
    .locals 2
    .param p1, "isInherit"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/wepie/snake/activity/HomeActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/activity/HomeActivity$4;-><init>(Lcom/wepie/snake/activity/HomeActivity;Z)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/api/LoginApi;->bindUser(ILcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 257
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 6
    .param p1, "userInfo"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const-string v1, "\u597d\u7684"

    const-string v2, "\u4e0d\u4e86"

    const-string v3, "\u662f\u5426\u7ee7\u627f\u6e38\u5ba2\u6570\u636e?"

    const/4 v4, 0x0

    new-instance v5, Lcom/wepie/snake/activity/HomeActivity$3;

    invoke-direct {v5, p0}, Lcom/wepie/snake/activity/HomeActivity$3;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/activity/HomeActivity;->refreshUserInfo()V

    goto :goto_0
.end method

.method private doWXAuthoSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 261
    new-instance v0, Lcom/wepie/snake/activity/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/wepie/snake/activity/HomeActivity$5;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/api/LoginApi;->getWXTokenByCode(Ljava/lang/String;Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;)V

    .line 285
    return-void
.end method

.method private registerNetWorkBroadcast()V
    .locals 2

    .prologue
    .line 169
    new-instance v1, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    iput-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->netWorkBroadcast:Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "wx_auth_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "sid_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->netWorkBroadcast:Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;

    invoke-virtual {p0, v1, v0}, Lcom/wepie/snake/activity/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private unRegisterNetWorkBroadcast()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->netWorkBroadcast:Lcom/wepie/snake/activity/HomeActivity$NetWorkBroadcast;

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method


# virtual methods
.method public doKickOut()V
    .locals 1

    .prologue
    .line 292
    const-string v0, "\u60a8\u5df2\u7ecf\u88ab\u6324\u4e0b\u7ebf"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/wepie/snake/activity/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/wepie/snake/activity/HomeActivity$6;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/LoginApi;->doVisitorLogin(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 306
    return-void
.end method

.method public doQQAutho()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->qqLogin:Lcom/wepie/snake/module/login/QQLogin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wepie/snake/module/login/QQLogin;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/login/QQLogin;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->qqLogin:Lcom/wepie/snake/module/login/QQLogin;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->qqLogin:Lcom/wepie/snake/module/login/QQLogin;

    new-instance v1, Lcom/wepie/snake/activity/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/HomeActivity$2;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/login/QQLogin;->login(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 221
    return-void
.end method

.method public doWXAutho()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/module/plugin/PluginManager;->wxLogin(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/wepie/snake/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 83
    :cond_0
    const/4 v1, 0x1

    new-instance v5, Lcom/wepie/snake/activity/HomeActivity$1;

    invoke-direct {v5, p0}, Lcom/wepie/snake/activity/HomeActivity$1;-><init>(Lcom/wepie/snake/activity/HomeActivity;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/clip/ImageChooser;->onResult(Landroid/app/Activity;ZIILandroid/content/Intent;Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wepie/snake/module/plugin/PluginManager;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/wepie/snake/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->HomeActivity onConfigurationChanged newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/wepie/snake/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/HomeActivity;->setContentView(I)V

    .line 63
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/HomeView;

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->homeView:Lcom/wepie/snake/module/home/HomeView;

    .line 64
    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    .line 65
    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/wepie/snake/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/base/HomeContainerView;

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    .line 66
    invoke-virtual {p0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 68
    invoke-static {}, Lcom/wepie/snake/module/util/NetWorkUtil;->isNetworkConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wepie/snake/activity/HomeActivity;->lastNetConnected:Z

    .line 69
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/helper/update/UpdateUtil;->registerReceiver(Landroid/app/Activity;)V

    .line 70
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->checkUpdate()V

    .line 71
    invoke-direct {p0}, Lcom/wepie/snake/activity/HomeActivity;->registerNetWorkBroadcast()V

    .line 72
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/helper/config/ConfigManager;->refreshConfig()V

    .line 74
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->HomeActivity onCreate channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/wepie/snake/module/util/PacketUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/wepie/snake/module/game/nick/NickManager;->getInstance()Lcom/wepie/snake/module/game/nick/NickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/nick/NickManager;->updateBanWords()V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onDestroy()V

    .line 152
    invoke-static {}, Lcom/wepie/snake/helper/update/UpdateUtil;->getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/helper/update/UpdateUtil;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 153
    invoke-direct {p0}, Lcom/wepie/snake/activity/HomeActivity;->unRegisterNetWorkBroadcast()V

    .line 154
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/wepie/snake/activity/BaseActivity;->onPause()V

    .line 146
    invoke-static {}, Lcom/wepie/snake/helper/dialog/DialogUtil;->hideView()V

    .line 147
    return-void
.end method

.method public refreshUserInfo()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->userInfoView:Lcom/wepie/snake/module/home/user/UserInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->userInfoView:Lcom/wepie/snake/module/home/user/UserInfoView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/user/UserInfoView;->doRefresh()V

    .line 289
    :cond_0
    return-void
.end method

.method public showAvatarModifyDialog()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    new-instance v0, Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/AvatarModifyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;

    .line 140
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    .line 141
    return-void
.end method

.method public showHomeView()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "999"

    const-string v1, "------>showHomeView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->homeView:Lcom/wepie/snake/module/home/HomeView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/HomeView;->doRefresh()V

    .line 105
    return-void
.end method

.method public showNickModifyView()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    new-instance v0, Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/NicknameModifyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->nicknameModifyView:Lcom/wepie/snake/module/home/NicknameModifyView;

    .line 134
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->nicknameModifyView:Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/base/HomeContainerView;->addChildWithAnim(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public showRankView()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 109
    new-instance v0, Lcom/wepie/snake/ui/RankView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/ui/RankView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "rankView":Lcom/wepie/snake/ui/RankView;
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/base/HomeContainerView;->addChildWithAnim(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public showRuleView()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    new-instance v0, Lcom/wepie/snake/ui/RuleView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/ui/RuleView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "ruleView":Lcom/wepie/snake/ui/RuleView;
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/base/HomeContainerView;->addChildWithAnim(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public showSkinView()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    new-instance v0, Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/skin/SkinView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "skinView":Lcom/wepie/snake/module/home/skin/SkinView;
    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/base/HomeContainerView;->addChildWithAnim(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public showUserInfoView()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->containerLay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    new-instance v0, Lcom/wepie/snake/module/home/user/UserInfoView;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/user/UserInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->userInfoView:Lcom/wepie/snake/module/home/user/UserInfoView;

    .line 128
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity;->container:Lcom/wepie/snake/base/HomeContainerView;

    iget-object v1, p0, Lcom/wepie/snake/activity/HomeActivity;->userInfoView:Lcom/wepie/snake/module/home/user/UserInfoView;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/base/HomeContainerView;->addChildWithAnim(Landroid/view/View;)V

    .line 129
    return-void
.end method
