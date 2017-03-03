.class public Lcom/wepie/snake/ui/RuleView;
.super Landroid/widget/LinearLayout;
.source "RuleView.java"

# interfaces
.implements Lcom/wepie/snake/module/home/IHomeDisplayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private imgs:[I

.field private mContext:Landroid/content/Context;

.field private params:Landroid/view/ViewGroup$LayoutParams;

.field private rulePagerAdapter:Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->imgs:[I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/wepie/snake/ui/RuleView;->init()V

    .line 37
    return-void

    .line 27
    :array_0
    .array-data 4
        0x7f02006e
        0x7f02006f
        0x7f020070
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->imgs:[I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/wepie/snake/ui/RuleView;->init()V

    .line 43
    return-void

    .line 27
    :array_0
    .array-data 4
        0x7f02006e
        0x7f02006f
        0x7f020070
    .end array-data
.end method

.method static synthetic access$100(Lcom/wepie/snake/ui/RuleView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/RuleView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/ui/RuleView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/RuleView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 46
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RuleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 48
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RuleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->backIv:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 50
    invoke-direct {p0}, Lcom/wepie/snake/ui/RuleView;->initImage()V

    .line 52
    new-instance v0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;-><init>(Lcom/wepie/snake/ui/RuleView;Lcom/wepie/snake/ui/RuleView$1;)V

    iput-object v0, p0, Lcom/wepie/snake/ui/RuleView;->rulePagerAdapter:Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;

    .line 53
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/wepie/snake/ui/RuleView;->rulePagerAdapter:Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/ui/RuleView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/RuleView$1;-><init>(Lcom/wepie/snake/ui/RuleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private initImage()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/ui/RuleView;->imgs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 81
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/wepie/snake/ui/RuleView;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v2, p0, Lcom/wepie/snake/ui/RuleView;->imgs:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v2, p0, Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/wepie/snake/ui/RuleView;->refresh()V

    .line 72
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 67
    return-void
.end method
