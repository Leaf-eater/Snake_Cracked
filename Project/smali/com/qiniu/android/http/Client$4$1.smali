.class Lcom/qiniu/android/http/Client$4$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client$4;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/http/Client$4;

.field final synthetic val$info:Lcom/qiniu/android/http/ResponseInfo;

.field final synthetic val$response:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client$4;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qiniu/android/http/Client$4;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/qiniu/android/http/Client$4$1;->this$1:Lcom/qiniu/android/http/Client$4;

    iput-object p2, p0, Lcom/qiniu/android/http/Client$4$1;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    iput-object p3, p0, Lcom/qiniu/android/http/Client$4$1;->val$response:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/qiniu/android/http/Client$4$1;->this$1:Lcom/qiniu/android/http/Client$4;

    iget-object v0, v0, Lcom/qiniu/android/http/Client$4;->val$completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/http/Client$4$1;->val$info:Lcom/qiniu/android/http/ResponseInfo;

    iget-object v2, p0, Lcom/qiniu/android/http/Client$4$1;->val$response:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 153
    return-void
.end method
