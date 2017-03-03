.class public abstract Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseSectionQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/chad/library/adapter/base/entity/SectionEntity;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation


# static fields
.field protected static final SECTION_HEADER_VIEW:I = 0x444


# instance fields
.field protected mSectionHeadResId:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "sectionHeadResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;, "Lcom/chad/library/adapter/base/BaseSectionQuickAdapter<TT;>;"
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 28
    iput p2, p0, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->mSectionHeadResId:I

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1, "holder"    # Lcom/chad/library/adapter/base/BaseViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;, "Lcom/chad/library/adapter/base/BaseSectionQuickAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    check-cast p2, Lcom/chad/library/adapter/base/entity/SectionEntity;

    .end local p2    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V

    .line 59
    :goto_0
    return-void

    .line 52
    .restart local p2    # "item":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->setFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 53
    check-cast p2, Lcom/chad/library/adapter/base/entity/SectionEntity;

    .end local p2    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->convertHead(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x444
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract convertHead(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/chad/library/adapter/base/entity/SectionEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected getDefItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;, "Lcom/chad/library/adapter/base/BaseSectionQuickAdapter<TT;>;"
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/SectionEntity;

    iget-boolean v0, v0, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x444

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;, "Lcom/chad/library/adapter/base/BaseSectionQuickAdapter<TT;>;"
    const/16 v0, 0x444

    if-ne p2, v0, :cond_0

    .line 39
    new-instance v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget v1, p0, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->mSectionHeadResId:I

    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseSectionQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v0

    goto :goto_0
.end method
