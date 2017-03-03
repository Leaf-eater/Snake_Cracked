.class public Lcom/wepie/snake/helper/did/DeviceIdUtil;
.super Ljava/lang/Object;
.source "DeviceIdUtil.java"


# static fields
.field private static invalidDidArray:[Ljava/lang/String;

.field private static qwmu_pipes:[Ljava/lang/String;

.field private static sID:Ljava/lang/String;

.field private static vobox_pipes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->sID:Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "123456789012345"

    aput-object v1, v0, v3

    const-string v1, "000000000000000"

    aput-object v1, v0, v4

    const-string v1, "812345678912345"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "012345678912345"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->invalidDidArray:[Ljava/lang/String;

    .line 127
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->qwmu_pipes:[Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/bus/pci/drivers/vboxguest"

    aput-object v1, v0, v3

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->vobox_pipes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDidClass()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 159
    const-string v3, "java.class.path"

    const-string v4, "."

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "classPath":Ljava/lang/String;
    const-string v3, "XposedBridge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    :goto_0
    return v2

    .line 163
    :cond_0
    :try_start_0
    const-string v3, "de.robv.android.xposed.XposedBridge"

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkIsEmulator([Ljava/lang/String;)Z
    .locals 4
    .param p0, "known_pipes"    # [Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 147
    aget-object v1, p0, v0

    .line 148
    .local v1, "pipes":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "qemu_socket":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 155
    .end local v1    # "pipes":Ljava/lang/String;
    .end local v2    # "qemu_socket":Ljava/io/File;
    :goto_1
    return v3

    .line 146
    .restart local v1    # "pipes":Ljava/lang/String;
    .restart local v2    # "qemu_socket":Ljava/io/File;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "pipes":Ljava/lang/String;
    .end local v2    # "qemu_socket":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->isInvalidImei(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imei_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 52
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 57
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getGenerateId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.system_wid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/wepie/snake/helper/did/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->writeInstallationFile(Ljava/io/File;)V

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getRandomUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    sget-object v3, Lcom/wepie/snake/helper/did/DeviceIdUtil;->sID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 22
    sget-object v3, Lcom/wepie/snake/helper/did/DeviceIdUtil;->sID:Ljava/lang/String;

    .line 42
    .local v0, "context":Landroid/content/Context;
    .local v1, "pref":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 25
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "pref":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    .line 26
    .restart local v0    # "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .restart local v2    # "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 29
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getGenerateId()Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_1
    const-string v1, ""

    .line 33
    .restart local v1    # "pref":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->isAndroidEmulator()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    const-string v1, "qemu_"

    .line 41
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/wepie/snake/helper/did/DeviceIdUtil;->sID:Ljava/lang/String;

    .line 42
    sget-object v3, Lcom/wepie/snake/helper/did/DeviceIdUtil;->sID:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->isVboxEmulator()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    const-string v1, "vbox_"

    goto :goto_1

    .line 37
    :cond_4
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->checkDidClass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XposedBridge_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getRandomUuid()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 94
    .local v1, "r":Ljava/util/Random;
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 100
    .local v0, "len":I
    :goto_0
    const/16 v3, 0x12

    if-ge v0, v3, :cond_0

    .line 101
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isAndroidEmulator()Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->qwmu_pipes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->checkIsEmulator([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInvalidImei(Ljava/lang/String;)Z
    .locals 7
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 71
    sget-object v4, Lcom/wepie/snake/helper/did/DeviceIdUtil;->invalidDidArray:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 72
    .local v0, "invalidDid":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "invalidDid":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 74
    goto :goto_0
.end method

.method private static isVboxEmulator()Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdUtil;->vobox_pipes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->checkIsEmulator([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 110
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 111
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 112
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mkdir failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getRandomUuid()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 125
    return-void
.end method
