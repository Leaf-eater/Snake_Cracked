.class public Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/helper/update/UpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInfo"
.end annotation


# instance fields
.field public download_url:Ljava/lang/String;

.field public file_size:Ljava/lang/String;

.field public force:Z

.field public need_update:Z

.field public qiniu_file_hash:Ljava/lang/String;

.field public release_notes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;->force:Z

    return v0
.end method
