.class public Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "ActivityCoinHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    .line 16
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;->onFailure(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 19
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u9886\u53d6\u6210\u529f"

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    invoke-interface {v1, v0}, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;->onSuccess(Ljava/lang/String;)V

    .line 22
    :cond_1
    return-void
.end method
