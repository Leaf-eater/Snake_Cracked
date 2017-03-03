.class Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;
.super Ljava/lang/Object;
.source "ProgressDialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoadingDelay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;->this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    iput-object p2, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;->this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    # getter for: Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->needShowLoading:Z
    invoke-static {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->access$000(Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;->this$0:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    iget-object v1, p0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 20
    :cond_0
    return-void
.end method
