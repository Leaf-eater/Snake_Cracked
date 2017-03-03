.class Lcom/qiniu/android/http/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/Client;

.field final synthetic val$complete:Lcom/qiniu/android/http/CompletionHandler;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/Client;JLcom/qiniu/android/http/CompletionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiniu/android/http/Client;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/qiniu/android/http/Client$5;->this$0:Lcom/qiniu/android/http/Client;

    iput-wide p2, p0, Lcom/qiniu/android/http/Client$5;->val$start:J

    iput-object p4, p0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 21
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/qiniu/android/http/Client$5;->val$start:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v18, v6, v8

    .line 166
    .local v18, "duration":J
    const/4 v4, -0x1

    .line 167
    .local v4, "statusCode":I
    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 168
    .local v17, "msg":Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v3, :cond_1

    .line 169
    const/4 v4, -0x2

    .line 180
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v20

    .line 181
    .local v20, "u":Lokhttp3/HttpUrl;
    new-instance v2, Lcom/qiniu/android/http/ResponseInfo;

    const/4 v3, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v20 .. v20}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual/range {v20 .. v20}, Lokhttp3/HttpUrl;->port()I

    move-result v11

    move-wide/from16 v0, v18

    long-to-double v12, v0

    const-wide/16 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/qiniu/android/http/ResponseInfo;-><init>(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 183
    .local v2, "info":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    .line 184
    return-void

    .line 170
    .end local v2    # "info":Lcom/qiniu/android/http/ResponseInfo;
    .end local v20    # "u":Lokhttp3/HttpUrl;
    :cond_1
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_2

    .line 171
    const/16 v4, -0x3eb

    goto :goto_0

    .line 172
    :cond_2
    if-eqz v17, :cond_3

    const-string v3, "Broken pipe"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 173
    const/16 v4, -0x3ed

    goto :goto_0

    .line 174
    :cond_3
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    .line 175
    const/16 v4, -0x3e9

    goto :goto_0

    .line 176
    :cond_4
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/net/ConnectException;

    if-eqz v3, :cond_0

    .line 177
    const/16 v4, -0x3ec

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/qiniu/android/http/Client$5;->val$start:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 189
    .local v4, "duration":J
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/Client$IpTag;

    .line 190
    .local v0, "tag":Lcom/qiniu/android/http/Client$IpTag;
    iget-object v1, p0, Lcom/qiniu/android/http/Client$5;->this$0:Lcom/qiniu/android/http/Client;

    iget-object v3, v0, Lcom/qiniu/android/http/Client$IpTag;->ip:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/Client$5;->val$complete:Lcom/qiniu/android/http/CompletionHandler;

    move-object v2, p2

    # invokes: Lcom/qiniu/android/http/Client;->onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    invoke-static/range {v1 .. v6}, Lcom/qiniu/android/http/Client;->access$100(Lcom/qiniu/android/http/Client;Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V

    .line 191
    return-void
.end method
