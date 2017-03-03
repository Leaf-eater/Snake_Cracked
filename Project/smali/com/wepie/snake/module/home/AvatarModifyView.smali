.class public Lcom/wepie/snake/module/home/AvatarModifyView;
.super Landroid/widget/FrameLayout;
.source "AvatarModifyView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/ICloseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    }
.end annotation


# instance fields
.field private addImagebt:Landroid/widget/ImageView;

.field private closeBt:Landroid/widget/ImageView;

.field final dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

.field listener:Landroid/view/View$OnClickListener;

.field private mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

.field private mContext:Landroid/content/Context;

.field private recyclerSystem:Landroid/support/v7/widget/RecyclerView;

.field private recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

.field private selectMaskImageView:Landroid/widget/ImageView;

.field private userImageLay:Landroid/widget/RelativeLayout;

.field private userImageMask:Landroid/widget/ImageView;

.field private userImageView:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    .line 190
    new-instance v0, Lcom/wepie/snake/module/home/AvatarModifyView$5;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$5;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->listener:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/AvatarModifyView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->refreshLocalAvatar()V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wepie/snake/module/home/AvatarModifyView;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/wepie/snake/module/home/AvatarModifyView;->updateHeadImageUrl(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wepie/snake/module/home/AvatarModifyView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/home/AvatarModifyView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/AvatarModifyView;->doClickHeadSkin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->closeBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/helper/dialog/CloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->addImagebt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wepie/snake/module/home/AvatarModifyView;)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doClickHeadSkin(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->updateHeadImageUrl(Ljava/lang/String;ZZ)V

    .line 188
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040046

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->closeBt:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0d0128

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->addImagebt:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0d0125

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageLay:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f0d0126

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 70
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->closeBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->addImagebt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->refreshLocalAvatar()V

    .line 77
    invoke-direct {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->initRecyclerSystem()V

    .line 78
    return-void
.end method

.method private initRecyclerSystem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystem:Landroid/support/v7/widget/RecyclerView;

    .line 147
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystem:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 148
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystem:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    iput-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystem:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/wepie/snake/module/home/AvatarModifyView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$2;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 159
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    new-instance v1, Lcom/wepie/snake/module/home/AvatarModifyView$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$3;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->setOnRecyclerViewItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;)V

    .line 169
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/home/AvatarModifyView$4;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/AvatarModifyView$4;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getServerSkin(Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V

    .line 184
    return-void
.end method

.method private refreshLocalAvatar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-static {}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/UserPrefUtil;

    move-result-object v2

    const-string v3, "local_avatar_url"

    invoke-virtual {v2, v3}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "localUrl":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "avatar":Ljava/lang/String;
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->refreshLocalAvatar localUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " avatar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSys="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 84
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->isSystemAvatar(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->isSystemAvatar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 89
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 90
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    invoke-static {}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/UserPrefUtil;

    move-result-object v2

    const-string v3, "local_avatar_url"

    invoke-virtual {v2, v3, v0}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->isSystemAvatar(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;

    .line 107
    :goto_1
    return-void

    .line 92
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 95
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 96
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageLay:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageMask:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateHeadImageUrl(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isLocalImage"    # Z
    .param p3, "showLoading"    # Z

    .prologue
    .line 117
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    :cond_0
    new-instance v0, Lcom/wepie/snake/module/home/AvatarModifyView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/wepie/snake/module/home/AvatarModifyView$1;-><init>(Lcom/wepie/snake/module/home/AvatarModifyView;ZLjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/api/UserApi;->updateAvatar(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onAvatarUploaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->userImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 112
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 113
    invoke-direct {p0, p1, v2, v2}, Lcom/wepie/snake/module/home/AvatarModifyView;->updateHeadImageUrl(Ljava/lang/String;ZZ)V

    .line 114
    return-void
.end method

.method public registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wepie/snake/helper/dialog/CloseListener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    .line 222
    return-void
.end method
