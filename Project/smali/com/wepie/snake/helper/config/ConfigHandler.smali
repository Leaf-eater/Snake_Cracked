.class public Lcom/wepie/snake/helper/config/ConfigHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "ConfigHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wepie/snake/helper/config/ConfigHandler;->callback:Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    .line 22
    return-void
.end method

.method public static parseConfigInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V
    .locals 9
    .param p0, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    .prologue
    .line 31
    const-string v7, "data"

    invoke-virtual {p0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 32
    .local v1, "data":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v7, Lcom/wepie/snake/helper/config/ConfigInfo;

    invoke-virtual {v3, v1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/helper/config/ConfigInfo;

    .line 34
    .local v0, "configInfo":Lcom/wepie/snake/helper/config/ConfigInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v5, "skinConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    const-string v7, "skins"

    invoke-virtual {v1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 37
    .local v6, "skins":Lcom/google/gson/JsonArray;
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 38
    .local v2, "element":Lcom/google/gson/JsonElement;
    const-class v8, Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-virtual {v3, v2, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 39
    .local v4, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    :cond_0
    iput-object v5, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->skinInfos:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7, v0}, Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;->onSuccess(Ljava/lang/String;Lcom/wepie/snake/helper/config/ConfigInfo;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigHandler;->callback:Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;->onFail(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 26
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>getConfigAndroid onOk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigHandler;->callback:Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/helper/config/ConfigHandler;->parseConfigInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V

    .line 28
    return-void
.end method
