.class public Lcom/wepie/snake/module/plugin/share/sina/SinaShareUtil0;
.super Ljava/lang/Object;
.source "SinaShareUtil0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handlerSinaResp(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "sina_id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "response"    # Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    .line 54
    .local v0, "mWeiboShareAPI":Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    const-class v1, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 55
    invoke-interface {v0, p2, p3}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    .line 56
    return-void
.end method

.method public static share2Sina(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "sina_id"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v1

    .line 27
    .local v1, "mWeiboShareAPI":Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    invoke-interface {v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 29
    const-string v5, "999"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------>share2Sina desc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-interface {v1}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->isWeiboAppInstalled()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 48
    :goto_0
    return v5

    .line 33
    :cond_0
    new-instance v4, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v4}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 34
    .local v4, "weiboMessage":Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 35
    new-instance v3, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 36
    .local v3, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iput-object p2, v3, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 37
    iput-object v3, v4, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 39
    .end local v3    # "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    :cond_1
    if-eqz p3, :cond_2

    .line 40
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 41
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    invoke-virtual {v0, p3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    .line 42
    iput-object v0, v4, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 44
    .end local v0    # "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    :cond_2
    new-instance v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    .line 45
    .local v2, "request":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 46
    iput-object v4, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 47
    invoke-interface {v1, p0, v2}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;)Z

    .line 48
    const/4 v5, 0x1

    goto :goto_0
.end method
