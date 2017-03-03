.class Lcom/wepie/snake/helper/update/UpdateUtil$2;
.super Ljava/lang/Object;
.source "UpdateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/update/UpdateUtil;->doUpdate(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V
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
    .line 73
    iput-object p1, p0, Lcom/wepie/snake/helper/update/UpdateUtil$2;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wepie/snake/helper/update/UpdateUtil$2;->this$0:Lcom/wepie/snake/helper/update/UpdateUtil;

    # getter for: Lcom/wepie/snake/helper/update/UpdateUtil;->mUpdateInfo:Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;
    invoke-static {v0}, Lcom/wepie/snake/helper/update/UpdateUtil;->access$000(Lcom/wepie/snake/helper/update/UpdateUtil;)Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/helper/update/UpdateDialogActivity;->go(Lcom/wepie/snake/helper/update/UpdateUtil$UpdateInfo;)V

    .line 77
    return-void
.end method
