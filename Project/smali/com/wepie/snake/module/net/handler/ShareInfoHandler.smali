.class public Lcom/wepie/snake/module/net/handler/ShareInfoHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "ShareInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    .line 14
    return-void
.end method

.method public static parseShareInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
    .locals 4
    .param p0, "object"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 24
    .local v0, "data":Lcom/google/gson/JsonObject;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 25
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .line 26
    .local v2, "userShareInfo":Lcom/wepie/snake/module/net/entity/UserShareInfo;
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;->onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;->onFail(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;->parseShareInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    .line 19
    return-void
.end method
