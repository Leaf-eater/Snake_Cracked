.class public Lcom/wepie/snake/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleWXResp()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v0

    const-string v1, "wx9e4ce7f566e4b2ff"

    invoke-virtual {p0}, Lcom/wepie/snake/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/wepie/snake/wxapi/WXEntryActivity$1;

    invoke-direct {v3, p0}, Lcom/wepie/snake/wxapi/WXEntryActivity$1;-><init>(Lcom/wepie/snake/wxapi/WXEntryActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/wepie/snake/module/plugin/PluginManager;->handleWXResp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/wepie/snake/wxapi/WXEntryActivity;->handleWXResp()V

    .line 25
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 29
    const-string v0, "WXEntryActivity"

    const-string v1, "---->onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, p1}, Lcom/wepie/snake/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 31
    invoke-direct {p0}, Lcom/wepie/snake/wxapi/WXEntryActivity;->handleWXResp()V

    .line 32
    return-void
.end method
