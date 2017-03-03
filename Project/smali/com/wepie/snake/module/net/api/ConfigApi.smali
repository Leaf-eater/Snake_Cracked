.class public Lcom/wepie/snake/module/net/api/ConfigApi;
.super Ljava/lang/Object;
.source "ConfigApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBanWords(ILcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V
    .locals 4
    .param p0, "ban_word_version"    # I
    .param p1, "callback"    # Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ban_word_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/wepie/snake/module/net/UrlConfig;->GET_BAN_WORDS:Ljava/lang/String;

    new-instance v2, Lcom/wepie/snake/module/net/handler/BanWordsHandler;

    invoke-direct {v2, p1}, Lcom/wepie/snake/module/net/handler/BanWordsHandler;-><init>(Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V

    invoke-static {v1, v0, v2}, Lcom/wepie/snake/module/net/SkHttpClient;->post(Ljava/lang/String;Ljava/util/HashMap;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 17
    return-void
.end method
