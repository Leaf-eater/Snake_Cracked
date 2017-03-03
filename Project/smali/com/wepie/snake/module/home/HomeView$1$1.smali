.class Lcom/wepie/snake/module/home/HomeView$1$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/HomeView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wepie/snake/module/home/HomeView$1;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/HomeView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/module/home/HomeView$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wepie/snake/module/home/HomeView$1$1;->this$1:Lcom/wepie/snake/module/home/HomeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V
    .locals 4
    .param p1, "bean"    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-object v1, p0, Lcom/wepie/snake/module/home/HomeView$1$1;->this$1:Lcom/wepie/snake/module/home/HomeView$1;

    iget-object v1, v1, Lcom/wepie/snake/module/home/HomeView$1;->this$0:Lcom/wepie/snake/module/home/HomeView;

    # getter for: Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z
    invoke-static {v1}, Lcom/wepie/snake/module/home/HomeView;->access$000(Lcom/wepie/snake/module/home/HomeView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v1, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    if-eq v1, v3, :cond_2

    iget v1, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 78
    :cond_2
    new-instance v0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/HomeView$1$1;->this$1:Lcom/wepie/snake/module/home/HomeView$1;

    iget-object v1, v1, Lcom/wepie/snake/module/home/HomeView$1;->this$0:Lcom/wepie/snake/module/home/HomeView;

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;-><init>(Landroid/content/Context;Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V

    .line 79
    .local v0, "activityPlanningView":Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;
    iget-object v1, p0, Lcom/wepie/snake/module/home/HomeView$1$1;->this$1:Lcom/wepie/snake/module/home/HomeView$1;

    iget-object v1, v1, Lcom/wepie/snake/module/home/HomeView$1;->this$0:Lcom/wepie/snake/module/home/HomeView;

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0
.end method
