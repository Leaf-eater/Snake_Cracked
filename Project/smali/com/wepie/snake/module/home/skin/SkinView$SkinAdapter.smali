.class Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
.super Landroid/widget/BaseAdapter;
.source "SkinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/home/skin/SkinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkinAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/skin/SkinView;->mAllSkins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    new-instance p2, Lcom/wepie/snake/module/home/skin/SkinCell;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # getter for: Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/wepie/snake/module/home/skin/SkinView;->access$000(Lcom/wepie/snake/module/home/skin/SkinView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/wepie/snake/module/home/skin/SkinCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 130
    check-cast v1, Lcom/wepie/snake/module/home/skin/SkinCell;

    .line 131
    .local v1, "skinCell":Lcom/wepie/snake/module/home/skin/SkinCell;
    iget-object v3, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v3, v3, Lcom/wepie/snake/module/home/skin/SkinView;->mAllSkins:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 133
    .local v2, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    iget-object v3, p0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget v4, v2, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->isSkinHaveBuy(I)Z
    invoke-static {v3, v4}, Lcom/wepie/snake/module/home/skin/SkinView;->access$300(Lcom/wepie/snake/module/home/skin/SkinView;I)Z

    move-result v0

    .line 134
    .local v0, "haveBuy":Z
    invoke-virtual {v1, v2, v0}, Lcom/wepie/snake/module/home/skin/SkinCell;->update(Lcom/wepie/snake/helper/config/SkinConfig;Z)V

    .line 135
    new-instance v3, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter$1;-><init>(Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;Lcom/wepie/snake/helper/config/SkinConfig;)V

    invoke-virtual {v1, v3}, Lcom/wepie/snake/module/home/skin/SkinCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object p2
.end method
