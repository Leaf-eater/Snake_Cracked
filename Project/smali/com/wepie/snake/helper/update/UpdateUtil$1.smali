.class Lcom/wepie/snake/helper/update/UpdateUtil$1;
.super Ljava/lang/Object;
.source "UpdateUtil.java"

# interfaces
.implements Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/update/UpdateUtil;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/update/UpdateUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/update/UpdateUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/update/UpdateUtil;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateUtil$1;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil$1;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    invoke-virtual {v0, p1}, Lcom/wepie/snake/helper/update/UpdateUtil;->doUpdate(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V

    .line 61
    return-void
.end method
