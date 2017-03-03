.class Lcom/wepie/snake/helper/update/UpdateUtil$3;
.super Lcom/wepie/snake/module/net/handler/BaseHandler;
.source "UpdateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/update/UpdateUtil;->getUpdateInfo(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

.field final synthetic val$callback:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/update/UpdateUtil;Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateUtil$3;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    iput-object p2, p0, Lcom/wepie/snake/helper/update/UpdateUtil$3;->val$callback:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;

    invoke-direct {p0}, Lcom/wepie/snake/module/net/handler/BaseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil$3;->val$callback:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;->onFail(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onOk(Lcom/google/gson/JsonObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 144
    const-string v4, "code"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 145
    .local v0, "code":I
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 146
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "999"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----->updateUtil getUpdateInfo result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_0

    .line 148
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 149
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    .line 150
    .local v3, "updateInfo":Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateUtil$3;->val$callback:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;

    invoke-interface {v4, v3}, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;->onSuccess(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V

    .line 154
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "updateInfo":Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/wepie/snake/helper/update/UpdateUtil$3;->val$callback:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;

    const-string v5, "\u8bf7\u6c42\u9519\u8bef"

    invoke-interface {v4, v5}, Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
