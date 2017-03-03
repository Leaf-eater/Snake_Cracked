.class public Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "UpdateUserInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .line 13
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;->onFail(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 17
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-static {v2}, Lcom/wepie/snake/module/login/LoginHelper;->saveVisitorNick(Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    invoke-interface {v2}, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;->onSuccess()V

    .line 25
    :cond_1
    :goto_0
    return-void

    .line 21
    :cond_2
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "message":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 23
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    invoke-interface {v2, v1}, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
