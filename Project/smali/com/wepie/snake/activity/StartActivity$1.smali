.class Lcom/wepie/snake/activity/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/StartActivity;->startShowAnim()V
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
    .line 71
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$1;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$1;->this$0:Lcom/wepie/snake/activity/StartActivity;

    # getter for: Lcom/wepie/snake/activity/StartActivity;->startImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/activity/StartActivity;->access$100(Lcom/wepie/snake/activity/StartActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/activity/StartActivity$1$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/activity/StartActivity$1$1;-><init>(Lcom/wepie/snake/activity/StartActivity$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method
