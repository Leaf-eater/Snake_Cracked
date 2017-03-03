.class public Lcom/wepie/snake/module/login/WXTokenHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "WXTokenHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/wepie/snake/module/login/WXTokenHandler;->callback:Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;

    .line 13
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wepie/snake/module/login/WXTokenHandler;->callback:Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;->onFail(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 17
    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "access_token":Ljava/lang/String;
    const-string v2, "unionid"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "unionid":Ljava/lang/String;
    iget-object v2, p0, Lcom/wepie/snake/module/login/WXTokenHandler;->callback:Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;

    invoke-interface {v2, v0, v1}, Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
