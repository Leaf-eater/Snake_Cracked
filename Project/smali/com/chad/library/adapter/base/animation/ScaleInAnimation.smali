.class public Lcom/chad/library/adapter/base/animation/ScaleInAnimation;
.super Ljava/lang/Object;
.source "ScaleInAnimation.java"

# interfaces
.implements Lcom/chad/library/adapter/base/animation/BaseAnimation;


# static fields
.field private static final DEFAULT_SCALE_FROM:F = 0.5f


# instance fields
.field private final mFrom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;-><init>(F)V

    .line 18
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "from"    # F

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;->mFrom:F

    .line 22
    return-void
.end method


# virtual methods
.method public getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    const-string v2, "scaleX"

    new-array v3, v7, [F

    iget v4, p0, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;->mFrom:F

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 27
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string v2, "scaleY"

    new-array v3, v7, [F

    iget v4, p0, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;->mFrom:F

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 28
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    new-array v2, v7, [Landroid/animation/ObjectAnimator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    return-object v2
.end method
