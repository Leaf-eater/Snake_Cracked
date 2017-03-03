.class public abstract Lcom/chad/library/adapter/base/BaseQuickAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;,
        Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHAIN:I = 0x1

.field public static final EMPTY_VIEW:I = 0x555

.field public static final FOOTER_VIEW:I = 0x333

.field public static final HEADER_VIEW:I = 0x111

.field public static final LOADING_VIEW:I = 0x222

.field public static final SCALEIN:I = 0x2

.field public static final SLIDEIN_BOTTOM:I = 0x3

.field public static final SLIDEIN_LEFT:I = 0x4

.field public static final SLIDEIN_RIGHT:I = 0x5

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mChildClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

.field private mChildLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

.field private mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mCopyFooterLayout:Landroid/widget/LinearLayout;

.field private mCopyHeaderLayout:Landroid/widget/LinearLayout;

.field private mCustomAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEmptyEnable:Z

.field private mEmptyView:Landroid/view/View;

.field private mFirstOnlyEnable:Z

.field private mFootAndEmptyEnable:Z

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mHeadAndEmptyEnable:Z

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutResId:I

.field private mLoadingMoreEnable:Z

.field private mLoadingView:Landroid/view/View;

.field private mNextLoadEnable:Z

.field private mOpenAnimationEnable:Z

.field private mRequestLoadMoreListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

.field private mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

.field private onRecyclerViewItemClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;

.field private onRecyclerViewItemLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;

.field private pageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 4
    .param p1, "layoutResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 41
    iput-boolean v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingMoreEnable:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    .line 43
    iput-boolean v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 47
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    const/16 v0, 0x12c

    iput v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDuration:I

    .line 49
    iput v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 55
    new-instance v0, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 58
    iput-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    .line 60
    iput v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    .line 292
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLayoutResId:I

    .line 296
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 304
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContentView:Landroid/view/View;

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;

    return-object v0
.end method

.method private addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 910
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    if-eqz v2, :cond_3

    .line 911
    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iget v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    if-le v2, v3, :cond_3

    .line 912
    :cond_0
    const/4 v1, 0x0

    .line 913
    .local v1, "animation":Lcom/chad/library/adapter/base/animation/BaseAnimation;
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCustomAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    if-eqz v2, :cond_1

    .line 914
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCustomAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 918
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/chad/library/adapter/base/animation/BaseAnimation;->getAnimators(Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 919
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->startAnim(Landroid/animation/Animator;I)V

    .line 918
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    iput v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 924
    .end local v1    # "animation":Lcom/chad/library/adapter/base/animation/BaseAnimation;
    :cond_3
    return-void
.end method

.method private addLoadMore(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 874
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingMoreEnable:Z

    if-nez v0, :cond_0

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingMoreEnable:Z

    .line 876
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    invoke-interface {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;->onLoadMoreRequested()V

    .line 878
    :cond_0
    return-void
.end method

.method private getLoadingView(Landroid/view/ViewGroup;)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 561
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 562
    sget v0, Lcom/chad/library/R$layout;->def_loading:I

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initItemClickListener(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 2
    .param p1, "baseViewHolder"    # Lcom/chad/library/adapter/base/BaseViewHolder;

    .prologue
    .line 886
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$2;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/BaseQuickAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter$3;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 902
    :cond_1
    return-void
.end method

.method private isLoadMore()Z
    .locals 2

    .prologue
    .line 943
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemInserted(I)V

    .line 327
    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 353
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 714
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;I)V

    .line 715
    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 4
    .param p1, "footer"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, -0x1

    .line 728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 729
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 731
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 732
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 733
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    .line 739
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    move p2, v0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 741
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 742
    return-void

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyFooterLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 679
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;I)V

    .line 680
    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 4
    .param p1, "header"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, -0x1

    .line 693
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 695
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 696
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 697
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    .line 703
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    move p2, v0

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 705
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 706
    return-void

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCopyHeaderLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected abstract convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layoutResId"    # I

    .prologue
    .line 653
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 656
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method protected getDefItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 530
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 833
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFooterLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 670
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFooterLayoutCount()I
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFooterViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getHeaderLayoutCount()I
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v2, 0x1

    .line 436
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isLoadMore()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 437
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v4

    add-int v0, v3, v4

    .line 438
    .local v0, "count":I
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 442
    if-nez v0, :cond_6

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-nez v3, :cond_6

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getmEmptyViewCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 451
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v3

    if-ne v3, v2, :cond_2

    if-eq v0, v2, :cond_3

    :cond_2
    if-nez v0, :cond_4

    .line 452
    :cond_3
    iput-boolean v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyEnable:Z

    .line 453
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getmEmptyViewCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 457
    :cond_4
    return v0

    .line 436
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_6
    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v3, :cond_1

    .line 448
    :cond_7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getmEmptyViewCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1044
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "layoutResId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 954
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x555

    const/16 v1, 0x333

    .line 474
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 475
    const/16 v0, 0x111

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyEnable:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_a

    if-gt p1, v2, :cond_a

    .line 484
    iget-boolean v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v4, :cond_5

    :cond_2
    if-ne p1, v3, :cond_5

    .line 488
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    move v0, v1

    .line 489
    goto :goto_0

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getDefItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 496
    :cond_5
    if-nez p1, :cond_6

    .line 500
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 507
    :cond_6
    if-ne p1, v2, :cond_8

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_8

    move v0, v1

    .line 508
    goto :goto_0

    .line 513
    :cond_8
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-nez v0, :cond_4

    :cond_9
    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    move v0, v1

    .line 514
    goto :goto_0

    .line 516
    :cond_a
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v4

    iget-boolean v5, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    if-eqz v5, :cond_c

    :goto_1
    if-ne v4, v2, :cond_b

    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyEnable:Z

    if-nez v2, :cond_0

    .line 518
    :cond_b
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_e

    .line 519
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    if-eqz v0, :cond_d

    .line 520
    const/16 v0, 0x222

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 516
    goto :goto_1

    :cond_d
    move v0, v1

    .line 522
    goto/16 :goto_0

    .line 523
    :cond_e
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v0, v2

    if-le p1, v0, :cond_4

    move v0, v1

    .line 524
    goto/16 :goto_0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    return v0
.end method

.method public getmEmptyViewCount()I
    .locals 1

    .prologue
    .line 426
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFirstOnly(Z)V
    .locals 0
    .param p1, "firstOnly"    # Z

    .prologue
    .line 1025
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFirstOnlyEnable:Z

    .line 1026
    return-void
.end method

.method public isNextLoad(Z)V
    .locals 1
    .param p1, "isNextLoad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingMoreEnable:Z

    .line 845
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 847
    return-void
.end method

.method public notifyDataChangedAfterLoadMore(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isNextLoad"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 868
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataChangedAfterLoadMore(Z)V

    .line 870
    return-void
.end method

.method public notifyDataChangedAfterLoadMore(Z)V
    .locals 1
    .param p1, "isNextLoad"    # Z

    .prologue
    .line 854
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingMoreEnable:Z

    .line 856
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 858
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 602
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 603
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 604
    .local v1, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 605
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 606
    .local v0, "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/chad/library/adapter/base/BaseQuickAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter$1;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 614
    .end local v0    # "gridManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
    return-void
.end method

.method protected onBindDefViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "holder"    # Lcom/chad/library/adapter/base/BaseViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "positions"    # I

    .prologue
    .line 625
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 627
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_0

    move-object v1, p1

    .line 641
    check-cast v1, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V

    move-object v1, p1

    .line 642
    check-cast v1, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindDefViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V

    .line 646
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object v1, p1

    .line 629
    check-cast v1, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addLoadMore(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x111 -> :sswitch_0
        0x222 -> :sswitch_2
        0x333 -> :sswitch_0
        0x555 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 649
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLayoutResId:I

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 535
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x0

    .line 536
    .local v0, "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 537
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 538
    sparse-switch p2, :sswitch_data_0

    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    .line 553
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->initItemClickListener(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 555
    :goto_0
    return-object v0

    .line 540
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadingView(Landroid/view/ViewGroup;)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    .line 541
    goto :goto_0

    .line 543
    :sswitch_1
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    .end local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 544
    .restart local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    goto :goto_0

    .line 546
    :sswitch_2
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    .end local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 547
    .restart local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    goto :goto_0

    .line 549
    :sswitch_3
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    .end local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 550
    .restart local v0    # "baseViewHolder":Lcom/chad/library/adapter/base/BaseViewHolder;
    goto :goto_0

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x111 -> :sswitch_1
        0x222 -> :sswitch_0
        0x333 -> :sswitch_3
        0x555 -> :sswitch_2
    .end sparse-switch
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 576
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 577
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 578
    .local v0, "type":I
    const/16 v1, 0x555

    if-eq v0, v1, :cond_0

    const/16 v1, 0x111

    if-eq v0, v1, :cond_0

    const/16 v1, 0x333

    if-eq v0, v1, :cond_0

    const/16 v1, 0x222

    if-ne v0, v1, :cond_1

    .line 579
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public openLoadAnimation()V
    .locals 1

    .prologue
    .line 1016
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 1017
    return-void
.end method

.method public openLoadAnimation(I)V
    .locals 1
    .param p1, "animationType"    # I

    .prologue
    .line 979
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCustomAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 981
    packed-switch p1, :pswitch_data_0

    .line 1000
    :goto_0
    return-void

    .line 983
    :pswitch_0
    new-instance v0, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 986
    :pswitch_1
    new-instance v0, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/ScaleInAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 989
    :pswitch_2
    new-instance v0, Lcom/chad/library/adapter/base/animation/SlideInBottomAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/SlideInBottomAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 992
    :pswitch_3
    new-instance v0, Lcom/chad/library/adapter/base/animation/SlideInLeftAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/SlideInLeftAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 995
    :pswitch_4
    new-instance v0, Lcom/chad/library/adapter/base/animation/SlideInRightAnimation;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/animation/SlideInRightAnimation;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mSelectAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openLoadAnimation(Lcom/chad/library/adapter/base/animation/BaseAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .prologue
    .line 1008
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mOpenAnimationEnable:Z

    .line 1009
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mCustomAnimation:Lcom/chad/library/adapter/base/animation/BaseAnimation;

    .line 1010
    return-void
.end method

.method public openLoadMore(IZ)V
    .locals 0
    .param p1, "pageSize"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 137
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    .line 138
    iput-boolean p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 140
    return-void
.end method

.method public openLoadMore(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 149
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 151
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 313
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyItemRemoved(I)V

    .line 316
    return-void
.end method

.method public removeAllFooterView()V
    .locals 1

    .prologue
    .line 790
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public removeAllHeaderView()V
    .locals 1

    .prologue
    .line 780
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 767
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 751
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 754
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDuration:I

    .line 128
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, v0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(ZZLandroid/view/View;)V

    .line 801
    return-void
.end method

.method public setEmptyView(ZLandroid/view/View;)V
    .locals 1
    .param p1, "isHeadAndEmpty"    # Z
    .param p2, "emptyView"    # Landroid/view/View;

    .prologue
    .line 808
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(ZZLandroid/view/View;)V

    .line 809
    return-void
.end method

.method public setEmptyView(ZZLandroid/view/View;)V
    .locals 1
    .param p1, "isHeadAndEmpty"    # Z
    .param p2, "isFootAndEmpty"    # Z
    .param p3, "emptyView"    # Landroid/view/View;

    .prologue
    .line 819
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mHeadAndEmptyEnable:Z

    .line 820
    iput-boolean p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mFootAndEmptyEnable:Z

    .line 821
    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyView:Landroid/view/View;

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mEmptyEnable:Z

    .line 823
    return-void
.end method

.method protected setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 594
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 596
    .local v0, "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 598
    .end local v0    # "params":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0
    .param p1, "loadingView"    # Landroid/view/View;

    .prologue
    .line 361
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLoadingView:Landroid/view/View;

    .line 362
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    .line 337
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mNextLoadEnable:Z

    .line 341
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLastPosition:I

    .line 342
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->notifyDataSetChanged()V

    .line 343
    return-void
.end method

.method public setOnLoadMoreListener(ILcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;)V
    .locals 0
    .param p1, "pageSize"    # I
    .param p2, "requestLoadMoreListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;)V

    .line 115
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;)V
    .locals 0
    .param p1, "requestLoadMoreListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    .prologue
    .line 118
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mRequestLoadMoreListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;

    .line 119
    return-void
.end method

.method public setOnRecyclerViewItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;)V
    .locals 0
    .param p1, "childClickListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

    .prologue
    .line 236
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildClickListener;

    .line 237
    return-void
.end method

.method public setOnRecyclerViewItemChildLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;)V
    .locals 0
    .param p1, "childLongClickListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

    .prologue
    .line 261
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mChildLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemChildLongClickListener;

    .line 262
    return-void
.end method

.method public setOnRecyclerViewItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;)V
    .locals 0
    .param p1, "onRecyclerViewItemClickListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;

    .prologue
    .line 179
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemClickListener;

    .line 180
    return-void
.end method

.method public setOnRecyclerViewItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;)V
    .locals 0
    .param p1, "onRecyclerViewItemLongClickListener"    # Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;

    .prologue
    .line 205
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onRecyclerViewItemLongClickListener:Lcom/chad/library/adapter/base/BaseQuickAdapter$OnRecyclerViewItemLongClickListener;

    .line 206
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 160
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iput p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->pageSize:I

    .line 161
    return-void
.end method

.method protected startAnim(Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "index"    # I

    .prologue
    .line 933
    .local p0, "this":Lcom/chad/library/adapter/base/BaseQuickAdapter;, "Lcom/chad/library/adapter/base/BaseQuickAdapter<TT;>;"
    iget v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 934
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    return-void
.end method
