.class public Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
.super Landroid/app/Dialog;
.source "BaseFullScreenDialog.java"


# static fields
.field private static final WIDTH_FACTOR:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getDialogWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDialogWidth(Landroid/content/Context;F)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factor"    # F

    .prologue
    .line 40
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 30
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 31
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getDialogWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    return-void
.end method

.method public init(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 46
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getDialogWidth(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    return-void
.end method

.method public initSizeWithView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 61
    .local v5, "widthSpec":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 62
    .local v2, "heightSpec":I
    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 65
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 66
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 68
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 69
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "heightSpec":I
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "width":I
    .end local v5    # "widthSpec":I
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initY()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 54
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    return-void
.end method
