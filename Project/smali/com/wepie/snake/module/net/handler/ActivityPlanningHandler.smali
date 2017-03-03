.class public Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "ActivityPlanningHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;,
        Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    .line 16
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;->onFailure(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 7
    .param p1, "object"    # Lcom/google/gson/JsonObject;

    .prologue
    const/4 v6, 0x1

    .line 20
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    if-nez v4, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 23
    .local v0, "activity":Lcom/google/gson/JsonObject;
    new-instance v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;

    invoke-direct {v1}, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;-><init>()V

    .line 24
    .local v1, "bean":Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    iput v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->activityId:I

    .line 25
    const-string v4, "title"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->title:Ljava/lang/String;

    .line 26
    const-string v4, "btn_text"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->btnText:Ljava/lang/String;

    .line 27
    const-string v4, "imgurl"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->imageUrl:Ljava/lang/String;

    .line 28
    const-string v4, "coin"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    iput v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->coin:I

    .line 30
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 31
    .local v3, "type":I
    const-string v4, "is_receive"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 32
    .local v2, "isReceived":I
    iput v6, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    .line 33
    if-ne v3, v6, :cond_3

    if-nez v2, :cond_3

    .line 34
    const/4 v4, 0x2

    iput v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    .line 39
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;->callback:Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    invoke-interface {v4, v1}, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;->onSuccess(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V

    goto :goto_0

    .line 35
    :cond_3
    if-ne v3, v6, :cond_2

    if-ne v2, v6, :cond_2

    .line 36
    const/4 v4, 0x3

    iput v4, v1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    goto :goto_1
.end method
