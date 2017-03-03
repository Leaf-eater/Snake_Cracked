.class public Lcom/wepie/snake/base/HomeContainerView;
.super Landroid/widget/LinearLayout;
.source "HomeContainerView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/wepie/snake/base/HomeContainerView;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/wepie/snake/base/HomeContainerView;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private startAlphaAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 34
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addChildWithAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-virtual {p0}, Lcom/wepie/snake/base/HomeContainerView;->removeAllViews()V

    .line 28
    invoke-virtual {p0, p1, v0, v0}, Lcom/wepie/snake/base/HomeContainerView;->addView(Landroid/view/View;II)V

    .line 29
    invoke-direct {p0, p1}, Lcom/wepie/snake/base/HomeContainerView;->startAlphaAnim(Landroid/view/View;)V

    .line 30
    return-void
.end method
