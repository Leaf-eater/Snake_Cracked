.class public Lcom/wepie/snake/module/home/skin/UserSkinManager;
.super Lcom/wepie/snake/base/BaseManager;
.source "UserSkinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;
    }
.end annotation


# static fields
.field private static instance:Lcom/wepie/snake/module/home/skin/UserSkinManager;


# instance fields
.field private mSkinIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wepie/snake/base/BaseManager;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->initLocalData()V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/UserSkinManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->instance:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/wepie/snake/module/home/skin/UserSkinManager;

    invoke-direct {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->instance:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->instance:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    return-object v0
.end method


# virtual methods
.method public buySkin(Lcom/wepie/snake/helper/config/SkinConfig;Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V
    .locals 2
    .param p1, "skinConfig"    # Lcom/wepie/snake/helper/config/SkinConfig;
    .param p2, "callback"    # Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    .prologue
    .line 55
    iget v0, p1, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    new-instance v1, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;-><init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;Lcom/wepie/snake/helper/config/SkinConfig;Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/HttpUtil;->buySkin(ILcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V

    .line 68
    return-void
.end method

.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "skin.a"

    return-object v0
.end method

.method public getServerSkin(Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;

    .prologue
    .line 37
    new-instance v0, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/home/skin/UserSkinManager$1;-><init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/HttpUtil;->getSkinInfo(Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V

    .line 52
    return-void
.end method

.method public getUserSkinInfos()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/helper/config/SkinConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "userSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/helper/config/ConfigManager;->getAllSkins()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    .local v0, "allSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    iget-object v4, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    .local v2, "skin_id":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 77
    .local v1, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    iget v6, v1, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    if-ne v6, v2, :cond_1

    .line 78
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v1    # "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    .end local v2    # "skin_id":I
    :cond_2
    return-object v3
.end method

.method public initLocalData()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getLocalJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/home/skin/UserSkinManager$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/skin/UserSkinManager$3;-><init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/handler/SkinHandler;->parseSkinInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/SkinHandler$SkinCallback;)V

    .line 115
    return-void
.end method

.method public isSystemAvatar(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/helper/config/ConfigManager;->getAllSkins()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "allSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 89
    .local v1, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    iget-object v3, v1, Lcom/wepie/snake/helper/config/SkinConfig;->headimgurl:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v2, 0x1

    .line 93
    .end local v1    # "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSkinIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "skinIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    return-void
.end method
