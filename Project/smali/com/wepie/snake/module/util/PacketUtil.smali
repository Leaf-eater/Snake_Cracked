.class public Lcom/wepie/snake/module/util/PacketUtil;
.super Ljava/lang/Object;
.source "PacketUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/wepie/snake/module/util/PacketUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/util/PacketUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 48
    const-string v3, "official"

    .line 50
    .local v3, "resultData":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/base/SkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/base/SkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 54
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "UMENG_CHANNEL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v3

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/wepie/snake/base/SkApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .end local v0    # "androidId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 81
    .restart local v0    # "androidId":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 84
    .end local v0    # "androidId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DeviceIdUtil"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "cant get deviceid"

    goto :goto_0
.end method

.method public static getPacketName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/base/SkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 94
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "com.wepie.snake"

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 7

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/base/SkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 37
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/base/SkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 38
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "appName":Ljava/lang/String;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/wepie/snake/module/util/PacketUtil;->TAG:Ljava/lang/String;

    const-string v6, "getVersionName: "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/base/SkApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 24
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/base/SkApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 25
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "appName":Ljava/lang/String;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/wepie/snake/module/util/PacketUtil;->TAG:Ljava/lang/String;

    const-string v6, "getVersionName: "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v4, "error"

    goto :goto_0
.end method

.method public static isApkDebugable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/base/SkApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v2

    goto :goto_0
.end method
