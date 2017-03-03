.class public Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;
.super Landroid/app/Activity;
.source "SinaShareActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;


# static fields
.field public static start_share:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->start_share:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "share_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "shareUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareUrl()Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 34
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "desc":Ljava/lang/String;
    const-string v4, "999"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----->SinaShareActivity onCreate savedInstanceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " start_share="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->start_share:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-boolean v4, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->start_share:Z

    if-eqz v4, :cond_2

    .line 38
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v4

    const-string v5, "3601510912"

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v5, v0, v6}, Lcom/wepie/snake/module/plugin/PluginManager;->share2Sina(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 40
    .local v2, "result":Z
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->finish()V

    .line 46
    .end local v2    # "result":Z
    :cond_1
    :goto_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->start_share:Z

    .line 48
    return-void

    .line 42
    :cond_2
    const-string v4, "3601510912"

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v1

    .line 43
    .local v1, "mWeiboShareAPI":Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v1, v4, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 44
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 54
    const-string v1, "999"

    const-string v2, "----->SinaShareActivity onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "3601510912"

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    .line 73
    .local v0, "mWeiboShareAPI":Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 74
    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 3
    .param p1, "baseResponse"    # Lcom/sina/weibo/sdk/api/share/BaseResponse;

    .prologue
    .line 78
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>handlerSinaResp onResponse code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->finish()V

    .line 91
    return-void

    .line 81
    :pswitch_0
    const-string v0, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_1
    const-string v0, "\u5206\u4eab\u53d6\u6d88"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_2
    const-string v0, "\u5206\u4eab\u5931\u8d25"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
