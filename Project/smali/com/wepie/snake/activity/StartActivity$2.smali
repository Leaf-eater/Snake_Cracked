.class Lcom/wepie/snake/activity/StartActivity$2;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/StartActivity;->showHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$2;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$2;->this$0:Lcom/wepie/snake/activity/StartActivity;

    # invokes: Lcom/wepie/snake/activity/StartActivity;->showLoading()V
    invoke-static {v0}, Lcom/wepie/snake/activity/StartActivity;->access$200(Lcom/wepie/snake/activity/StartActivity;)V

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    return-void
.end method
