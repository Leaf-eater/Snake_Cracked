.class Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;
.super Ljava/lang/Object;
.source "CountingRequestBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/http/CountingRequestBody$CountingSink;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/CountingRequestBody$CountingSink;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;->this$1:Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;->this$1:Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    iget-object v1, v1, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;
    invoke-static {v1}, Lcom/qiniu/android/http/CountingRequestBody;->access$100(Lcom/qiniu/android/http/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;->this$1:Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    # getter for: Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->bytesWritten:I
    invoke-static {v2}, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->access$200(Lcom/qiniu/android/http/CountingRequestBody$CountingSink;)I

    move-result v2

    iget-object v3, p0, Lcom/qiniu/android/http/CountingRequestBody$CountingSink$1;->this$1:Lcom/qiniu/android/http/CountingRequestBody$CountingSink;

    iget-object v3, v3, Lcom/qiniu/android/http/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/CountingRequestBody;

    invoke-virtual {v3}, Lcom/qiniu/android/http/CountingRequestBody;->contentLength()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v1, v2, v3}, Lcom/qiniu/android/http/ProgressHandler;->onProgress(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
