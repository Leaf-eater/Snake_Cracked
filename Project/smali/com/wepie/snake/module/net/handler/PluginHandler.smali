.class public Lcom/wepie/snake/module/net/handler/PluginHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "PluginHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/PluginHandler;->callback:Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    .line 12
    return-void
.end method

.method public static parsePluginInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V
    .locals 4
    .param p0, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 23
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v3, "plugin_url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "plugin_url":Ljava/lang/String;
    const-string v3, "md5"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2, v1}, Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/PluginHandler;->callback:Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;->onFail(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/PluginHandler;->callback:Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/handler/PluginHandler;->parsePluginInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V

    .line 17
    return-void
.end method
