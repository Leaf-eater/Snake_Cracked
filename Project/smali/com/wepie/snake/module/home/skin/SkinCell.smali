.class public Lcom/wepie/snake/module/home/skin/SkinCell;
.super Landroid/widget/LinearLayout;
.source "SkinCell.java"


# instance fields
.field private iconImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private nameTx:Landroid/widget/TextView;

.field private priceTx:Landroid/widget/TextView;

.field private skinInUseImage:Landroid/widget/ImageView;

.field private skinOwnTx:Landroid/widget/TextView;

.field private skinPriceLay:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinCell;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinCell;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040043

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->nameTx:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->iconImage:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->priceTx:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0d0117

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinInUseImage:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinOwnTx:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinPriceLay:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method


# virtual methods
.method public update(Lcom/wepie/snake/helper/config/SkinConfig;Z)V
    .locals 5
    .param p1, "skinConfig"    # Lcom/wepie/snake/helper/config/SkinConfig;
    .param p2, "haveBuy"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 50
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->nameTx:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/wepie/snake/helper/config/SkinConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->priceTx:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/wepie/snake/helper/config/SkinConfig;->cost:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p1, Lcom/wepie/snake/helper/config/SkinConfig;->imgurl:Ljava/lang/String;

    iget-object v3, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->iconImage:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/wepie/snake/helper/imageloader/ImageLoaderUtil;->loadNormalImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinOwnTx:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinPriceLay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinInUseImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/wepie/snake/helper/config/SkinConfig;->isSkinInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    return-void

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinOwnTx:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v2, p0, Lcom/wepie/snake/module/home/skin/SkinCell;->skinPriceLay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 61
    goto :goto_1
.end method
