.class public Lcom/wepie/snake/module/net/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static final GAME_MODE_CHALLENGE:I = 0x2

.field private static final GAME_MODE_ENDLESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buySkin(ILcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V
    .locals 4
    .param p0, "skin_id"    # I
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "skin_id"

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

    .line 81
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->SKIN_API_BUY_SKIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/CommonHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/net/handler/CommonHandler;-><init>(Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 82
    return-void
.end method

.method public static getActivityCoin(ILcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;)V
    .locals 3
    .param p0, "activityId"    # I
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "act_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->GET_ACTIVITY_COIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/net/handler/ActivityCoinHandler;-><init>(Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 99
    return-void
.end method

.method public static getActivityPlanning(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->GET_ACTIVITY_PLANNING:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;-><init>(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 93
    return-void
.end method

.method public static getConfigAndroid(Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V
    .locals 4
    .param p0, "callback"    # Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;

    .prologue
    .line 55
    const-string v2, "999"

    const-string v3, "------>getConfigAndroid start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/wepie/snake/helper/config/ConfigHandler;

    invoke-direct {v0, p0}, Lcom/wepie/snake/helper/config/ConfigHandler;-><init>(Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V

    .line 58
    .local v0, "configHandler":Lcom/wepie/snake/helper/config/ConfigHandler;
    sget-object v2, Lcom/wepie/snake/module/net/UrlConfig;->GET_CONFIG_ANDROID:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 59
    return-void
.end method

.method public static getList(Lcom/wepie/snake/module/net/handler/RankInfoHandler;)V
    .locals 2
    .param p0, "rankInfoHandler"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler;

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "pareams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->GET_LIST:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 45
    return-void
.end method

.method public static getQiniuToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;)V
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "bucket"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "bucket"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->GET_UPLOAD_TOKEN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;

    invoke-direct {v2, p3}, Lcom/wepie/snake/module/net/handler/UploadTokenHandler;-><init>(Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 88
    return-void
.end method

.method public static getShareInfo(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
    .locals 3
    .param p0, "share_code"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "share_code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->SHARE_API_GET_SHARE_INFO:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;-><init>(Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 70
    return-void
.end method

.method public static getSkinInfo(Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->SKIN_API_GET_USER_SKIN:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/SkinHandler;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/net/handler/SkinHandler;-><init>(Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 64
    return-void
.end method

.method public static getTodayRankInfo(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/wepie/snake/module/net/handler/TodayRankHandler;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/net/handler/TodayRankHandler;-><init>(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V

    .line 51
    .local v1, "todayRankHandler":Lcom/wepie/snake/module/net/handler/TodayRankHandler;
    sget-object v2, Lcom/wepie/snake/module/net/UrlConfig;->GET_BEST_TODAY:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 52
    return-void
.end method

.method public static sendScore(IIILcom/wepie/snake/module/net/handler/SendScoreHandler;)V
    .locals 6
    .param p0, "kill"    # I
    .param p1, "length"    # I
    .param p2, "gameType"    # I
    .param p3, "sendScoreHandler"    # Lcom/wepie/snake/module/net/handler/SendScoreHandler;

    .prologue
    const/4 v2, 0x2

    .line 32
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "default name"

    invoke-virtual {v3, v4, v5}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, "pareams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "kill"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "game_mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lcom/wepie/snake/module/net/UrlConfig;->UPDATE_SCORE:Ljava/lang/String;

    invoke-static {v2, v1, p3}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateSharePlay(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;)V
    .locals 3
    .param p0, "send_id"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "send_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->SHARE_API_UPDATE_PLAY:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/SharePlayHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/net/handler/SharePlayHandler;-><init>(Lcom/wepie/snake/module/net/handler/SharePlayHandler$SharePlayCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 76
    return-void
.end method
