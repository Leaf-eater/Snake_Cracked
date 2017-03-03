.class public Lcom/wepie/snake/module/net/handler/BanWordsHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "BanWordsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/BanWordsHandler;->callback:Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    .line 18
    return-void
.end method

.method public static parseBanWords(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V
    .locals 8
    .param p0, "json"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    .prologue
    .line 26
    const-string v7, "data"

    invoke-virtual {p0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 27
    .local v2, "object":Lcom/google/gson/JsonObject;
    const-string v7, "ban_word_version"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 28
    .local v0, "ban_word_version":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v5, "wordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "words"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    .line 30
    .local v6, "wordsJson":Lcom/google/gson/JsonArray;
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    .line 31
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 32
    invoke-virtual {v6, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "word":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    .end local v4    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7, v0, v5}, Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;->onSuccess(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/BanWordsHandler;->callback:Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;->onFail(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/BanWordsHandler;->callback:Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/handler/BanWordsHandler;->parseBanWords(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V

    .line 23
    return-void
.end method
