.class public Lcom/wepie/snake/module/net/api/UserApi;
.super Ljava/lang/Object;
.source "UserApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserInfo(Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->USER_API_GET_USER_INFO:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 47
    return-void
.end method

.method public static updatAge(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 2
    .param p0, "age"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "age"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v0, p1}, Lcom/wepie/snake/module/net/api/UserApi;->updateUserInfo(Ljava/util/HashMap;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 32
    return-void
.end method

.method public static updatGender(ILcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 4
    .param p0, "gender"    # I
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v0, p1}, Lcom/wepie/snake/module/net/api/UserApi;->updateUserInfo(Ljava/util/HashMap;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 26
    return-void
.end method

.method public static updateAvatar(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "avatar"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0, p1}, Lcom/wepie/snake/module/net/api/UserApi;->updateUserInfo(Ljava/util/HashMap;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 38
    return-void
.end method

.method public static updateNick(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 2
    .param p0, "nickname"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v0, p1}, Lcom/wepie/snake/module/net/api/UserApi;->updateUserInfo(Ljava/util/HashMap;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 20
    return-void
.end method

.method public static updateUserInfo(Ljava/util/HashMap;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/wepie/snake/module/net/UrlConfig;->USER_API_UPDATE_USER_INFO:Ljava/lang/String;

    new-instance v1, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;

    invoke-direct {v1, p1}, Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler;-><init>(Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    invoke-static {v0, p0, v1}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 42
    return-void
.end method
