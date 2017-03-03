.class Lcom/wepie/snake/ui/DialogView$3;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/DialogView;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/DialogView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/DialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/DialogView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/wepie/snake/ui/DialogView$3;->this$0:Lcom/wepie/snake/ui/DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$3;->this$0:Lcom/wepie/snake/ui/DialogView;

    # getter for: Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/wepie/snake/ui/DialogView;->access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 98
    return-void
.end method
