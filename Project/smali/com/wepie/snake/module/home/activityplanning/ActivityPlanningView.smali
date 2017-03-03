.class public Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;
.super Landroid/widget/FrameLayout;
.source "ActivityPlanningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wepie/snake/helper/dialog/ICloseView;
.implements Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;


# instance fields
.field private actionBt:Landroid/widget/TextView;

.field private actionType:I

.field private activityId:I

.field private closeListener:Lcom/wepie/snake/helper/dialog/CloseListener;

.field private content:Landroid/widget/ImageView;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private placeHolderDrawable:Landroid/graphics/drawable/Drawable;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->init(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bean"    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->init(Z)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->onSuccess(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V

    .line 61
    return-void
.end method

.method private actionBtClicked()V
    .locals 4

    .prologue
    .line 126
    iget v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionType:I

    packed-switch v1, :pswitch_data_0

    .line 148
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->close()V

    .line 152
    :goto_0
    return-void

    .line 128
    :pswitch_0
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    .line 129
    .local v0, "progressDialogUtil":Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 130
    iget v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->activityId:I

    new-instance v2, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;

    invoke-direct {v2, p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView$1;-><init>(Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V

    invoke-static {v1, v2}, Lcom/wepie/snake/module/net/HttpUtil;->getActivityCoin(ILcom/wepie/snake/module/net/handler/ActivityCoinHandler$Callback;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private init(Z)V
    .locals 3
    .param p1, "needRequestNetwork"    # Z

    .prologue
    const v2, 0x7f0d008d

    .line 64
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040027

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->initDrawable()V

    .line 70
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->title:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->content:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0, v2}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBt:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->content:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->placeHolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/wepie/snake/module/net/HttpUtil;->getActivityPlanning(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;)V

    .line 77
    :cond_0
    return-void
.end method

.method private initDrawable()V
    .locals 9

    .prologue
    const v8, 0x7f0c0047

    const v7, 0x43d08000    # 417.0f

    const/high16 v6, 0x43460000    # 198.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 80
    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u56fe\u7247"

    .line 88
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 89
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 86
    invoke-interface {v0, v1, v2, v3}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->placeHolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {}, Lcom/amulyakhare/textdrawable/TextDrawable;->builder()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u5931\u8d25"

    .line 100
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 101
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/wepie/snake/module/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 98
    invoke-interface {v0, v1, v2, v3}, Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;->buildRoundRect(Ljava/lang/String;II)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->closeListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->close()V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBtClicked()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0d008d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->content:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    return-void
.end method

.method public onSuccess(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;)V
    .locals 2
    .param p1, "bean"    # Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    iget v0, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    iput v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionType:I

    .line 157
    iget v0, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->activityId:I

    iput v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->activityId:I

    .line 159
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->btnText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBt:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->btnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->content:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    iget v0, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->type:I

    packed-switch v0, :pswitch_data_0

    .line 181
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBt:Landroid/widget/TextView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    :goto_1
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p1, Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;->imageUrl:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->placeHolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->content:Landroid/widget/ImageView;

    .line 169
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->actionBt:Landroid/widget/TextView;

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wepie/snake/helper/dialog/CloseListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;->closeListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    .line 196
    return-void
.end method
