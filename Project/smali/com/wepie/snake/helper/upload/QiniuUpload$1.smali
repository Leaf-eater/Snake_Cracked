.class Lcom/wepie/snake/helper/upload/QiniuUpload$1;
.super Ljava/lang/Object;
.source "QiniuUpload.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/UploadTokenHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/upload/QiniuUpload;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

.field final synthetic val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/upload/QiniuUpload;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    iput-object p2, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;->onFail(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    iget-object v1, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->val$filePath:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$1;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    move-object v3, p1

    move-object v4, p2

    # invokes: Lcom/wepie/snake/helper/upload/QiniuUpload;->uploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/upload/QiniuUpload;->access$000(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V

    .line 39
    return-void
.end method
