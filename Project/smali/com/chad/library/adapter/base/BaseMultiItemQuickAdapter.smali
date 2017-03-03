.class public abstract Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseMultiItemQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation


# instance fields
.field private layouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected addItemType(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "layoutResId"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts:Landroid/util/SparseArray;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->layouts:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method protected abstract convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "helper"    # Lcom/chad/library/adapter/base/BaseViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    check-cast p2, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    .end local p2    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/MultiItemEntity;)V

    .line 56
    return-void
.end method

.method protected getDefItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->getItemType()I

    move-result v0

    return v0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;, "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<TT;>;"
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->getLayoutId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    return-object v0
.end method
