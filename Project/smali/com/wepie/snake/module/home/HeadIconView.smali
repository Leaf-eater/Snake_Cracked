.class public Lcom/wepie/snake/module/home/HeadIconView;
.super Landroid/widget/LinearLayout;
.source "HeadIconView.java"


# instance fields
.field private circleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mContext:Landroid/content/Context;

.field private maskImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/wepie/snake/module/home/HeadIconView;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/module/home/HeadIconView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/wepie/snake/module/home/HeadIconView;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/wepie/snake/module/home/HeadIconView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wepie/snake/module/home/HeadIconView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HeadIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/HeadIconView;->circleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 38
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HeadIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/HeadIconView;->maskImage:Landroid/widget/ImageView;

    .line 39
    return-void
.end method


# virtual methods
.method public setSmallMask()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wepie/snake/module/home/HeadIconView;->maskImage:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------>HeadIconView update url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/wepie/snake/module/home/HeadIconView;->circleImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p1, v0}, Lcom/wepie/snake/helper/imageloader/ImageLoaderUtil;->loadHeadImageWithDefault(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 44
    return-void
.end method
