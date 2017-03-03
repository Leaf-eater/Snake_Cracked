.class Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;
.super Ljava/lang/Object;
.source "ActivityPlanningView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBtClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

.field final synthetic val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->this$0:Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    iput-object p2, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 139
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->val$progressDialogUtil:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 133
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->this$0:Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->close()V

    .line 134
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;->this$0:Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "\u786e\u5b9a"

    move-object v2, v1

    move-object v3, p1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    .line 135
    return-void
.end method
