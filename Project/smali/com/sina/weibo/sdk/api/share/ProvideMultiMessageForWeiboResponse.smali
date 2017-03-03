.class public Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;
.super Lcom/sina/weibo/sdk/api/share/BaseResponse;
.source "ProvideMultiMessageForWeiboResponse.java"


# instance fields
.field public multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/BaseResponse;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method


# virtual methods
.method final check(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->reqPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 66
    invoke-virtual {p2, p1, v1, v2}, Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;->checkResponse(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;)Z

    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->fromBundle(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 51
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/api/share/BaseResponse;->toBundle(Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ProvideMultiMessageForWeiboResponse;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
