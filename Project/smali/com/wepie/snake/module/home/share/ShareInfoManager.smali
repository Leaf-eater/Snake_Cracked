.class public Lcom/wepie/snake/module/home/share/ShareInfoManager;
.super Lcom/wepie/snake/base/BaseManager;
.source "ShareInfoManager.java"


# static fields
.field private static instance:Lcom/wepie/snake/module/home/share/ShareInfoManager;


# instance fields
.field private mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wepie/snake/base/BaseManager;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->initLocalData()V

    .line 19
    return-void
.end method

.method static synthetic access$002(Lcom/wepie/snake/module/home/share/ShareInfoManager;Lcom/wepie/snake/module/net/entity/UserShareInfo;)Lcom/wepie/snake/module/net/entity/UserShareInfo;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/share/ShareInfoManager;
    .param p1, "x1"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/wepie/snake/module/home/share/ShareInfoManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->instance:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/wepie/snake/module/home/share/ShareInfoManager;

    invoke-direct {v0}, Lcom/wepie/snake/module/home/share/ShareInfoManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->instance:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->instance:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    return-object v0
.end method


# virtual methods
.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "share_info.a"

    return-object v0
.end method

.method public getServerShareInfo(Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;

    .prologue
    .line 33
    const-string v0, ""

    .line 34
    .local v0, "share_code":Ljava/lang/String;
    iget-object v1, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    iget-object v0, v1, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_code:Ljava/lang/String;

    .line 35
    :cond_0
    new-instance v1, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/module/home/share/ShareInfoManager$1;-><init>(Lcom/wepie/snake/module/home/share/ShareInfoManager;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/HttpUtil;->getShareInfo(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    .line 48
    return-void
.end method

.method public getUserShareInfo()Lcom/wepie/snake/module/net/entity/UserShareInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    return-object v0
.end method

.method public initLocalData()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->getLocalJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/home/share/ShareInfoManager$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/share/ShareInfoManager$2;-><init>(Lcom/wepie/snake/module/home/share/ShareInfoManager;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/handler/ShareInfoHandler;->parseShareInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    .line 68
    return-void
.end method
