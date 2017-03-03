.class public Lcom/wepie/snake/helper/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static instance:Lcom/wepie/snake/helper/config/ConfigManager;


# instance fields
.field private mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/wepie/snake/helper/config/ConfigInfo;

    invoke-direct {v0}, Lcom/wepie/snake/helper/config/ConfigInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    .line 20
    invoke-direct {p0}, Lcom/wepie/snake/helper/config/ConfigManager;->initLocal()V

    .line 21
    return-void
.end method

.method static synthetic access$002(Lcom/wepie/snake/helper/config/ConfigManager;Lcom/wepie/snake/helper/config/ConfigInfo;)Lcom/wepie/snake/helper/config/ConfigInfo;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/config/ConfigManager;
    .param p1, "x1"    # Lcom/wepie/snake/helper/config/ConfigInfo;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/wepie/snake/helper/config/ConfigManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/wepie/snake/helper/config/ConfigManager;->instance:Lcom/wepie/snake/helper/config/ConfigManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/wepie/snake/helper/config/ConfigManager;

    invoke-direct {v0}, Lcom/wepie/snake/helper/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/helper/config/ConfigManager;->instance:Lcom/wepie/snake/helper/config/ConfigManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/wepie/snake/helper/config/ConfigManager;->instance:Lcom/wepie/snake/helper/config/ConfigManager;

    return-object v0
.end method

.method private initLocal()V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    const-string v4, "config.a"

    invoke-static {v4}, Lcom/wepie/snake/module/util/FileCacheUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 50
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 51
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 52
    .local v1, "object":Lcom/google/gson/JsonObject;
    new-instance v4, Lcom/wepie/snake/helper/config/ConfigManager$2;

    invoke-direct {v4, p0}, Lcom/wepie/snake/helper/config/ConfigManager$2;-><init>(Lcom/wepie/snake/helper/config/ConfigManager;)V

    invoke-static {v1, v4}, Lcom/wepie/snake/helper/config/ConfigHandler;->parseConfigInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "parser":Lcom/google/gson/JsonParser;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAllSkins()Ljava/util/ArrayList;
    .locals 1
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
    .line 84
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->skinInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_text:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_title:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public isSkinExist(I)Z
    .locals 4
    .param p1, "skin_id"    # I

    .prologue
    .line 88
    iget-object v2, p0, Lcom/wepie/snake/helper/config/ConfigManager;->mConfigInfo:Lcom/wepie/snake/helper/config/ConfigInfo;

    iget-object v1, v2, Lcom/wepie/snake/helper/config/ConfigInfo;->skinInfos:Ljava/util/ArrayList;

    .line 89
    .local v1, "skinInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 90
    .local v0, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    iget v3, v0, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    if-ne v3, p1, :cond_0

    const/4 v2, 0x1

    .line 92
    .end local v0    # "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public refreshConfig()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/wepie/snake/helper/config/ConfigManager$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/helper/config/ConfigManager$1;-><init>(Lcom/wepie/snake/helper/config/ConfigManager;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/HttpUtil;->getConfigAndroid(Lcom/wepie/snake/helper/config/ConfigHandler$ConfigCallback;)V

    .line 43
    return-void
.end method
