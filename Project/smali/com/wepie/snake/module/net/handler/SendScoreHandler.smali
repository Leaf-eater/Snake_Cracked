.class public Lcom/wepie/snake/module/net/handler/SendScoreHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "SendScoreHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/SendScoreHandler;->callback:Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;

    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SendScoreHandler;->callback:Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;->onFail(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 18
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SendScoreHandler;->callback:Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;

    invoke-interface {v0}, Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;->onSuceess()V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SendScoreHandler;->callback:Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;

    const-string v1, "\u6210\u7ee9\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {v0, v1}, Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
