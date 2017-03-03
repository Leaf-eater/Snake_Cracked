.class public abstract Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;
.super Ljava/lang/Object;
.source "WPGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private keyboardHeight:I

.field private lastHeightDifference:I

.field private mContextView:Landroid/view/View;

.field private statusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contextView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    .line 14
    iput v0, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->statusBarHeight:I

    .line 15
    iput v0, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->keyboardHeight:I

    .line 18
    iput-object p1, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->mContextView:Landroid/view/View;

    .line 19
    return-void
.end method


# virtual methods
.method public getKeyBoardHeight()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->keyboardHeight:I

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->statusBarHeight:I

    return v0
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 35
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->mContextView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 37
    iget-object v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->mContextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 38
    .local v3, "rootHeight":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 40
    .local v1, "heightDifference":I
    int-to-float v4, v3

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 41
    .local v0, "criticalHeight":I
    if-ge v1, v0, :cond_1

    .line 42
    iput v1, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->statusBarHeight:I

    .line 43
    iget v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    if-lt v4, v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->onKeyBoardHide()V

    .line 47
    :cond_0
    iput v1, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    if-ge v4, v0, :cond_2

    .line 51
    iput v1, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    .line 53
    iget v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->statusBarHeight:I

    sub-int v4, v1, v4

    iput v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->keyboardHeight:I

    .line 54
    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->onKeyBoardShow()V

    .line 56
    :cond_2
    iput v1, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->lastHeightDifference:I

    .line 58
    iget v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->statusBarHeight:I

    sub-int v4, v1, v4

    iput v4, p0, Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;->keyboardHeight:I

    goto :goto_0
.end method

.method public abstract onKeyBoardHide()V
.end method

.method public abstract onKeyBoardShow()V
.end method
