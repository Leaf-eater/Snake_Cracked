.class public Lcom/wepie/snake/ui/DialogView;
.super Landroid/widget/LinearLayout;
.source "DialogView.java"


# instance fields
.field private addView:Landroid/widget/RelativeLayout;

.field private endX:I

.field private endY:I

.field private hideIv:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private showView:Landroid/view/View;

.field private viewH:I

.field private viewW:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewW:I

    .line 62
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewH:I

    .line 63
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewX:I

    .line 64
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewY:I

    .line 65
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->endX:I

    .line 66
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->endY:I

    .line 39
    iput-object p1, p0, Lcom/wepie/snake/ui/DialogView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/ui/DialogView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewW:I

    .line 62
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewH:I

    .line 63
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewX:I

    .line 64
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->viewY:I

    .line 65
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->endX:I

    .line 66
    iput v0, p0, Lcom/wepie/snake/ui/DialogView;->endY:I

    .line 32
    iput-object p1, p0, Lcom/wepie/snake/ui/DialogView;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/wepie/snake/ui/DialogView;->showView:Landroid/view/View;

    .line 34
    invoke-direct {p0}, Lcom/wepie/snake/ui/DialogView;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/wepie/snake/ui/DialogView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/wepie/snake/ui/DialogView;->viewW:I

    return p1
.end method

.method static synthetic access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wepie/snake/ui/DialogView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/wepie/snake/ui/DialogView;->viewH:I

    return p1
.end method

.method static synthetic access$302(Lcom/wepie/snake/ui/DialogView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/wepie/snake/ui/DialogView;->endX:I

    return p1
.end method

.method static synthetic access$402(Lcom/wepie/snake/ui/DialogView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/wepie/snake/ui/DialogView;->endY:I

    return p1
.end method

.method static synthetic access$500(Lcom/wepie/snake/ui/DialogView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/DialogView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wepie/snake/ui/DialogView;->initAnim()V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040021

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    .line 46
    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/DialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/DialogView;->hideIv:Landroid/widget/ImageView;

    .line 47
    invoke-direct {p0}, Lcom/wepie/snake/ui/DialogView;->initView()V

    .line 49
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView;->hideIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/ui/DialogView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/DialogView$1;-><init>(Lcom/wepie/snake/ui/DialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method private initAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/wepie/snake/ui/DialogView;->viewH:I

    int-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 91
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    new-instance v1, Lcom/wepie/snake/ui/DialogView$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/DialogView$3;-><init>(Lcom/wepie/snake/ui/DialogView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget-object v1, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 70
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->showView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->showView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 72
    .local v1, "viewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 73
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "viewParent":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->showView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/wepie/snake/ui/DialogView;->showView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v2, p0, Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/wepie/snake/ui/DialogView$2;

    invoke-direct {v3, p0}, Lcom/wepie/snake/ui/DialogView$2;-><init>(Lcom/wepie/snake/ui/DialogView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method


# virtual methods
.method public showBack()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView;->hideIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    return-void
.end method
