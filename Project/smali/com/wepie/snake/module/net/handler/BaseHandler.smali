.class public abstract Lcom/wepie/snake/module/net/handler/BaseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BaseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "bytes"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    if-eqz p3, :cond_0

    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 61
    .local v1, "json":Ljava/lang/String;
    const-string v2, "BaseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onFailure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/wepie/snake/module/util/NetWorkUtil;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {p0, v2}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onFail(Ljava/lang/String;)V

    .line 71
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "\u7f51\u7edc\u672a\u8fde\u63a5"

    invoke-virtual {p0, v2}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onFail(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public abstract onOk(Lcom/google/gson/JsonObject;)V
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "bytes"    # [B

    .prologue
    .line 22
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v3, p3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    .local v3, "json":Ljava/lang/String;
    const-string v7, "BaseHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onSuccess: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 25
    .local v6, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v6, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 27
    .local v5, "object":Lcom/google/gson/JsonObject;
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 28
    invoke-virtual {p0, v5}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onOk(Lcom/google/gson/JsonObject;)V

    .line 54
    .end local v3    # "json":Ljava/lang/String;
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :goto_0
    return-void

    .line 32
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v5    # "object":Lcom/google/gson/JsonObject;
    .restart local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_0
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 33
    .local v0, "code":I
    const/16 v7, 0x191

    if-ne v0, v7, :cond_1

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-string v7, "sid_error"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/wepie/snake/base/SkApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "code":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "json":Ljava/lang/String;
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "\u6570\u636e\u5f02\u5e38"

    invoke-virtual {p0, v7}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onFail(Ljava/lang/String;)V

    .line 52
    const-string v7, "BaseHandler"

    const-string v8, "onSuccess: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 37
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v5    # "object":Lcom/google/gson/JsonObject;
    .restart local v6    # "parser":Lcom/google/gson/JsonParser;
    :cond_1
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_2

    .line 38
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onOk(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v4, ""

    .line 41
    .local v4, "msg":Ljava/lang/String;
    const-string v7, "message"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 42
    const-string v7, "message"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lcom/wepie/snake/module/net/handler/BaseHandler;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_4
    const-string v7, "result"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    const-string v7, "result"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
