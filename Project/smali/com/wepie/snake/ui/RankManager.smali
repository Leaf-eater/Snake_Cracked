.class public Lcom/wepie/snake/ui/RankManager;
.super Ljava/lang/Object;
.source "RankManager.java"


# static fields
.field private static instance:Lcom/wepie/snake/ui/RankManager;


# instance fields
.field private mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankManager;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 19
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankManager;->initLocal()V

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/wepie/snake/ui/RankManager;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;)Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/RankManager;
    .param p1, "x1"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/wepie/snake/ui/RankManager;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/wepie/snake/ui/RankManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/wepie/snake/ui/RankManager;->instance:Lcom/wepie/snake/ui/RankManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wepie/snake/ui/RankManager;

    invoke-direct {v0}, Lcom/wepie/snake/ui/RankManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/ui/RankManager;->instance:Lcom/wepie/snake/ui/RankManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/wepie/snake/ui/RankManager;->instance:Lcom/wepie/snake/ui/RankManager;

    return-object v0
.end method

.method private initLocal()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    const-string v3, "rank.a"

    invoke-static {v3}, Lcom/wepie/snake/module/util/FileCacheUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 57
    .local v1, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 58
    .local v0, "object":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/wepie/snake/ui/RankManager$2;

    invoke-direct {v3, p0}, Lcom/wepie/snake/ui/RankManager$2;-><init>(Lcom/wepie/snake/ui/RankManager;)V

    invoke-static {v0, v3}, Lcom/wepie/snake/module/net/handler/RankInfoHandler;->parseRankInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v1    # "parser":Lcom/google/gson/JsonParser;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getLocalRank()Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wepie/snake/ui/RankManager;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    return-object v0
.end method

.method public getServerRank(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;

    .prologue
    .line 32
    new-instance v0, Lcom/wepie/snake/module/net/handler/RankInfoHandler;

    new-instance v1, Lcom/wepie/snake/ui/RankManager$1;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/ui/RankManager$1;-><init>(Lcom/wepie/snake/ui/RankManager;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V

    invoke-direct {v0, v1}, Lcom/wepie/snake/module/net/handler/RankInfoHandler;-><init>(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/HttpUtil;->getList(Lcom/wepie/snake/module/net/handler/RankInfoHandler;)V

    .line 45
    return-void
.end method

.method public getTodayRankInfo(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/wepie/snake/module/net/HttpUtil;->getTodayRankInfo(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V

    .line 49
    return-void
.end method
