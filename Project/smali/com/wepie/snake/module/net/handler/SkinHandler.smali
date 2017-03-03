.class public Lcom/wepie/snake/module/net/handler/SkinHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "SkinHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;
    }
.end annotation


# instance fields
.field callback:Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/SkinHandler;->callback:Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    .line 16
    return-void
.end method

.method public static parseSkinInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V
    .locals 6
    .param p0, "object"    # Lcom/google/gson/JsonObject;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v4, "data"

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 26
    .local v1, "data":Lcom/google/gson/JsonObject;
    const-string v4, "skin"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 27
    .local v0, "array":Lcom/google/gson/JsonArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v3, "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 29
    .local v2, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    .end local v2    # "element":Lcom/google/gson/JsonElement;
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;->onSuccess(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SkinHandler;->callback:Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;->onFail(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/SkinHandler;->callback:Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/handler/SkinHandler;->parseSkinInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V

    .line 21
    return-void
.end method
