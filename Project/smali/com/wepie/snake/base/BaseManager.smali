.class public abstract Lcom/wepie/snake/base/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheFilePath()Ljava/lang/String;
.end method

.method public getLocalJson()Lcom/google/gson/JsonObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/wepie/snake/base/BaseManager;->getCacheFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wepie/snake/module/util/FileCacheUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 23
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 24
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    .local v1, "object":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 26
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "parser":Lcom/google/gson/JsonParser;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract initLocalData()V
.end method

.method public save2File(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/wepie/snake/base/BaseManager;->getCacheFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wepie/snake/module/util/FileCacheUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
