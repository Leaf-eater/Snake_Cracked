.class public final Lcom/qiniu/android/http/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/Client$IpTag;
    }
.end annotation


# static fields
.field public static final ContentTypeHeader:Ljava/lang/String; = "Content-Type"

.field public static final DefaultMime:Ljava/lang/String; = "application/octet-stream"

.field public static final FormMime:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final JsonMime:Ljava/lang/String; = "application/json"


# instance fields
.field private final converter:Lcom/qiniu/android/http/UrlConverter;

.field private httpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    const/16 v2, 0xa

    const/16 v3, 0x1e

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/Client;-><init>(Lcom/qiniu/android/http/ProxyConfiguration;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/ProxyConfiguration;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 4
    .param p1, "proxy"    # Lcom/qiniu/android/http/ProxyConfiguration;
    .param p2, "connectTimeout"    # I
    .param p3, "responseTimeout"    # I
    .param p4, "converter"    # Lcom/qiniu/android/http/UrlConverter;
    .param p5, "dns"    # Lcom/qiniu/android/dns/DnsManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    .line 50
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 52
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 54
    iget-object v1, p1, Lcom/qiniu/android/http/ProxyConfiguration;->user:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/qiniu/android/http/ProxyConfiguration;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/qiniu/android/http/ProxyConfiguration;->authenticator()Lokhttp3/Authenticator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    :cond_0
    if-eqz p5, :cond_1

    .line 59
    new-instance v1, Lcom/qiniu/android/http/Client$1;

    invoke-direct {v1, p0, p5}, Lcom/qiniu/android/http/Client$1;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/dns/DnsManager;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 78
    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/qiniu/android/http/Client$2;

    invoke-direct {v2, p0}, Lcom/qiniu/android/http/Client$2;-><init>(Lcom/qiniu/android/http/Client;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    int-to-long v2, p3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 98
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 99
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/android/http/Client;->httpClient:Lokhttp3/OkHttpClient;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/Client;Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/android/http/Client;
    .param p1, "x1"    # Lokhttp3/Response;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/android/http/Client;->onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V

    return-void
.end method

.method private asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fields"    # Lcom/qiniu/android/utils/StringMap;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "file"    # Lokhttp3/RequestBody;
    .param p6, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p7, "cancellationHandler"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 244
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v4, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 247
    :cond_0
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 248
    .local v2, "mb":Lokhttp3/MultipartBody$Builder;
    const-string v4, "file"

    invoke-virtual {v2, v4, p4, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 250
    new-instance v4, Lcom/qiniu/android/http/Client$6;

    invoke-direct {v4, p0, v2}, Lcom/qiniu/android/http/Client$6;-><init>(Lcom/qiniu/android/http/Client;Lokhttp3/MultipartBody$Builder;)V

    invoke-virtual {p2, v4}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 256
    const-string v4, "multipart/form-data"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 257
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 258
    .local v0, "body":Lokhttp3/RequestBody;
    if-eqz p3, :cond_1

    .line 259
    new-instance v1, Lcom/qiniu/android/http/CountingRequestBody;

    invoke-direct {v1, v0, p3, p7}, Lcom/qiniu/android/http/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .end local v0    # "body":Lokhttp3/RequestBody;
    .local v1, "body":Lokhttp3/RequestBody;
    move-object v0, v1

    .line 261
    .end local v1    # "body":Lokhttp3/RequestBody;
    .restart local v0    # "body":Lokhttp3/RequestBody;
    :cond_1
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 262
    .local v3, "requestBuilder":Lokhttp3/Request$Builder;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p6}, Lcom/qiniu/android/http/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 263
    return-void
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .locals 2
    .param p0, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static ctype(Lokhttp3/Response;)Ljava/lang/String;
    .locals 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 120
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 121
    .local v0, "mediaType":Lokhttp3/MediaType;
    if-nez v0, :cond_0

    .line 122
    const-string v1, ""

    .line 124
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private onRet(Lokhttp3/Response;Ljava/lang/String;JLcom/qiniu/android/http/CompletionHandler;)V
    .locals 25
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "complete"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 267
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v6

    .line 268
    .local v6, "code":I
    const-string v8, "X-Reqid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "reqId":Ljava/lang/String;
    if-nez v7, :cond_1

    const/4 v7, 0x0

    .line 270
    :goto_0
    const/16 v19, 0x0

    .line 271
    .local v19, "body":[B
    const/16 v18, 0x0

    .line 273
    .local v18, "error":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->bytes()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 277
    :goto_1
    const/4 v5, 0x0

    .line 278
    .local v5, "json":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/http/Client;->ctype(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "application/json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v19, :cond_2

    .line 280
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/qiniu/android/http/Client;->buildJsonResp([B)Lorg/json/JSONObject;

    move-result-object v5

    .line 281
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 282
    new-instance v21, Ljava/lang/String;

    const-string v8, "utf-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 283
    .local v21, "err":Ljava/lang/String;
    const-string v8, "error"

    move-object/from16 v0, v21

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 294
    .end local v21    # "err":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v23

    .line 295
    .local v23, "u":Lokhttp3/HttpUrl;
    new-instance v4, Lcom/qiniu/android/http/ResponseInfo;

    const-string v8, "X-Log"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/http/Client;->via(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lokhttp3/HttpUrl;->port()I

    move-result v13

    move-wide/from16 v0, p3

    long-to-double v14, v0

    const-wide/16 v16, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v18}, Lcom/qiniu/android/http/ResponseInfo;-><init>(Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    .line 297
    .local v4, "info":Lcom/qiniu/android/http/ResponseInfo;
    move-object/from16 v22, v5

    .line 298
    .local v22, "json2":Lorg/json/JSONObject;
    new-instance v8, Lcom/qiniu/android/http/Client$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v22

    invoke-direct {v8, v0, v1, v4, v2}, Lcom/qiniu/android/http/Client$7;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    invoke-static {v8}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    .line 305
    return-void

    .line 269
    .end local v4    # "info":Lcom/qiniu/android/http/ResponseInfo;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v18    # "error":Ljava/lang/String;
    .end local v19    # "body":[B
    .end local v22    # "json2":Lorg/json/JSONObject;
    .end local v23    # "u":Lokhttp3/HttpUrl;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 274
    .restart local v18    # "error":Ljava/lang/String;
    .restart local v19    # "body":[B
    :catch_0
    move-exception v20

    .line 275
    .local v20, "e":Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 285
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v5    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v20

    .line 286
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_0

    .line 287
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 291
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v19, :cond_3

    const-string v18, "null body"

    :goto_3
    goto :goto_2

    :cond_3
    new-instance v18, Ljava/lang/String;

    .end local v18    # "error":Ljava/lang/String;
    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    goto :goto_3
.end method

.method private static via(Lokhttp3/Response;)Ljava/lang/String;
    .locals 4
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 105
    const-string v2, "X-Via"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "via":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 116
    .end local v0    # "via":Ljava/lang/String;
    .local v1, "via":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 109
    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_0
    const-string v2, "X-Px"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 110
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_1
    const-string v2, "Fw-Via"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v0

    .line 114
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "via":Ljava/lang/String;
    .restart local v0    # "via":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 116
    .end local v0    # "via":Ljava/lang/String;
    .restart local v1    # "via":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/qiniu/android/http/PostArgs;
    .param p3, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p4, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p5, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 229
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 234
    .local v5, "file":Lokhttp3/RequestBody;
    :goto_0
    iget-object v2, p2, Lcom/qiniu/android/http/PostArgs;->params:Lcom/qiniu/android/utils/StringMap;

    iget-object v4, p2, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/http/Client;->asyncMultipartPost(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 235
    return-void

    .line 232
    .end local v5    # "file":Lokhttp3/RequestBody;
    :cond_0
    iget-object v0, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->data:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v5

    .restart local v5    # "file":Lokhttp3/RequestBody;
    goto :goto_0
.end method

.method public asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p6, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p7, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p8, "c"    # Lcom/qiniu/android/http/CancellationHandler;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->converter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v4, p1}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_0
    if-eqz p2, :cond_1

    array-length v4, p2

    if-lez v4, :cond_1

    .line 210
    const-string v4, "application/octet-stream"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 211
    .local v3, "t":Lokhttp3/MediaType;
    invoke-static {v3, p2, p3, p4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v0

    .local v0, "rbody":Lokhttp3/RequestBody;
    move-object v1, v0

    .line 215
    .end local v0    # "rbody":Lokhttp3/RequestBody;
    .end local v3    # "t":Lokhttp3/MediaType;
    .local v1, "rbody":Lokhttp3/RequestBody;
    :goto_0
    if-eqz p6, :cond_2

    .line 216
    new-instance v0, Lcom/qiniu/android/http/CountingRequestBody;

    invoke-direct {v0, v1, p6, p8}, Lcom/qiniu/android/http/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 219
    .end local v1    # "rbody":Lokhttp3/RequestBody;
    .restart local v0    # "rbody":Lokhttp3/RequestBody;
    :goto_1
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 220
    .local v2, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p0, v2, p5, p7}, Lcom/qiniu/android/http/Client;->asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 221
    return-void

    .line 213
    .end local v0    # "rbody":Lokhttp3/RequestBody;
    .end local v2    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .restart local v0    # "rbody":Lokhttp3/RequestBody;
    move-object v1, v0

    .end local v0    # "rbody":Lokhttp3/RequestBody;
    .restart local v1    # "rbody":Lokhttp3/RequestBody;
    goto :goto_0

    :cond_2
    move-object v0, v1

    .end local v1    # "rbody":Lokhttp3/RequestBody;
    .restart local v0    # "rbody":Lokhttp3/RequestBody;
    goto :goto_1
.end method

.method public asyncPost(Ljava/lang/String;[BLcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # [B
    .param p3, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p4, "progressHandler"    # Lcom/qiniu/android/http/ProgressHandler;
    .param p5, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;
    .param p6, "c"    # Lcom/qiniu/android/storage/UpCancellationSignal;

    .prologue
    .line 198
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/Client;->asyncPost(Ljava/lang/String;[BIILcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    .line 199
    return-void
.end method

.method public asyncSend(Lokhttp3/Request$Builder;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/http/CompletionHandler;)V
    .locals 6
    .param p1, "requestBuilder"    # Lokhttp3/Request$Builder;
    .param p2, "headers"    # Lcom/qiniu/android/utils/StringMap;
    .param p3, "completionHandler"    # Lcom/qiniu/android/http/CompletionHandler;

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .line 138
    new-instance v4, Lcom/qiniu/android/http/Client$3;

    invoke-direct {v4, p0, p1}, Lcom/qiniu/android/http/Client$3;-><init>(Lcom/qiniu/android/http/Client;Lokhttp3/Request$Builder;)V

    invoke-virtual {p2, v4}, Lcom/qiniu/android/utils/StringMap;->forEach(Lcom/qiniu/android/utils/StringMap$Consumer;)V

    .line 146
    :cond_0
    new-instance v0, Lcom/qiniu/android/http/Client$4;

    invoke-direct {v0, p0, p3}, Lcom/qiniu/android/http/Client$4;-><init>(Lcom/qiniu/android/http/Client;Lcom/qiniu/android/http/CompletionHandler;)V

    .line 158
    .local v0, "complete":Lcom/qiniu/android/http/CompletionHandler;
    const-string v4, "User-Agent"

    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qiniu/android/http/UserAgent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    .local v2, "start":J
    new-instance v1, Lcom/qiniu/android/http/Client$IpTag;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/qiniu/android/http/Client$IpTag;-><init>(Lcom/qiniu/android/http/Client$1;)V

    .line 161
    .local v1, "tag":Lcom/qiniu/android/http/Client$IpTag;
    iget-object v4, p0, Lcom/qiniu/android/http/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/qiniu/android/http/Client$5;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/qiniu/android/http/Client$5;-><init>(Lcom/qiniu/android/http/Client;JLcom/qiniu/android/http/CompletionHandler;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 193
    return-void
.end method
