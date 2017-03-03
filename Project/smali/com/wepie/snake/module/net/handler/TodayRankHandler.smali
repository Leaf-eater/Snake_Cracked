.class public Lcom/wepie/snake/module/net/handler/TodayRankHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "TodayRankHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/TodayRankHandler;->callback:Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    .line 13
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/TodayRankHandler;->callback:Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;->onFail(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 17
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 19
    .local v4, "json":Lcom/google/gson/JsonObject;
    const-string v1, ""

    .line 20
    .local v1, "endlessName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 21
    .local v2, "endlessScore":I
    const-string v5, ""

    .line 22
    .local v5, "limitName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 23
    .local v6, "limitScore":I
    const-string v7, "endless_top_info"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_0

    .line 24
    const-string v7, "endless_top_info"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 26
    .local v3, "endless_top_info":Lcom/google/gson/JsonObject;
    const-string v7, "nickname"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v7, "score"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 30
    .end local v3    # "endless_top_info":Lcom/google/gson/JsonObject;
    :cond_0
    const-string v7, "challenge_top_info"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_1

    .line 31
    const-string v7, "challenge_top_info"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 32
    .local v0, "challenge_top_info":Lcom/google/gson/JsonObject;
    const-string v7, "nickname"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 33
    const-string v7, "score"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    .line 36
    .end local v0    # "challenge_top_info":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v7, p0, Lcom/wepie/snake/module/net/handler/TodayRankHandler;->callback:Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    invoke-interface {v7, v1, v2, v5, v6}, Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;->onSuccess(Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    return-void
.end method
