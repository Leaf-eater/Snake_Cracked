.class Lcom/wepie/snake/helper/upload/QiniuUpload$2;
.super Ljava/lang/Object;
.source "QiniuUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/upload/QiniuUpload;->uploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/upload/QiniuUpload;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/upload/QiniuUpload;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$2;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(Ljava/lang/String;D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "percent"    # D

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$2;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    # getter for: Lcom/wepie/snake/helper/upload/QiniuUpload;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/wepie/snake/helper/upload/QiniuUpload;->access$100(Lcom/wepie/snake/helper/upload/QiniuUpload;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a \u4e03\u725b\u4e0a\u4f20progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
