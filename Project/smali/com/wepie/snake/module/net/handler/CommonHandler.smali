.class public Lcom/wepie/snake/module/net/handler/CommonHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "CommonHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/CommonHandler;->callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/CommonHandler;->callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/CommonHandler;->callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;->onFail(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/CommonHandler;->callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/CommonHandler;->callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;->onSuccess()V

    .line 20
    :cond_0
    return-void
.end method
