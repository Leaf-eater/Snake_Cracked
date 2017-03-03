.class public abstract Lcom/wepie/snake/helper/softInput/KeyboardListenerView;
.super Landroid/widget/RelativeLayout;
.source "KeyboardListenerView.java"


# instance fields
.field private detectEnabled:Z

.field private firstShowKeyboard:Z

.field private layoutListener:Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;

.field private mKeyBoardHeight:I

.field private mKeyBoardShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z

    .line 16
    iput-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z

    .line 22
    invoke-direct {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z

    .line 16
    iput-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z

    .line 27
    invoke-direct {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->init()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardShow:Z

    return p1
.end method

.method static synthetic access$202(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z

    return v0
.end method

.method static synthetic access$302(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/helper/softInput/KeyboardListenerView;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z

    return p1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;

    invoke-direct {v0, p0, p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView$1;-><init>(Lcom/wepie/snake/helper/softInput/KeyboardListenerView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->layoutListener:Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;

    .line 57
    return-void
.end method


# virtual methods
.method public firstShowKeyboard()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->firstShowKeyboard:Z

    return v0
.end method

.method public getKeyBoardHeight()I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardHeight:I

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyBoardHeight must be called after keyboard show"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardHeight:I

    return v0
.end method

.method public isKeyBoardShow()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardShow:Z

    return v0
.end method

.method public abstract keyBoardHide()V
.end method

.method public abstract keyBoardShow(Z)V
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 88
    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->layoutListener:Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->layoutListener:Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->layoutListener:Lcom/wepie/snake/helper/softInput/WPGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public setDetectEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->detectEnabled:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/helper/softInput/KeyboardListenerView;->mKeyBoardShow:Z

    .line 64
    :cond_0
    return-void
.end method
