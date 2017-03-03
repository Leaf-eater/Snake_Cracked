.class Lcom/qiniu/android/storage/ResumeUploader$4;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ResumeUploader;

.field final synthetic val$address:Ljava/net/URI;

.field final synthetic val$chunkSize:I

.field final synthetic val$offset:J

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;IJLjava/net/URI;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/qiniu/android/storage/ResumeUploader;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iput-wide p3, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iput-object p5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    iput p6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    const-wide/32 v8, 0x400000

    .line 258
    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->isChunkOK(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    invoke-static {p1, p2}, Lcom/qiniu/android/storage/ResumeUploader;->access$900(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 259
    iget v4, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v5, 0x2bd

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_0

    .line 260
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    div-long/2addr v6, v8

    mul-long/2addr v6, v8

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
    invoke-static {v4, v6, v7, v5, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V

    .line 292
    :goto_0
    return-void

    .line 264
    :cond_0
    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->isNotChunkToQiniu(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    invoke-static {p1, p2}, Lcom/qiniu/android/storage/ResumeUploader;->access$1000(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_2

    .line 265
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
    invoke-static {v4, v6, v7, v5, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 272
    :cond_3
    const/4 v0, 0x0

    .line 274
    .local v0, "context":Ljava/lang/String;
    if-nez p2, :cond_4

    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_4

    .line 275
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
    invoke-static {v4, v6, v7, v5, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V

    goto :goto_0

    .line 278
    :cond_4
    const-wide/16 v2, 0x0

    .line 280
    .local v2, "crc":J
    :try_start_0
    const-string v4, "ctx"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v4, "crc32"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 285
    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->crc32:J
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$1100(Lcom/qiniu/android/storage/ResumeUploader;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    :cond_5
    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v5

    iget v5, v5, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v4, v5, :cond_6

    .line 286
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;
    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
    invoke-static {v4, v6, v7, v5, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    # getter for: Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;
    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$1200(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    div-long/2addr v6, v8

    long-to-int v5, v6

    aput-object v0, v4, v5

    .line 290
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->record(J)V
    invoke-static {v4, v6, v7}, Lcom/qiniu/android/storage/ResumeUploader;->access$1300(Lcom/qiniu/android/storage/ResumeUploader;J)V

    .line 291
    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:J

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    # invokes: Lcom/qiniu/android/storage/ResumeUploader;->nextTask(JILjava/net/URI;)V
    invoke-static {v4, v6, v7, v5, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;JILjava/net/URI;)V

    goto/16 :goto_0
.end method
