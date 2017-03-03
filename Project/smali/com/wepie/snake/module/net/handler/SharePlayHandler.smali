.class public Lcom/wepie/snake/module/net/handler/SharePlayHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "SharePlayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/SharePlayHandler;->callback:Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SharePlayHandler;->callback:Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;->onFail(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 17
    return-void
.end method
