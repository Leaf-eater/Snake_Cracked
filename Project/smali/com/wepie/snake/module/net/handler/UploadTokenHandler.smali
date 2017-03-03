.class public Lcom/wepie/snake/module/net/handler/UploadTokenHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "UploadTokenHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private callback:Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 14
    const-class v0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;->TAG:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;->callback:Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    .line 18
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;->callback:Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;->onFail(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 23
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 24
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 25
    .local v0, "jsonObj":Lcom/google/gson/JsonObject;
    iget-object v1, p0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;->callback:Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    const-string v2, "token"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .end local v0    # "jsonObj":Lcom/google/gson/JsonObject;
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;->callback:Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
