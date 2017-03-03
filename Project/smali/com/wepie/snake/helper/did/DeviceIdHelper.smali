.class public Lcom/wepie/snake/helper/did/DeviceIdHelper;
.super Ljava/lang/Object;
.source "DeviceIdHelper.java"


# static fields
.field private static local_did:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdHelper;->initDid()V

    .line 16
    :cond_0
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->DeviceIdHelper getDid end did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    return-object v0
.end method

.method private static initDid()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/wepie/snake/helper/did/AlbumUtil;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/wepie/snake/helper/did/PrefUtil;->getInstance()Lcom/wepie/snake/helper/did/PrefUtil;

    move-result-object v0

    const-string v1, "snakeddd"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/did/PrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wepie/snake/helper/did/DeviceIdUtil;->getGenerateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-static {v0}, Lcom/wepie/snake/helper/did/AlbumUtil;->insertThumbnails(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/wepie/snake/helper/did/PrefUtil;->getInstance()Lcom/wepie/snake/helper/did/PrefUtil;

    move-result-object v0

    const-string v1, "snakeddd"

    sget-object v2, Lcom/wepie/snake/helper/did/DeviceIdHelper;->local_did:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/did/PrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
