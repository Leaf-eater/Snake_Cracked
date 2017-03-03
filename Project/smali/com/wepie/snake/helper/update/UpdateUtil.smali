.class public Lcom/wepie/snake/helper/update/UpdateUtil;
.super Ljava/lang/Object;
.source "UpdateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;,
        Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;,
        Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;
    }
.end annotation


# static fields
.field public static final UPDATE_URL:Ljava/lang/String; = "http://apk-upgrade.weapp.me/api/upgrade/snake"

.field public static instance:Lcom/wepie/snake/helper/update/UpdateUtil;

.field private static localFilePath:Ljava/lang/String;


# instance fields
.field private downloadId:J

.field private downloadReceiver:Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;

.field private isAutoDownload:Z

.field private mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->isAutoDownload:Z

    .line 36
    new-instance v0, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;

    invoke-direct {v0, p0}, Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;-><init>(Lcom/wepie/snake/helper/update/UpdateUtil;)V

    iput-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadReceiver:Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;

    .line 53
    invoke-direct {p0}, Lcom/wepie/snake/helper/update/UpdateUtil;->initLocalFilePath()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/update/UpdateUtil;)Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/helper/update/UpdateUtil;)J
    .locals 2
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/helper/update/UpdateUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->isAutoDownload:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/helper/update/UpdateUtil;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/update/UpdateUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/wepie/snake/helper/update/UpdateUtil;->installApk(Ljava/lang/String;)V

    return-void
.end method

.method private downloadApk(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "showNotification"    # Z

    .prologue
    .line 119
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Lcom/wepie/snake/base/SkApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 120
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 121
    .local v1, "request":Landroid/app/DownloadManager$Request;
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 122
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadId:J

    .line 125
    return-void
.end method

.method public static getInstance()Lcom/wepie/snake/helper/update/UpdateUtil;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wepie/snake/helper/update/UpdateUtil;->instance:Lcom/wepie/snake/helper/update/UpdateUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wepie/snake/helper/update/UpdateUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/update/UpdateUtil;-><init>()V

    sput-object v0, Lcom/wepie/snake/helper/update/UpdateUtil;->instance:Lcom/wepie/snake/helper/update/UpdateUtil;

    .line 40
    :cond_0
    sget-object v0, Lcom/wepie/snake/helper/update/UpdateUtil;->instance:Lcom/wepie/snake/helper/update/UpdateUtil;

    return-object v0
.end method

.method private getUpdateInfo(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;

    .prologue
    .line 141
    const-string v0, "http://apk-upgrade.weapp.me/api/upgrade/snake"

    const/4 v1, 0x0

    new-instance v2, Lcom/wepie/snake/helper/update/UpdateUtil$3;

    invoke-direct {v2, p0, p1}, Lcom/wepie/snake/helper/update/UpdateUtil$3;-><init>(Lcom/wepie/snake/helper/update/UpdateUtil;Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;)V

    invoke-static {v0, v1, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 161
    return-void
.end method

.method private initLocalFilePath()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wepie/snake/base/SkApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/snake.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/snake/snake.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private installApk(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wepie/snake/base/SkApplication;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/wepie/snake/helper/update/UpdateUtil$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/helper/update/UpdateUtil$1;-><init>(Lcom/wepie/snake/helper/update/UpdateUtil;)V

    invoke-direct {p0, v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->getUpdateInfo(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;)V

    .line 67
    return-void
.end method

.method public doUpdate(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    .prologue
    .line 70
    iget-boolean v0, p1, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->need_update:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wepie/snake/helper/update/UpdateUtil$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/update/UpdateUtil$2;-><init>(Lcom/wepie/snake/helper/update/UpdateUtil;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isLocalFileValid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "qiniu_file_hash"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/wepie/snake/helper/update/QiniuEtagUtil;->file(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "local_hash":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "local_hash":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClickSure()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->qiniu_file_hash:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->isLocalFileValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/wepie/snake/helper/update/UpdateUtil;->localFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->installApk(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-boolean v2, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->isAutoDownload:Z

    .line 105
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u4e2d"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    iget-object v0, v0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->download_url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadApk(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public registerReceiver(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadReceiver:Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method public unRegisterReceiver(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil;->downloadReceiver:Lcom/wepie/snake/helper/update/UpdateUtil$DownloadReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method
