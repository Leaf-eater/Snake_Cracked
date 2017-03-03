.class Lcom/wepie/snake/helper/upload/QiniuUpload$3;
.super Ljava/lang/Object;
.source "QiniuUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


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

.field final synthetic val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

.field final synthetic val$domain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/upload/QiniuUpload;Ljava/lang/String;Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/upload/QiniuUpload;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    iput-object p2, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p3, "resp"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    iget-object v3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    # getter for: Lcom/wepie/snake/helper/upload/QiniuUpload;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/wepie/snake/helper/upload/QiniuUpload;->access$100(Lcom/wepie/snake/helper/upload/QiniuUpload;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a \u4e03\u725b\u4e0a\u4f20complete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\r\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\r\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    const-string v3, "hash"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "hash":Ljava/lang/String;
    const-string v3, "key"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "rkey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$domain:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "redirect":Ljava/lang/String;
    iget-object v3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    invoke-interface {v3, v2, v1}, Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "redirect":Ljava/lang/String;
    .end local v2    # "rkey":Ljava/lang/String;
    :goto_1
    return-void

    .line 64
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v2    # "rkey":Ljava/lang/String;
    :cond_0
    const-string v3, "/"

    goto :goto_0

    .line 67
    .end local v0    # "hash":Ljava/lang/String;
    .end local v2    # "rkey":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->this$0:Lcom/wepie/snake/helper/upload/QiniuUpload;

    # getter for: Lcom/wepie/snake/helper/upload/QiniuUpload;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/wepie/snake/helper/upload/QiniuUpload;->access$100(Lcom/wepie/snake/helper/upload/QiniuUpload;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/wepie/snake/helper/upload/QiniuUpload$3;->val$callback:Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;

    iget-object v4, p2, Lcom/qiniu/android/http/ResponseInfo;->error:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/wepie/snake/helper/upload/QiniuUpload$Callback;->onFail(Ljava/lang/String;)V

    goto :goto_1
.end method
