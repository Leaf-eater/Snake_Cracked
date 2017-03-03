.class public Lcom/wepie/snake/module/net/handler/RankInfoHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "RankInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;,
        Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/RankInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    .line 20
    return-void
.end method

.method public static parseRankInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
    .locals 16
    .param p0, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    .prologue
    .line 28
    const-string v14, "data"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 29
    .local v5, "data":Lcom/google/gson/JsonObject;
    const-string v14, "kill_top_list"

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v10

    .line 30
    .local v10, "kills":Lcom/google/gson/JsonArray;
    const-string v14, "length_top_list"

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    .line 31
    .local v12, "lengths":Lcom/google/gson/JsonArray;
    const-string v14, "challenge_kill_top_list"

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 32
    .local v3, "challenge_kill_top_list":Lcom/google/gson/JsonArray;
    const-string v14, "challenge_length_top_list"

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 33
    .local v4, "challenge_length_top_list":Lcom/google/gson/JsonArray;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v6, "gson":Lcom/google/gson/Gson;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v9, "killList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/net/entity/ScoreInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v11, "lengthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/net/entity/ScoreInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "challengeKillArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/net/entity/ScoreInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "challengeLengthArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/net/entity/ScoreInfo;>;"
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 41
    .local v8, "jsonElement":Lcom/google/gson/JsonElement;
    const-class v15, Lcom/wepie/snake/module/net/entity/ScoreInfo;

    invoke-virtual {v6, v8, v15}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v8    # "jsonElement":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 44
    .local v7, "jsonE":Lcom/google/gson/JsonElement;
    const-class v15, Lcom/wepie/snake/module/net/entity/ScoreInfo;

    invoke-virtual {v6, v7, v15}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v7    # "jsonE":Lcom/google/gson/JsonElement;
    :cond_1
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 47
    .restart local v7    # "jsonE":Lcom/google/gson/JsonElement;
    const-class v15, Lcom/wepie/snake/module/net/entity/ScoreInfo;

    invoke-virtual {v6, v7, v15}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 49
    .end local v7    # "jsonE":Lcom/google/gson/JsonElement;
    :cond_2
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 50
    .restart local v7    # "jsonE":Lcom/google/gson/JsonElement;
    const-class v15, Lcom/wepie/snake/module/net/entity/ScoreInfo;

    invoke-virtual {v6, v7, v15}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    .end local v7    # "jsonE":Lcom/google/gson/JsonElement;
    :cond_3
    new-instance v13, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    invoke-direct {v13}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;-><init>()V

    .line 54
    .local v13, "rankInfo":Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    iput-object v9, v13, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->endlessKillArray:Ljava/util/ArrayList;

    .line 55
    iput-object v11, v13, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->endlessLengthArray:Ljava/util/ArrayList;

    .line 56
    iput-object v1, v13, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->challengeKillArray:Ljava/util/ArrayList;

    .line 57
    iput-object v2, v13, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->challengeLengthArray:Ljava/util/ArrayList;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;->onSuccess(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/RankInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;->onError(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/RankInfoHandler;->callback:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/handler/RankInfoHandler;->parseRankInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V

    .line 25
    return-void
.end method
