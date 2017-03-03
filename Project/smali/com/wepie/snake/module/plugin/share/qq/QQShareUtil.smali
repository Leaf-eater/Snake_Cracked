.class public Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil;
.super Ljava/lang/Object;
.source "QQShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    new-instance v0, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;

    invoke-direct {v0}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 53
    return-void
.end method

.method public static share2QQ(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "req_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    const-string v2, "title"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "summary"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->icon_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imageLocalUrl"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const-string v2, "targetUrl"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->link_url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v2, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->qq_id:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 35
    .local v1, "sTencent":Lcom/tencent/tauth/Tencent;
    new-instance v2, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;

    invoke-direct {v2}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;-><init>()V

    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 36
    return-void
.end method

.method public static share2Qzone(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "dexLoader"    # Ldalvik/system/DexClassLoader;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "req_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "title"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "summary"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "targetUrl"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->link_url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "imageUrl"

    iget-object v3, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->imageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    iget-object v2, p2, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->qq_id:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 47
    .local v1, "sTencent":Lcom/tencent/tauth/Tencent;
    new-instance v2, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;

    invoke-direct {v2}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil$BaseListener;-><init>()V

    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 48
    return-void
.end method
