.class public Lcom/wepie/snake/module/net/api/LoginApi;
.super Ljava/lang/Object;
.source "LoginApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindUser(ILcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 4
    .param p0, "inherit"    # I
    .param p1, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "inherit"

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

    .line 39
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->LOGIN_API_BIND:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 40
    return-void
.end method

.method public static doLogout(Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->LOGIN_API_LOGOUT:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 45
    return-void
.end method

.method public static doVisitorLogin(Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->LOGIN_API_VISITOR:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 20
    return-void
.end method

.method public static getWXTokenByCode(Ljava/lang/String;Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "wx9e4ce7f566e4b2ff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "secret"

    const-string v2, "be65b9ef9271e927d643b29a8b4812be"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token"

    new-instance v2, Lcom/wepie/snake/module/login/WXTokenHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/login/WXTokenHandler;-><init>(Lcom/wepie/snake/module/login/WXTokenHandler$WXTokenCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 55
    return-void
.end method

.method public static qqLoginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 3
    .param p0, "access_token"    # Ljava/lang/String;
    .param p1, "qq_uid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "qq_uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->LOGIN_API_QQ_LOGIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p2}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 27
    return-void
.end method

.method public static wxLoginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 3
    .param p0, "access_token"    # Ljava/lang/String;
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "openid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->LOGIN_API_WACHAT_LOGIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/login/LoginHandler;

    invoke-direct {v2, p2}, Lcom/wepie/snake/module/login/LoginHandler;-><init>(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 34
    return-void
.end method
