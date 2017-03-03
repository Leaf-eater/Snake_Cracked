.class public Lcom/wepie/snake/module/plugin/PluginManager;
.super Lcom/wepie/snake/base/BaseManager;
.source "PluginManager.java"


# static fields
.field private static final DEFAULT_MD5:Ljava/lang/String; = "94913BF166BC59BE96C432033782E618"

.field private static final DEFAULT_URL:Ljava/lang/String; = "http://wespyandroid.afunapp.com/wpshare1.jar"

.field private static final FILE_DIR:Ljava/lang/String;

.field private static final PATH_SHARE:Ljava/lang/String;

.field private static final TIPS:Ljava/lang/String; = "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

.field private static instance:Lcom/wepie/snake/module/plugin/PluginManager;


# instance fields
.field private mDexLoaderShare:Ldalvik/system/DexClassLoader;

.field private mPlugin_md5:Ljava/lang/String;

.field private mPlugin_url:Ljava/lang/String;

.field private shareBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/base/SkApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->FILE_DIR:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wepie/snake/module/plugin/PluginManager;->FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/plugin/share/wpshare.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->PATH_SHARE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/wepie/snake/base/BaseManager;-><init>()V

    .line 47
    const-string v0, "http://wespyandroid.afunapp.com/wpshare1.jar"

    iput-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_url:Ljava/lang/String;

    .line 48
    const-string v0, "94913BF166BC59BE96C432033782E618"

    iput-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_md5:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->initLocalData()V

    .line 54
    sget-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->PATH_SHARE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->checkPlugin(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/plugin/PluginManager;->initDexLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_md5:Ljava/lang/String;

    return-object p1
.end method

.method private checkPlugin(Ljava/lang/String;)V
    .locals 6
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v3, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->PluginManager checkPluginShare mDexLoaderShare="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->PluginManager checkPluginShare pluginPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/plugin/PluginManager;->loadPluginFromServer(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/wepie/snake/module/util/SecurityUtil;->md5Hash(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/wepie/snake/module/util/SecurityUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "md5":Ljava/lang/String;
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->PluginManager checkPluginShare md5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_md5:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/plugin/PluginManager;->loadPluginFromServer(Ljava/io/File;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v3, "999"

    const-string v4, "----->PluginManager user cache plugin file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/plugin/PluginManager;->initDexLoader(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->instance:Lcom/wepie/snake/module/plugin/PluginManager;

    .line 229
    return-void
.end method

.method private clearDir(Ljava/io/File;)V
    .locals 4
    .param p1, "parentFile"    # Ljava/io/File;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 180
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/wepie/snake/module/plugin/PluginManager;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->instance:Lcom/wepie/snake/module/plugin/PluginManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/wepie/snake/module/plugin/PluginManager;

    invoke-direct {v0}, Lcom/wepie/snake/module/plugin/PluginManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->instance:Lcom/wepie/snake/module/plugin/PluginManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->instance:Lcom/wepie/snake/module/plugin/PluginManager;

    return-object v0
.end method

.method private initDexLoader(Ljava/lang/String;)V
    .locals 7
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------>PluginManager initDexLoader pluginPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "jarFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "jarFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDexLoaderValid()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/wepie/snake/module/plugin/PluginManager;->PATH_SHARE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->checkPlugin(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->PluginManager start load, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mPlugin_url:Ljava/lang/String;

    const/16 v1, 0xf

    new-instance v2, Lcom/wepie/snake/module/plugin/PluginManager$2;

    invoke-direct {v2, p0, p1}, Lcom/wepie/snake/module/plugin/PluginManager$2;-><init>(Lcom/wepie/snake/module/plugin/PluginManager;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/wepie/snake/module/util/DownloadUtil;->downloadFileAsyncWithRetry(Ljava/lang/String;Ljava/lang/String;ILcom/wepie/snake/module/util/DownloadUtil$DownloadCallback;)V

    .line 203
    return-void
.end method

.method private loadPluginFromServer(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->clearDir(Ljava/io/File;)V

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->loadFile(Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "plugin_info.a"

    return-object v0
.end method

.method public handleSinaResp(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sina_id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "pluginCallback"    # Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareUtil;->handleSinaResp(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Ljava/lang/String;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V

    .line 153
    return-void
.end method

.method public handleWXResp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wechat_id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "pluginCallback"    # Lcom/wepie/snake/module/plugin/callback/PluginCallback;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/wepie/snake/module/plugin/share/wx/WXShareUtil;->handleWXResp(Landroid/content/Context;Ljava/lang/String;Ldalvik/system/DexClassLoader;Landroid/content/Intent;Lcom/wepie/snake/module/plugin/callback/PluginCallback;)V

    .line 130
    return-void
.end method

.method public initLocalData()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->getLocalJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/plugin/PluginManager$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/plugin/PluginManager$3;-><init>(Lcom/wepie/snake/module/plugin/PluginManager;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/handler/PluginHandler;->parsePluginInfo(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V

    .line 225
    return-void
.end method

.method public onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-static {p1, p2, p3, p4}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public share2QQ(Landroid/app/Activity;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->isDexLoaderValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, v0, p2}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil;->share2QQ(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V

    goto :goto_0
.end method

.method public share2Qzone(Landroid/app/Activity;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->isDexLoaderValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, v0, p2}, Lcom/wepie/snake/module/plugin/share/qq/QQShareUtil;->share2Qzone(Landroid/app/Activity;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V

    goto :goto_0
.end method

.method public share2Sina(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "sina_id"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->isDexLoaderValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->shareBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, p3, v0}, Lcom/wepie/snake/module/plugin/share/sina/SinaShareUtil0;->share2Sina(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public share2WX(Landroid/content/Context;Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareInfo"    # Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->isDexLoaderValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, v0, p2}, Lcom/wepie/snake/module/plugin/share/wx/WXShareUtil;->share2WX(Landroid/content/Context;Ldalvik/system/DexClassLoader;Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;)V

    goto :goto_0
.end method

.method public startSinaShareActivity(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "share_url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 156
    iput-object p2, p0, Lcom/wepie/snake/module/plugin/PluginManager;->shareBitmap:Landroid/graphics/Bitmap;

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "share_url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "start_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    sput-boolean v2, Lcom/wepie/snake/module/plugin/share/sina/SinaShareActivity;->start_share:Z

    .line 161
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public updatePluginInfo()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/wepie/snake/module/plugin/PluginManager$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/plugin/PluginManager$1;-><init>(Lcom/wepie/snake/module/plugin/PluginManager;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/PluginApi;->getPluginInfo(Lcom/wepie/snake/module/net/handler/PluginHandler$PluginInfoCallback;)V

    .line 76
    return-void
.end method

.method public wxLogin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/wepie/snake/module/plugin/PluginManager;->isDexLoaderValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/plugin/PluginManager;->mDexLoaderShare:Ldalvik/system/DexClassLoader;

    invoke-static {p1, v0}, Lcom/wepie/snake/module/plugin/share/wx/WXShareUtil;->doWXLogin(Landroid/content/Context;Ldalvik/system/DexClassLoader;)V

    goto :goto_0
.end method
