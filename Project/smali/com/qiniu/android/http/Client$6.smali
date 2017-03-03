.class Lcom/qiniu/android/http/Client$6;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/qiniu/android/utils/StringMap$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;->asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$mb:Lokhttp3/MultipartBody$Builder;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lokhttp3/MultipartBody$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/qiniu/android/http/Client$6;->this$0:Lcom/qiniu/android/http/Client;

    iput-object p2, p0, Lcom/qiniu/android/http/Client$6;->val$mb:Lokhttp3/MultipartBody$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/qiniu/android/http/Client$6;->val$mb:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 254
    return-void
.end method
