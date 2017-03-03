.class public Lcom/wepie/snake/helper/upload/QiniuUpload;
.super Ljava/lang/Object;
.source "QiniuUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;
    }
.end annotation


# static fields
.field private static final BUCKET:Ljava/lang/String; = "wespy"

.field private static qiniuUpload:Lcom/wepie/snake/helper/upload/QiniuUpload;


# instance fields
.field private TAG:Ljava/lang/String;

.field private uploadManager:Lcom/qiniu/android/storage/UploadManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/wepie/snake/helper/upload/QiniuUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v0}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/upload/QiniuUpload;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/wepie/snake/helper/upload/QiniuUpload;->uploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/helper/upload/QiniuUpload;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/upload/QiniuUpload;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/wepie/snake/helper/upload/QiniuUpload;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wepie/snake/helper/upload/QiniuUpload;->qiniuUpload:Lcom/wepie/snake/helper/upload/QiniuUpload;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wepie/snake/helper/upload/QiniuUpload;

    invoke-direct {v0}, Lcom/wepie/snake/helper/upload/QiniuUpload;-><init>()V

    sput-object v0, Lcom/wepie/snake/helper/upload/QiniuUpload;->qiniuUpload:Lcom/wepie/snake/helper/upload/QiniuUpload;

    .line 30
    :cond_0
    sget-object v0, Lcom/wepie/snake/helper/upload/QiniuUpload;->qiniuUpload:Lcom/wepie/snake/helper/upload/QiniuUpload;

    return-object v0
.end method

.method private uploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    .locals 7
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v3, 0x0

    new-instance v4, Lcom/wepie/snake/helper/upload/QiniuUpload$2;

    invoke-direct {v4, p0}, Lcom/wepie/snake/helper/upload/QiniuUpload$2;-><init>(Lcom/wepie/snake/helper/upload/QiniuUpload;)V

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 57
    .local v0, "uploadOptions":Lcom/qiniu/android/storage/UploadOptions;
    iget-object v1, p0, Lcom/wepie/snake/helper/upload/QiniuUpload;->uploadManager:Lcom/qiniu/android/storage/UploadManager;

    new-instance v5, Lcom/wepie/snake/helper/upload/QiniuUpload$3;

    invoke-direct {v5, p0, p4, p5}, Lcom/wepie/snake/helper/upload/QiniuUpload$3;-><init>(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 72
    return-void
.end method


# virtual methods
.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    .prologue
    .line 35
    const-string v0, "wespy"

    new-instance v1, Lcom/wepie/snake/helper/upload/QiniuUpload$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/wepie/snake/helper/upload/QiniuUpload$1;-><init>(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V

    invoke-static {p1, p2, v0, v1}, Lcom/wepie/snake/module/net/HttpUtil;->getQiniuToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;)V

    .line 46
    return-void
.end method
