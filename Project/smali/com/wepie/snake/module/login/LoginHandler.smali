.class public Lcom/wepie/snake/module/login/LoginHandler;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "LoginHandler.java"


# instance fields
.field callback:Lcom/wepie/snake/module/login/UserLoginCallback;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    .line 19
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/login/UserLoginCallback;->onFail(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 10
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 23
    const-string v8, "data"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 24
    .local v0, "data":Lcom/google/gson/JsonObject;
    const-string v8, "user_info"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 31
    iget-object v8, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/wepie/snake/module/login/UserLoginCallback;->onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v8, "user_info"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 34
    .local v7, "user_info":Lcom/google/gson/JsonObject;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    const-class v9, Lcom/wepie/snake/module/login/UserInfo;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wepie/snake/module/login/UserInfo;

    .line 36
    .local v6, "userInfo":Lcom/wepie/snake/module/login/UserInfo;
    const-string v8, "login_type"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 37
    .local v2, "login_type":I
    const-string v8, "sid"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "sid":Ljava/lang/String;
    iput v2, v6, Lcom/wepie/snake/module/login/UserInfo;->login_type:I

    .line 39
    iput-object v3, v6, Lcom/wepie/snake/module/login/UserInfo;->sid:Ljava/lang/String;

    .line 41
    invoke-static {v6}, Lcom/wepie/snake/module/login/LoginHelper;->saveLoginUser(Lcom/wepie/snake/module/login/UserInfo;)V

    .line 42
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-static {v8}, Lcom/wepie/snake/module/login/LoginHelper;->saveVisitorNick(Ljava/lang/String;)V

    .line 44
    :cond_2
    const-string v8, "skin"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 45
    const-string v8, "skin"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 46
    .local v5, "skins":Lcom/google/gson/JsonArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v4, "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 48
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    :cond_3
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->setSkinIds(Ljava/util/ArrayList;)V

    .line 53
    .end local v4    # "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "skins":Lcom/google/gson/JsonArray;
    :cond_4
    iget-object v8, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/wepie/snake/module/login/LoginHandler;->callback:Lcom/wepie/snake/module/login/UserLoginCallback;

    invoke-interface {v8, v6}, Lcom/wepie/snake/module/login/UserLoginCallback;->onLoginSuccess(Lcom/wepie/snake/module/login/UserInfo;)V

    goto/16 :goto_0
.end method
