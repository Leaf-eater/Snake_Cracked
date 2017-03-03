.class Lcom/qiniu/android/http/Client$7;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;->onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$complete:Lcom/qiniu/android/http/CompletionHandler;

.field final synthetic val$info:Lcom/qiniu/android/http/ResponseInfo;

.field final synthetic val$json2:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/qiniu/android/http/Client$7;->this$0:Lcom/qiniu/android/http/Client;

    iput-object p2, p0, Lcom/qiniu/android/http/Client$7;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    iput-object p3, p0, Lcom/qiniu/android/http/Client$7;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    iput-object p4, p0, Lcom/qiniu/android/http/Client$7;->val$json2:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/qiniu/android/http/Client$7;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/http/Client$7;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v2, p0, Lcom/qiniu/android/http/Client$7;->val$json2:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 302
    return-void
.end method
